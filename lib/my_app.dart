// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inapp_notifications/flutter_inapp_notifications.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/app_args.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/move_to_background_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/sentry_utils.dart';
import 'package:karing/app/utils/system_scheme_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/home_screen.dart';
import 'package:karing/screens/launch_failed_screen.dart';
import 'package:karing/screens/scheme_handler.dart';
import 'package:karing/screens/theme_data_dark.dart';
import 'package:karing/screens/themes.dart';
import 'package:karing/screens/widgets/routes.dart';
import 'package:karing/tray.dart';
import 'package:karing/windows_bounds.dart';
import 'package:provider/provider.dart';
import 'package:vpn_service/vpn_service.dart';
import 'package:window_manager/window_manager.dart';

class MyApp extends StatefulWidget {
  final List<String> args;
  final StartFailedReason? startFailedReason;
  final String? startFailedReasonDesc;
  const MyApp({
    super.key,
    required this.args,
    required this.startFailedReason,
    required this.startFailedReasonDesc,
  });
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp>
    with WidgetsBindingObserver, WindowListener {
  bool _launchAtStartup = false;
  bool _windowVisibleForMac = false;
  Tray? _tray;
  final Themes _themes = Themes();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    if (PlatformUtils.isPC()) {
      windowManager.addListener(this);
      windowManager.setPreventClose(true);
      _tray = Tray();
      _tray!.init(
        openExitOnly: widget.startFailedReason != null,
        onOpen: () async {
          if (await windowManager.isMinimized()) {
            await windowManager.restore();
          } else {
            await windowManager.show();
            onWindowRestore();
          }
        },
        onExit: () async {
          await _quit();
        },
      );
    }
    AppLifecycleStateNofity.init();
    //LocaleSettings.getLocaleStream().listen((event) {});
    String launchStartupArg = widget.args.firstWhere(
      (element) => element == AppArgs.launchStartup,
      orElse: () => '',
    );
    _launchAtStartup = launchStartupArg.isNotEmpty;
    /*AnalyticsUtils.logEvent(
      analyticsEventType: analyticsEventTypeApp,
      name: 'launch',
      parameters: {"value": _launchAtStartup},
      forceSubmit: true,
    );*/

    AppLifecycleStateNofity.stateLaunch(_launchAtStartup);
    _init();
  }

  @override
  void dispose() {
    AppLifecycleStateNofity.uninit();
    WidgetsBinding.instance.removeObserver(this);
    if (PlatformUtils.isPC()) {
      windowManager.removeListener(this);
      _tray?.dispose();
      _tray = null;
    }

    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);

    switch (state) {
      case AppLifecycleState.resumed:
        AppLifecycleStateNofity.stateResumed("resumed");
        break;
      case AppLifecycleState.inactive:
        AppLifecycleStateNofity.stateInactive("inactive");
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.paused:
        AppLifecycleStateNofity.statePaused("paused");
        break;
      case AppLifecycleState.hidden:
        AppLifecycleStateNofity.stateInactive("hidden");
        break;
    }
  }

  @override
  Future<AppExitResponse> didRequestAppExit() async {
    await _quit();
    return AppExitResponse.cancel;
  }

  @override
  void didHaveMemoryPressure() {
    Log.w("memoryPressure");
  }

  @override
  Widget build(BuildContext context) {
    String schemeArg = widget.args.firstWhere((element) {
      return element.trim().startsWith(
            SystemSchemeUtils.getKaringSchemeWith(),
          ) ||
          element.trim().startsWith(SystemSchemeUtils.getClashSchemeWith()) ||
          element.trim().startsWith(SystemSchemeUtils.getSingboxSchemeWith());
    }, orElse: () => '');

    List<NavigatorObserver> observers = [];

    observers.add(AppRouteObserver.instance);
    if (!SettingManager.getConfig().disableAppImproveData) {
      observers.add(SentryUtils.getOvserver());
    }

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => _themes)],
      child: Consumer<Themes>(
        builder: (context, appTheme, _) {
          _themes.setTheme(SettingManager.getConfig().ui.theme, false);
          return Shortcuts(
            shortcuts: const {
              SingleActivator(LogicalKeyboardKey.select):
                  ActivateIntent(), // for android tv OK/Select button
            },
            /*shortcuts: {
                  ...WidgetsApp.defaultShortcuts,
                  const SingleActivator(LogicalKeyboardKey.select):
                      const ActivateIntent(),
                },*/
            child: MaterialApp(
              //showSemanticsDebugger: false,
              debugShowCheckedModeBanner: false,
              locale: TranslationProvider.of(context).flutterLocale,
              supportedLocales: AppLocaleUtils.supportedLocales,
              localizationsDelegates: const [
                ...GlobalMaterialLocalizations.delegates,
                GlobalCupertinoLocalizations.delegate,
              ],
              navigatorObservers: observers,
              // Deep links delivered by the engine arrive as route names; without
              // this fallback Flutter crashes in _onUnknownRoute. The placeholder
              // dispatches karing:// URLs to SchemeHandler and is then removed.
              onUnknownRoute: (settings) => PageRouteBuilder<void>(
                settings: settings,
                opaque: false,
                transitionDuration: Duration.zero,
                reverseTransitionDuration: Duration.zero,
                pageBuilder: (context, _, _) {
                  final name = settings.name ?? '';
                  final route = ModalRoute.of(context);
                  Log.w('Unknown route: $name\n');
                  WidgetsBinding.instance.addPostFrameCallback((_) async {
                    final navigator = Navigator.maybeOf(context);
                    if (name.startsWith(
                          SystemSchemeUtils.getKaringSchemeWith(),
                        ) &&
                        context.mounted) {
                      await SchemeHandler.handle(context, name);
                    }
                    if (navigator != null && route != null && route.isActive) {
                      navigator.removeRoute(route);
                    }
                  });
                  return const SizedBox.shrink();
                },
              ),
              home: PopScope(
                canPop: false,
                onPopInvokedWithResult: (didPop, result) {
                  if (Platform.isAndroid || Platform.isIOS) {
                    MoveToBackgroundUtils.moveToBackground();
                  }
                },
                child: widget.startFailedReason != null
                    ? LaunchFailedScreen(
                        startFailedReason: widget.startFailedReason!,
                        startFailedReasonDesc: widget.startFailedReasonDesc,
                      )
                    : HomeScreen(launchUrl: schemeArg.trim()),
              ),
              builder: InAppNotifications.init(
                builder: SettingManager.getConfig().ui.disableFontScaler
                    ? (context, widget) {
                        return MediaQuery(
                          data: MediaQuery.of(
                            context,
                          ).copyWith(textScaler: TextScaler.noScaling),
                          child: widget!,
                        );
                      }
                    : null,
              ),
              themeMode: appTheme.themeMode(),
              theme: appTheme.themeData(context),
              darkTheme: ThemeDataDark.theme(context),
            ),
          );
        },
      ),
    );
  }

  @override
  void onWindowClose() async {
    Log.d("onWindowClose");
    await WindowBounds.saveWindowBounds();
    await windowManager.hide();
    _windowVisibleForMac = false;
    AppLifecycleStateNofity.statePaused("close");
  }

  @override
  void onWindowResize() => WindowBounds.updateWindowBounds();

  @override
  void onWindowResized() => WindowBounds.updateWindowBounds();

  @override
  void onWindowMove() => WindowBounds.updateWindowBounds();

  @override
  void onWindowMoved() => WindowBounds.updateWindowBounds();

  @override
  void onWindowMaximize() => WindowBounds.updateWindowBounds();

  @override
  void onWindowUnmaximize() => WindowBounds.updateWindowBounds();

  @override
  void onWindowMinimize() async {
    _windowVisibleForMac = false;
    Log.d("onWindowMinimize");
    AppLifecycleStateNofity.statePaused("minimize");
    await WindowBounds.saveWindowBounds();
  }

  @override
  void onWindowRestore() {
    _windowVisibleForMac = true;
    Log.d("onWindowRestore");
    AppLifecycleStateNofity.stateResumed("restore");
  }

  @override
  void onWindowFocus() {
    if (Platform.isMacOS) {
      if (!_windowVisibleForMac) {
        Log.d("onWindowFocus");
        _windowVisibleForMac = true;
        AppLifecycleStateNofity.stateResumed("restore");
      }
    }
  }

  @override
  void onWindowDeviceShutdown() {
    Log.d("main.dart onWindowDeviceShutdown");
    _quit();
  }

  @override
  void onWindowUserSessionDisconnect() {
    Log.d("main.dart onWindowUserSessionDisconnect");
    if (SettingManager.getConfig().quitWhenSwitchSystemUser) {
      _quit();
    }
  }

  void firstShowWindow(bool forceShow) {
    if (!PlatformUtils.isPC()) {
      return;
    }
    windowManager.waitUntilReadyToShow(null, () async {
      final ui = SettingManager.getConfig().ui;
      if (Platform.isMacOS && ui.hideDockIcon) {
        FlutterVpnService.hideDockIcon(true);
      }
      if (forceShow || !ui.hideAfterLaunch) {
        await windowManager.show();
        onWindowRestore();
      } else {
        await windowManager.hide();
      }
    });
  }

  Future<void> _init() async {
    Biz.onEventExit = (() {
      _quit();
    });

    Biz.onEventVPNStateChanged = ((bool connected) {
      if (PlatformUtils.isPC()) {
        _tray?.setConnected(connected);
      }
    });
    if (widget.startFailedReason == null) {
      Biz.onEventInitHomeFinish.add(() {
        firstShowWindow(false);
      });

      await Biz.init(_launchAtStartup);
    } else {
      firstShowWindow(true);
    }
    ServerManager.onEventReloadFromZip(hashCode, () async {
      if (!mounted) {
        return;
      }
      _themes.setTheme(SettingManager.getConfig().ui.theme, false);
      setState(() {});
    });
  }

  Future<void> _uninit() async {
    if (PlatformUtils.isPC()) {
      await WindowBounds.saveWindowBounds();
      await windowManager.hide();
    }
    if (widget.startFailedReason == null) {
      await Biz.uninit();
    }
  }

  Future<void> _quit() async {
    await _uninit();
    Future.delayed(const Duration(seconds: 0), () async {
      await Log.uninit();
      await ServicesBinding.instance.exitApplication(AppExitType.required);
    });
  }
}
