// ignore_for_file: prefer_interpolation_to_compose_strings, use_build_context_synchronously, empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:after_layout/after_layout.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inapp_notifications/flutter_inapp_notifications.dart';
import 'package:hotkey_manager/hotkey_manager.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/auto_update_manager.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/notice_manager.dart';
import 'package:karing/app/modules/proxy_cluster.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/modules/zashboard.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/clash_api.dart';
import 'package:karing/app/utils/convert_utils.dart';
import 'package:karing/app/utils/diversion_custom_utils.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/local_notifications_utils.dart';
import 'package:karing/app/utils/local_storage.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/main_channel_utils.dart';
import 'package:karing/app/utils/move_to_background_utils.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/system_scheme_utils.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/app/utils/websocket.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/antdesign.dart';
import 'package:karing/screens/common_dialog.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/diversion_rules_custom_set_screen.dart';
import 'package:karing/screens/diversion_rules_screen.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/home_new_screen_widgets.dart';
import 'package:karing/screens/language_settings_screen.dart';
import 'package:karing/screens/local_image_provider.dart';
import 'package:karing/screens/my_profiles_screen.dart';
import 'package:karing/screens/net_check_screen.dart';
import 'package:karing/screens/net_connections_screen.dart';
import 'package:karing/screens/novice_screen.dart';
import 'package:karing/screens/perapp_android_screen.dart';
import 'package:karing/screens/region_settings_screen.dart';
import 'package:karing/screens/richtext_viewer.screen.dart';
import 'package:karing/screens/scheme_handler.dart';
import 'package:karing/screens/server_select_screen.dart';
import 'package:karing/screens/settings_screen.dart';
import 'package:karing/screens/themes.dart';
import 'package:karing/screens/user_agreement_screen.dart';
import 'package:karing/screens/version_update_screen.dart';
import 'package:karing/screens/webview_helper.dart';
import 'package:karing/screens/widgets/ads_banner_widget.dart';
import 'package:karing/screens/widgets/fab2.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/grid.dart';
import 'package:karing/screens/widgets/num.dart';
import 'package:karing/screens/widgets/rotation.dart';
import 'package:karing/screens/widgets/sheet.dart';
import 'package:karing/screens/widgets/super_grid.dart';
import 'package:path/path.dart' as path;
import 'package:protocol_handler/protocol_handler.dart';
import 'package:provider/provider.dart';
import 'package:quick_actions/quick_actions.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tuple/tuple.dart';
import 'package:vpn_service/state.dart';
import 'package:vpn_service/vpn_service.dart';
import 'package:window_manager/window_manager.dart';

class WidgetImportExport {
  List<String> widgets = [];

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    widgets = ConvertUtils.getListStringFromDynamic(map["widgets"], false, [])!;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret['widgets'] = widgets;
    return ret;
  }
}

class HomeNewScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "/");
  }

  final String launchUrl; // await protocolHandler.getInitialUrl();
  const HomeNewScreen({super.key, required this.launchUrl});

  @override
  State<HomeNewScreen> createState() => _HomeNewScreenState();
}

class _HomeNewScreenState extends LasyRenderingState<HomeNewScreen>
    with WidgetsBindingObserver, ProtocolListener, AfterLayoutMixin {
  final _superGridKey = GlobalKey<SuperGridState>();
  static const String userAgreementAgreedIdKey = 'userAgreementAgreedKey';

  static const int kLocalNotificationsIdVpnStateId = 1;
  static const int kLocalNotificationsIdNetStateId = 2;

  static const String kLocalNotificationsIdNetState = "netState";
  static const String kLocalNotificationsIdVpnState = "vpnState";
  final FocusNode _focusNodeRoot = FocusNode(debugLabel: "root");
  final FocusNode _focusNodeSwitch = FocusNode(debugLabel: "switch");
  final FocusNode _focusNodeEdit = FocusNode(debugLabel: "edit");
  bool _agreementApproved = false;

  Websocket? _websocket;

  late HomeWidgetOptions _widgetOptions;

  bool _working = false;
  FlutterVpnServiceState _state = FlutterVpnServiceState.disconnected;

  Timer? _timerStateChecker;
  Timer? _timerCurrentUrltest;
  CurrentServerForUrltest _currentServerForUrltest = CurrentServerForUrltest();

  ProxyConfig _currentServer = ProxyConfig();

  bool _onInitAllFinished = false;
  String _initUrl = "";
  bool _edit = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    initLasyFrameDrawHook();

    protocolHandler.addListener(this);
    _initUrl = widget.launchUrl;

    _widgetOptions = HomeWidgetOptions(
      runtimeInfo: HomeWidgetCard1Options(
        () {},
        null,
      ),
      memoryInfo: HomeWidgetCard1Options(
        () {},
        null,
      ),
      connectionsInfo: HomeWidgetCard1Options(
        onConnectionsInfoPressed,
        onConnectionsInfoLongPress,
      ),
      trafficTotalInfo: HomeWidgetCard2Options(
        () {},
        null,
      ),
      trafficProxyInfo: HomeWidgetCard2Options(
        () {},
        null,
      ),
      trafficSpeedInfo: HomeWidgetCard2Options(
        () {},
        null,
      ),
      profileSubTraffic: HomeWidgetProfileSubTrafficOptions(),
      outboundMode: HomeWidgetOutboundModeOptions(onOutboundModeChanged),
      tun: HomeWidgetSwitchOptions(onTunChanged, () async {
        await checkAndReload("tun");
        setState(() {});
      }),
      systemProxy: HomeWidgetSwitchOptions((value) {}, () {}),
      myProfiles: HomeWidgetCard0Options(
        onTapMyProfiles,
        null,
      ),
      addProfile: HomeWidgetCard0Options(
        onTapAddProfile,
        null,
      ),
      perapp: HomeWidgetCard0Options(
        onTapPerApp,
        null,
      ),
      dns: HomeWidgetCard0Options(
        onTapDNS,
        null,
      ),
      diversion: HomeWidgetCard0Options(
        onTapDiversion,
        null,
      ),
      diversionRules: HomeWidgetCard0Options(
        onTapDiversionRules,
        null,
      ),
      netCheck: HomeWidgetCard0Options(
        onTapNetCheck,
        null,
      ),
      speedtest: HomeWidgetCard0Options(
        onTapSpeedTest,
        null,
      ),
      myLink: HomeWidgetCard0Options(
        onTapLink,
        null,
      ),
      appleTv: HomeWidgetCard0Options(
        onTapAppleTV,
        null,
      ),
      htmlBoard: HomeWidgetCard0Options(
        onTapHtmlBoard,
        null,
      ),
    );
    resetWidgetNotifier();
    _init();
    LocalNotifications.init();
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await AppLifecycleStateNofity.updateState();
    Biz.initHomeFinish();
    initQuickAction();
    ErrorReporterUtils.register(() {
      if (!mounted) {
        return;
      }
      final tcontext = Translations.of(context);
      DialogUtils.showAlertDialog(context, tcontext.meta.deviceNoSpace,
          showCopy: true, showFAQ: true, withVersion: true);
    });

    Future.delayed(const Duration(seconds: 0), () async {
      showAgreement();
    });

    Future.delayed(const Duration(seconds: 0), () async {
      if (Platform.isMacOS) {
        await hotKeyManager.unregisterAll();
        HotKey hotKey = HotKey(
          key: PhysicalKeyboardKey.keyW,
          modifiers: [HotKeyModifier.meta],
          scope: HotKeyScope.inapp,
        );
        await hotKeyManager.register(
          hotKey,
          keyDownHandler: (hotKey) {
            windowManager.hide();
          },
        );
      }
    });
    var setting = SettingManager.getConfig();
    if (setting.ui.tvMode) {
      _focusNodeSwitch.requestFocus();
    }
  }

  void resetWidgetNotifier() {
    _widgetOptions.runtimeInfo!.notifier.value = "0:00:00";
    _widgetOptions.memoryInfo!.notifier.value = "0 B";
    _widgetOptions.connectionsInfo!.notifier.value = "";

    _widgetOptions.trafficTotalInfo!.notifier.value = "↑ 0 B";
    _widgetOptions.trafficTotalInfo!.notifier2.value = "↓ 0 B";

    _widgetOptions.trafficProxyInfo!.notifier.value = "↑ 0 B";
    _widgetOptions.trafficProxyInfo!.notifier2.value = "↓ 0 B";

    _widgetOptions.trafficSpeedInfo!.notifier.value = "↑ 0 B/s";
    _widgetOptions.trafficSpeedInfo!.notifier2.value = "↓ 0 B/s";
  }

  void showAgreement() async {
    String? agreement;
    try {
      agreement = await LocalStorage.read(userAgreementAgreedIdKey);
    } catch (e) {}
    _agreementApproved = true;
    if (agreement != null) {
      String? installer = await AutoUpdateManager.checkReplace();
      if (installer != null) {
        await Navigator.push(
            context,
            MaterialPageRoute(
                settings: VersionUpdateScreen.routSettings(),
                fullscreenDialog: true,
                builder: (context) => const VersionUpdateScreen(
                      force: true,
                    )));
      }
      return;
    }

    AnalyticsUtils.logEvent(
      analyticsEventType: analyticsEventTypeApp,
      name: 'HSS_guide_agreement',
    );

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: UserAgreementScreen.routSettings(),
            fullscreenDialog: true,
            builder: (context) => const UserAgreementScreen()));

    AnalyticsUtils.logEvent(
      analyticsEventType: analyticsEventTypeApp,
      name: 'HSS_guide_language',
    );
    var tcontext = Translations.of(context);
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: LanguageSettingsScreen.routSettings(),
            fullscreenDialog: true,
            builder: (context) => LanguageSettingsScreen(
                  canPop: false,
                  canGoBack: false,
                  nextText: () {
                    var tcontext = Translations.of(context);
                    return tcontext.meta.next;
                  },
                )));
    tcontext = Translations.of(context);

    AnalyticsUtils.logEvent(
      analyticsEventType: analyticsEventTypeApp,
      name: 'HSS_guide_region',
    );

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: RegionSettingsScreen.routSettings(),
            fullscreenDialog: true,
            builder: (context) => RegionSettingsScreen(
                  canPop: false,
                  canGoBack: false,
                  nextText: tcontext.meta.next,
                )));

    var settingConfig = SettingManager.getConfig();
    var regionCode = settingConfig.regionCode.toLowerCase();

    DiversionCustomRules rules =
        (await DiversionCustomRulesPreset.getPreset(regionCode)) ??
            DiversionCustomRules();

    AnalyticsUtils.logEvent(
      analyticsEventType: analyticsEventTypeApp,
      name: 'HSS_guide_diversion_rules_customset',
    );

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: DiversionRulesCustomSetScreen.routSettings(),
            fullscreenDialog: true,
            builder: (context) => DiversionRulesCustomSetScreen(
                  canPop: false,
                  title: tcontext.diversionCustomGroupPreset,
                  canGoBack: false,
                  nextText: tcontext.meta.next,
                  nextIcon: null,
                  rules: rules,
                )));

    AnalyticsUtils.logEvent(
      analyticsEventType: analyticsEventTypeApp,
      name: 'HSS_guide_novice',
    );

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: NoviceScreen.routSettings(),
            fullscreenDialog: true,
            builder: (context) => const NoviceScreen()));

    AnalyticsUtils.logEvent(
      analyticsEventType: analyticsEventTypeApp,
      name: 'HSS_guide_done',
    );

    LocalStorage.write(userAgreementAgreedIdKey, "true");
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    if (noConfig) {
      onTapAddProfileByAgreement();
    }
    if (PlatformUtils.isPC()) {
      var remoteConfig = RemoteConfigManager.getConfig();
      String url = await UrlLauncherUtils.reorganizationUrlWithAnchor(
          remoteConfig.tutorial);
      if (!context.mounted) {
        return;
      }
      await WebviewHelper.loadUrl(context, url, "HSS_guide_done",
          title: tcontext.SettingsScreen.tutorial);
    }
  }

  void checkError(String from, {bool showAlert = true}) async {
    String errorPath = await PathUtils.serviceStdErrorFilePath();
    //String? content = await FileUtils.readAndDelete(errorPath);
    String? content;
    try {
      var file = File(errorPath);
      if (await file.exists()) {
        content = await file.readAsString();
      }
    } catch (e) {}

    if (content != null && content.trim().isNotEmpty) {
      bool isPanic = content.contains("panic:");
      if (!isPanic) {
        await FileUtils.deletePath(errorPath);
      }
      if (!content.contains("Config expired, Please start from app")) {
        if (showAlert) {
          await DialogUtils.showAlertDialog(context, content,
              showCopy: true, showFAQ: true, withVersion: true);
        }
      }
    }
  }

  void _startStateCheckTimer() {
    if (!Platform.isAndroid) {
      return;
    }
    const Duration duration = Duration(seconds: 1);
    _timerStateChecker ??= Timer.periodic(duration, (timer) async {
      if (AppLifecycleStateNofity.isPaused()) {
        return;
      }

      await _checkState();
    });
  }

  void _stopStateCheckTimer() {
    _timerStateChecker?.cancel();
    _timerStateChecker = null;
  }

  Future<void> _checkState() async {
    var state = await VPNService.getState();
    await _onStateChanged(state, {});
  }

  void _connectToCurrent() async {
    if (_currentServer.groupid != ServerManager.getUrltestGroupId()) {
      return;
    }
    if (AppLifecycleStateNofity.isPaused()) {
      return;
    }
    bool started = await VPNService.getStarted();
    if (!started) {
      String now = _currentServerForUrltest.now;
      int delay = _currentServerForUrltest.history.delay;
      _currentServerForUrltest.clear();
      if (_currentServerForUrltest.now != now ||
          _currentServerForUrltest.history.delay != delay) {
        setState(() {});
      }
      return;
    }
    if (_timerCurrentUrltest != null) {
      return;
    }
    //Log.w("_connectToCurrent");
    _timerCurrentUrltest ??=
        Timer.periodic(const Duration(seconds: 3), (timer) async {
      bool started = await VPNService.getStarted();
      if (!started) {
        if (_currentServerForUrltest.now.isNotEmpty ||
            _currentServerForUrltest.history.delay != 0) {
          _currentServerForUrltest.clear();
          setState(() {});
        }

        return;
      }
      ReturnResult<CurrentServerForUrltest> result =
          await ClashApi.getCurrentServerForUrltest(
              ServerManager.getUrltestTagForCustom(_currentServer.tag),
              SettingManager.getConfig().proxy.controlPort);
      String now = _currentServerForUrltest.now;
      int delay = _currentServerForUrltest.history.delay;
      if (result.error != null) {
        _currentServerForUrltest.clear();
      } else {
        _currentServerForUrltest = result.data!;
        _currentServer.latency = _currentServerForUrltest.history.delay > 0
            ? _currentServerForUrltest.history.delay.toString()
            : _currentServerForUrltest.history.error;

        ProxyConfig? proxy =
            ServerManager.getConfig().getByTag(_currentServerForUrltest.now);
        if (proxy != null) {
          proxy.latency = _currentServer.latency;
        }
        if (_currentServer.groupid == ServerManager.getUrltestGroupId() &&
            _currentServer.tag == kOutboundTagUrltest) {
          if (ServerManager.getUse().selectDefault !=
              _currentServerForUrltest.now) {
            ServerManager.getUse().selectDefault = _currentServerForUrltest.now;
            ServerManager.saveUse();
          }
        }
      }
      if (_currentServerForUrltest.now != now ||
          _currentServerForUrltest.history.delay != delay) {
        setState(() {});
      }
    });
  }

  void _disconnectToCurrent() {
    //Log.w("_disconnectToCurrent");
    if (_state != FlutterVpnServiceState.connected) {
      _currentServerForUrltest.clear();
    }

    _timerCurrentUrltest?.cancel();
    _timerCurrentUrltest = null;
  }

  Future<void> _connectToService() async {
    bool started = await VPNService.getStarted();
    if (!started) {
      return;
    }
    if (AppLifecycleStateNofity.isPaused()) {
      return;
    }

    _websocket ??= Websocket(
        url: await getConnectionsUrl(true),
        userAgent: await HttpUtils.getUserAgent(),
        onMessage: (String message) {
          if (AppLifecycleStateNofity.isPaused()) {
            Future.delayed(const Duration(seconds: 0), () async {
              _disconnectToService();
            });
            return;
          }
          var obj = jsonDecode(message);
          Connections con = Connections();
          con.fromJson(obj, false);
          if (con.startTime != null) {
            final startDurationNotify = DateTime.now()
                .difference(con.startTime!)
                .toString()
                .split(".")[0];

            _widgetOptions.runtimeInfo!.notifier.value = startDurationNotify;
          }
          _widgetOptions.trafficTotalInfo!.notifier.value = "↑ " +
              ProxyConfUtils.convertTrafficToStringDouble(con.uploadTotal);

          _widgetOptions.trafficTotalInfo!.notifier2.value = "↓ " +
              ProxyConfUtils.convertTrafficToStringDouble(con.downloadTotal);

          _widgetOptions.trafficProxyInfo!.notifier.value = "↑ " +
              ProxyConfUtils.convertTrafficToStringDouble(
                  con.uploadTotal - con.uploadTotalDirect);

          _widgetOptions.trafficProxyInfo!.notifier2.value = "↓ " +
              ProxyConfUtils.convertTrafficToStringDouble(
                  con.downloadTotal - con.downloadTotalDirect);

          _widgetOptions.trafficSpeedInfo!.notifier.value = "↑ " +
              ProxyConfUtils.convertTrafficToStringDouble(con.uploadSpeed) +
              "/s";

          _widgetOptions.trafficSpeedInfo!.notifier2.value = "↓ " +
              ProxyConfUtils.convertTrafficToStringDouble(con.downloadSpeed) +
              "/s";

          _widgetOptions.memoryInfo!.notifier.value =
              ProxyConfUtils.convertTrafficToStringDouble(con.memory);

          if (SettingManager.getConfig().dev.devMode) {
            _widgetOptions.connectionsInfo!.notifier.value =
                "${con.connectionsInCount}/${con.connectionsOutCount}/${con.goroutines}/${con.threadCount}";
          } else {
            _widgetOptions.connectionsInfo!.notifier.value =
                con.connectionsInCount.toString();
          }

          _updateNetStateLocalNotifications();
        },
        onDone: () {
          _disconnectToService();
        },
        onError: (err) {
          _disconnectToService();
        });
    await _websocket!.connect();
  }

  Future<void> _disconnectToService() async {
    _removeNetStateLocalNotifications();
    //Log.w("_disconnectToService");

    await _websocket?.disconnect();

    resetWidgetNotifier();
  }

  void _updateVpnStateLocalNotifications(String state) {
    /*LocalNotifications.notifiy(
        kLocalNotificationsIdVpnStateId,
        kLocalNotificationsIdVpnState,
        AppUtils.getName(),
        state,
        "",
        () => null);*/
  }
  void _updateWanIP() async {
    var setting = SettingManager.getConfig();
    var now = DateTime.now();
    var last = DateTime.tryParse(setting.dns.clientSubnetLatestUpdate);
    if (setting.dns.clientSubnet.isNotEmpty) {
      if (last != null) {
        Duration dur = now.difference(last);
        if (dur < const Duration(hours: 1)) {
          return;
        }
      }
    }
    setting.dns.clientSubnetLatestUpdate = now.toString();
    ReturnResult<String> result = await HttpUtils.httpGetRequest(
        "https://checkip.amazonaws.com/",
        SettingManager.getConfig().proxy.mixedDirectPort,
        null,
        const Duration(seconds: 3),
        null,
        null);

    if (result.error != null) {
      return;
    }
    String ip = result.data!.trim();
    if (NetworkUtils.isIpv4(ip) || NetworkUtils.isIpv6(ip)) {
      setting.dns.clientSubnet = ip;
      SettingManager.saveConfig();
    }
  }

  void _updateNetStateLocalNotifications() {
    /*final tcontext = Translations.of(context);
    String title =
        "${tcontext.netSpeed} ↑ $_trafficUpSpeedNotify ↓ $_trafficDownSpeedNotify";

    String content =
        "${tcontext.HomeScreen.trafficProxy} ↑ $_trafficUpTotalProxyNotify ↓ $_trafficDownTotalProxyNotify \n";
    content +=
        "${tcontext.HomeScreen.trafficTotal} ↑ $_trafficUpTotalNotify ↓ $_trafficDownTotalNotify\n";
    LocalNotifications.notifiy(kLocalNotificationsIdNetStateId,
        kLocalNotificationsIdNetState, title, content, "", () => null);*/
  }

  void _removeNetStateLocalNotifications() {
    //LocalNotifications.remove(kLocalNotificationsIdNetStateId);
  }

  void _init() async {
    Biz.onEventInitAllFinish.add(() async {
      await _onInitAllFinish();
    });
  }

  void initQuickAction() async {
    if (!Platform.isIOS && !Platform.isAndroid) {
      return;
    }
    const String onOff = "on-off";
    try {
      const QuickActions quickActions = QuickActions();
      await quickActions.initialize((String shortcutType) async {
        if (shortcutType == onOff) {
          ReturnResultError? err = await onTapToggle("quickAction");
          if (err == null) {
            MoveToBackgroundUtils.moveToBackground(
                duration: const Duration(milliseconds: 300));
          }
        }
      });

      await quickActions.setShortcutItems(<ShortcutItem>[
        const ShortcutItem(
          type: onOff,
          localizedTitle: 'ON / OFF',
          icon: 'ic_launcher',
        ),
      ]);
    } catch (err, stacktrace) {
      Log.w("initQuickAction exception ${err.toString()}");
    }
  }

  Future<void> _onInitAllFinish() async {
    NoticeManager.onEventCheck.add(() {
      setState(() {});
    });
    AutoUpdateManager.onEventCheck.add(() {
      setState(() {});
    });
    DialogUtils.faqCallback = (BuildContext context, String text) async {
      CommonDialog.loadFAQByError(context, text, true);
    };

    checkError("_onInitAllFinish", showAlert: false);

    if (_currentServer.tag.isEmpty) {
      ProxyConfig? config = ServerManager.getMostRecent();
      if (config != null) {
        _currentServer = config;
        if (_currentServer.groupid != ServerManager.getUrltestGroupId()) {
          ProxyConfig? server =
              ServerManager.getConfig().getByTag(_currentServer.tag);
          if (server != null) {
            _currentServer = server;
          }
        } else {
          _currentServer.latency = "";
        }
        VPNService.setCurrent(_currentServer);
        _currentServerForUrltest.clear();
      } else {
        if (ServerManager.getConfig().getServersCount(false) > 0) {
          _currentServer = ServerManager.getUrltest();
          VPNService.setCurrent(_currentServer);
          _currentServerForUrltest.clear();
          ServerManager.addRecent(_currentServer);
          ServerManager.saveUse();
        }
      }
    }

    SchemeHandler.vpnConnect = _vpnSchemeConnect;
    SchemeHandler.vpnDisconnect = _vpnSchemeDisconnect;
    SchemeHandler.vpnReconnect = _vpnSchemeReconnect;

    Biz.onEventRequestStartVPN = _onRequestStartVPN;

    VPNService.onEventStateChanged.add(_onStateChanged);
    ServerManager.onEventAddConfig(hashCode, _onAddConfig);
    ServerManager.onEventUpdateConfig(hashCode, _onUpdateConfig);
    ServerManager.onEventLatencyUpdateConfig(hashCode, _onLatencyUpdateConfig);
    ServerManager.onEventRemoveConfig(hashCode, _onRemoveConfig);
    ServerManager.onEventEnableConfig(hashCode, _onEnableConfig);
    ServerManager.onEventRemoteTrafficReload(hashCode, (String groupid) {
      setState(() {});
    }, (String groupid) {
      setState(() {});
    });
    ServerManager.onReloadFromZipConfigs(hashCode, _onReloadFromZipConfigs);
    ServerManager.onEventTestLatency(hashCode, _onTestLatency);
    AppLifecycleStateNofity.onStateResumed(hashCode, _onStateResumed);
    AppLifecycleStateNofity.onStatePaused(hashCode, _onStatePaused);

    if (Platform.isWindows) {
      bool reg =
          SystemSchemeUtils.isRegistered(SystemSchemeUtils.getKaringScheme());
      if (!reg) {
        SystemSchemeUtils.register(SystemSchemeUtils.getKaringScheme());
      }
    }
    _onInitAllFinished = true;

    setState(() {});
    if (!AppLifecycleStateNofity.isPaused()) {
      _onStateResumed();
    }

    if (PlatformUtils.isPC()) {
      if (SettingManager.getConfig().autoConnectAfterLaunch) {
        bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
        if (!noConfig) {
          var state = await VPNService.getState();
          if (state == FlutterVpnServiceState.invalid ||
              state == FlutterVpnServiceState.disconnected) {
            await start("launch");
          }
        }
      }
    } else if (Platform.isAndroid) {
      String? command = await MainChannel.call("getCommand", {});
      if (command == "connect") {
        ReturnResultError? err = await start("launch");
        if (err == null) {
          MoveToBackgroundUtils.moveToBackground(
              duration: const Duration(milliseconds: 300));
        }
      }
    }
    if (_initUrl.isNotEmpty) {
      await SchemeHandler.handle(context, _initUrl);
      _initUrl = "";
    }

    setState(() {});
  }

  Future<void> _vpnSchemeConnect(bool background) async {
    Future.delayed(const Duration(seconds: 0), () async {
      ReturnResultError? error = await start("scheme");
      if (error == null) {
        if (background) {
          MoveToBackgroundUtils.moveToBackground(
              duration: const Duration(milliseconds: 300));
        }
      }
    });
  }

  Future<void> _vpnSchemeDisconnect(bool background) async {
    Future.delayed(const Duration(seconds: 0), () async {
      await stop();
      if (background) {
        MoveToBackgroundUtils.moveToBackground(
            duration: const Duration(milliseconds: 300));
      }
    });
  }

  Future<void> _vpnSchemeReconnect(bool background) async {
    Future.delayed(const Duration(seconds: 0), () async {
      await stop();
      ReturnResultError? error = await start("scheme");
      if (error == null) {
        if (background) {
          MoveToBackgroundUtils.moveToBackground(
              duration: const Duration(milliseconds: 300));
        }
      }
    });
  }

  Future<ReturnResultError?> _onRequestStartVPN(String from) async {
    if (_state == FlutterVpnServiceState.connected) {
      return await checkAndReload(from, disableShowAlertDialog: true);
    }
    if (_state == FlutterVpnServiceState.disconnected) {
      return await start(from, disableShowAlertDialog: true);
    }
    return null;
  }

  Future<void> _onStateChanged(
      FlutterVpnServiceState state, Map<String, String> params) async {
    if (_state == state) {
      return;
    }
    //print("_onStateChanged $_state->$state");

    _state = state;
    if (state == FlutterVpnServiceState.disconnected) {
      _disconnectToCurrent();
      _disconnectToService();
      Biz.vpnStateChanged(false);
      _updateVpnStateLocalNotifications("stop");
      checkError("onStateChanged");
    } else if (state == FlutterVpnServiceState.connecting) {
    } else if (state == FlutterVpnServiceState.connected) {
      if (!AppLifecycleStateNofity.isPaused()) {
        _connectToCurrent();
        _connectToService();
        _updateWanIP();
      }

      Biz.vpnStateChanged(true);
      _updateVpnStateLocalNotifications("start");
    } else if (state == FlutterVpnServiceState.reasserting) {
      _disconnectToCurrent();
      _disconnectToService();
      _updateVpnStateLocalNotifications("restart");
    } else if (state == FlutterVpnServiceState.disconnecting) {
      _stopStateCheckTimer();
    } else {
      _disconnectToCurrent();
      _disconnectToService();
      Biz.vpnStateChanged(false);
      _stopStateCheckTimer();
    }

    setState(() {});

    if (Platform.isWindows && params.isNotEmpty) {
      Log.w("VPNService process exit :${params.toString()}");
    }
  }

  Future<void> _onAddConfig(ServerConfigGroupItem item) async {
    if (_currentServer.groupid.isEmpty) {
      _currentServer = ServerManager.getUrltest();
      VPNService.setCurrent(_currentServer);

      ServerManager.addRecent(_currentServer);
      ServerManager.saveUse();
    }
    var settingConfig = SettingManager.getConfig();
    if (settingConfig.autoBackup.addProfile) {
      _autoBackup();
    }
    await setServerAndReload("onEventAddConfig");
  }

  Future<void> _onUpdateConfig(List<ServerConfigGroupItem> groups) async {
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    if (noConfig) {
      setState(() {});
      return;
    }
    bool reload = false;
    for (var group in groups) {
      if (group.enable && group.reloadAfterProfileUpdate) {
        reload = true;
        break;
      }
    }
    if (!reload) {
      setState(() {});
      return;
    }

    await setServerAndReload("onEventUpdateConfig",
        reason: t.meta.appNotifyWithReason(
            p: t.meta.reconnect, p1: t.reloadReason.profileUpdate));
  }

  Future<void> _onLatencyUpdateConfig(Set<ServerConfigGroupItem> groups) async {
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    if (noConfig) {
      setState(() {});
      return;
    }
    bool reload = false;
    for (var group in groups) {
      if (group.enable && group.testLatencyAutoRemove) {
        reload = true;
        break;
      }
    }
    if (!reload) {
      setState(() {});
      return;
    }

    await setServerAndReload("onEventLatencyUpdateConfig",
        reason: t.meta.appNotifyWithReason(
            p: t.meta.reconnect, p1: t.reloadReason.latencyTest));
  }

  Future<void> _onRemoveConfig(
      String groupid, bool enable, bool hasDeviersionGroup) async {
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    var settingConfig = SettingManager.getConfig();
    if (settingConfig.autoBackup.removeProfile && !noConfig) {
      _autoBackup();
    }
    /*if (!enable) {
      return;
    }
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    if (noConfig) {
      _currentServer = ProxyConfig();
      VPNService.setCurrent(_currentServer);

      await stop();

      return;
    }
    if (groupid == _currentServer.groupid) {
      _currentServer = ServerManager.getUrltest();
      VPNService.setCurrent(_currentServer);

      ServerManager.addRecent(_currentServer);
      ServerManager.saveUse();
    }
    await setServerAndReload("onEventRemoveConfig");*/
  }

  Future<void> _onEnableConfig(String groupid, bool enable) async {
    /*bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    if (noConfig) {
      _currentServer = ProxyConfig();
      VPNService.setCurrent(_currentServer);

      await stop();

      return;
    }
    if (!enable) {
      return;
    }
    if (groupid == _currentServer.groupid) {
      _currentServer = ServerManager.getUrltest();
      VPNService.setCurrent(_currentServer);

      ServerManager.addRecent(_currentServer);
      ServerManager.saveUse();
    }
    await setServerAndReload("onEventEnableConfig");*/
  }

  Future<void> _onReloadFromZipConfigs() async {
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    if (noConfig) {
      _currentServer = ProxyConfig();
      VPNService.setCurrent(_currentServer);

      await stop();
      return;
    }
    ProxyConfig? config = ServerManager.getMostRecent();
    if (config != null) {
      _currentServer = config;
      if (_currentServer.groupid != ServerManager.getUrltestGroupId()) {
        ProxyConfig? server =
            ServerManager.getConfig().getByTag(_currentServer.tag);
        if (server != null) {
          _currentServer = server;
        }
      }

      VPNService.setCurrent(_currentServer);
    } else {
      _currentServer = ServerManager.getUrltest();
      VPNService.setCurrent(_currentServer);

      ServerManager.addRecent(_currentServer);
      ServerManager.saveUse();
    }

    setState(() {});
  }

  Future<void> _onTestLatency(
      String groupid, String tag, bool start, bool finish) async {
    if (!mounted) {
      return;
    }

    if ((groupid == _currentServer.groupid && tag == _currentServer.tag) ||
        (tag == _currentServerForUrltest.now)) {
      ServerConfigGroupItem? item = ServerManager.getByGroupId(groupid);
      if (item != null) {
        ProxyConfig? ppc = item.getByTag(tag);
        if (ppc != null) {
          _currentServer.latency = ppc.latency;
          setState(() {});
        }
      }
    }
    if (finish) {
      if (ServerManager.getUrltestGroupId() == _currentServer.groupid) {
        if (SettingManager.getConfig()
            .autoSelect
            .updateCurrentServerAfterManualUrltest) {
          await ClashApi.updateUrltestCheck(
              SettingManager.getConfig().proxy.controlPort);
          ReturnResult<CurrentServerForUrltest> result =
              await ClashApi.getCurrentServerForUrltest(
                  ServerManager.getUrltestTagForCustom(_currentServer.tag),
                  SettingManager.getConfig().proxy.controlPort);

          if (result.error != null) {
            _currentServerForUrltest.clear();
          } else {
            _currentServerForUrltest = result.data!;
            _currentServer.latency = _currentServerForUrltest.history.delay > 0
                ? _currentServerForUrltest.history.delay.toString()
                : _currentServerForUrltest.history.error;

            ProxyConfig? proxy = ServerManager.getConfig()
                .getByTag(_currentServerForUrltest.now);
            if (proxy != null) {
              proxy.latency = _currentServer.latency;
            }
            if (_currentServer.groupid == ServerManager.getUrltestGroupId() &&
                _currentServer.tag == kOutboundTagUrltest) {
              if (ServerManager.getUse().selectDefault !=
                  _currentServerForUrltest.now) {
                ServerManager.getUse().selectDefault =
                    _currentServerForUrltest.now;
                ServerManager.saveUse();
              }
            }
          }
        }
      }
    }
  }

  Future<void> _onStateResumed() async {
    _checkState();

    _startStateCheckTimer();

    _connectToCurrent();
    _connectToService();
    _updateWanIP();

    _showNotify();
    var setting = SettingManager.getConfig();
    if (!_edit && setting.ui.tvMode) {
      _focusNodeSwitch.requestFocus();
    }
  }

  Future<void> _onStatePaused() async {
    _stopStateCheckTimer();

    _disconnectToCurrent();
    _disconnectToService();
  }

  Future<void> _autoBackup() async {
    var now = DateTime.now();
    String dir = await PathUtils.backupDir();
    String fileName =
        "${now.year}-${now.month.toString().padLeft(2, '0')}-${now.day.toString().padLeft(2, '0')}.zip";
    String filePath = path.join(dir, fileName);
    final err = await ServerManager.backupToZip(context, filePath);
    if (err != null) {
      Log.w("autoBackup failed: ${err.toString()}");
    }

    var files = FileUtils.recursionFile(dir, extensionFilter: {".zip"});
    if (files.length < SettingConfigItemAutobackup.kMaxCount) {
      return;
    }

    files.sort((a, b) => b.compareTo(a));
    files.removeRange(0, SettingConfigItemAutobackup.kMaxCount);
    for (var file in files) {
      await FileUtils.deletePath(file);
    }
  }

  Future<Tuple2<ReturnResultError?, int?>> setServer() async {
    final tcontext = Translations.of(context);
    String savePath = await PathUtils.serviceCoreConfigFilePath();
    VPNServiceSetServerOptions options = VPNServiceSetServerOptions();
    options.disabledServerError = tcontext.HomeScreen.disabledServer;
    options.invalidServerError = tcontext.HomeScreen.invalidServer;
    options.expiredServerError = tcontext.HomeScreen.expiredServer;
    ReturnResultError? resultError;
    try {
      resultError = await VPNService.setServer(_currentServer, options,
          SingboxExportType.karing, null, "", savePath);
    } catch (err, stacktrace) {
      resultError = ReturnResultError(err.toString());
      Log.w("setServer exception: $err, $stacktrace");
    }

    if (resultError != null) {
      return Tuple2(resultError, options.allOutboundsTags.length);
    }
    if (PlatformUtils.isMobile()) {
      int maxCount = Platform.isIOS ? 3000 : 12000;
      if (options.allOutboundsTags.length > maxCount) {
        String description = Platform.isIOS
            ? tcontext.HomeScreen.tooMuchServers(
                p: options.allOutboundsTags.length, p1: maxCount)
            : tcontext.HomeScreen.tooMuchServers2(
                p: options.allOutboundsTags.length, p1: maxCount);

        InAppNotifications.show(
            title: tcontext.meta.tips,
            duration: const Duration(seconds: 3),
            leading: const Icon(
              Icons.warning,
              color: Colors.yellow,
              size: 50,
            ),
            description: description,
            onTap: () {
              InAppNotifications.dismiss();
            });
      }
    }

    return Tuple2(null, options.allOutboundsTags.length);
  }

  Future<bool> startVPN() async {
    return await Biz.startOrRestartIfDirtyVPN(context, "HomeScreen");
  }

  Future<ReturnResultError?> setServerAndReload(String from,
      {bool disableShowAlertDialog = false, String reason = ""}) async {
    if (_state != FlutterVpnServiceState.connected) {
      return null;
    }
    SettingManager.setDirty(false);
    ServerManager.setDirty(false);

    await ProxyCluster.stop();
    _disconnectToCurrent();
    _disconnectToService();
    _currentServerForUrltest.clear();

    setState(() {});
    var result = await setServer();
    bool tunMode = await VPNService.getTunMode();
    if (result.item1 == null) {
      var err = await VPNService.reload(
          VPNService.getTimeoutByOutboundCount(result.item2!, tunMode));

      if (err != null) {
        if (!disableShowAlertDialog) {
          CommonDialog.handleStartError(context, err.message);
        }
        return err;
      } else {
        if (PlatformUtils.isPC()) {
          var settingConfig = SettingManager.getConfig();
          if (settingConfig.proxy.enableCluster) {
            String? error = await ProxyCluster.start();
            if (error != null) {
              if (!disableShowAlertDialog) {
                DialogUtils.showAlertDialog(context, error,
                    showCopy: true, showFAQ: true, withVersion: true);
              }
              return ReturnResultError(error);
            }
          }
        }
        if (reason.isNotEmpty) {
          _showNotifyWith(reason);
        }
      }
    } else {
      await VPNService.stop();
      await Zashboard.stop();
    }

    return null;
  }

  void onTapSetting() async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: SettingsScreen.routSettings(),
            builder: (context) => const SettingsScreen()));
    await checkAndReload("onTapSetting");
    setState(() {});
  }

  Future<void> onTapShowAddProfile() async {
    await GroupHelper.showAddProfile(context, false);
    await checkAndReload("onTapShowAddProfile");
    setState(() {});
  }

  void onTapSpeedTest() async {
    final tcontext = Translations.of(context);
    var setting = SettingManager.getConfig();
    await WebviewHelper.loadUrl(
        context,
        !setting.novice ? setting.speedTest : SettingConfig.kSpeedTestList[0],
        "HSS_speedTest",
        title: tcontext.SettingsScreen.speedTest);
  }

  void onTapLink() async {
    final tcontext = Translations.of(context);
    if (SettingManager.getConfig().uiScreen.myLink.isEmpty) {
      await DialogUtils.showAlertDialog(
          context, tcontext.HomeScreen.myLinkEmpty);
    } else {
      await WebviewHelper.loadUrl(
          context, SettingManager.getConfig().uiScreen.myLink, "HSS_myLink",
          title: SettingManager.getConfig().uiScreen.myLink);
    }
  }

  void onTapAppleTV() async {
    GroupHelper.showAppleTVByScanQRCode(context);
  }

  void onTapHtmlBoard() async {
    bool ok = await startVPN();
    if (!ok) {
      return;
    }
    GroupHelper.showHtmlBoard(context, "HSS_htmlBoard");
  }

  void onTapMyProfiles() async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: MyProfilesScreen.routSettings(),
            builder: (context) => const MyProfilesScreen()));
    await checkAndReload("onTapMyProfiles");
    setState(() {});
  }

  void onTapAddProfile() async {
    await GroupHelper.showAddProfile(context, false);
    await checkAndReload("onTapAddProfile");
    setState(() {});
  }

  void onTapAddProfileByAgreement() async {
    await GroupHelper.showAddProfile(context, true);
    await checkAndReload("onTapAddProfileByAgreement");
    setState(() {});
  }

  void onTapAddProfileByStart() async {
    await GroupHelper.showAddProfile(context, false);
    await checkAndReload("onTapAddProfileByStart");
    setState(() {});
  }

  void onTapPerApp() async {
    bool tunMode = await VPNService.getTunMode();
    if (!tunMode) {
      return;
    }
    if (Platform.isAndroid) {
      await Navigator.push(
          context,
          MaterialPageRoute(
              settings: PerAppAndroidScreen.routSettings(),
              builder: (context) => const PerAppAndroidScreen()));
    } /*else if (Platform.isMacOS) {
      await Navigator.push(
          context,
          MaterialPageRoute(
              settings: PerAppMacosScreen.routSettings(),
              builder: (context) => const PerAppMacosScreen()));
    }*/
    await checkAndReload("onTapPerApp");
    setState(() {});
  }

  void onTapDNS() async {
    await GroupHelper.showDns(context);
    await checkAndReload("onTapDNS");
    setState(() {});
  }

  void onTapDiversion() async {
    await GroupHelper.showDeversion(context);
    await checkAndReload("onTapDiversion");
    setState(() {});
  }

  void onTapDiversionRules() async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: DiversionRulesScreen.routSettings(),
            builder: (context) => const DiversionRulesScreen()));
    await checkAndReload("onTapDiversionRules");
    setState(() {});
  }

  void onTapNetCheck() async {
    Navigator.push(
        context,
        MaterialPageRoute(
            settings: NetCheckScreen.routSettings(),
            builder: (context) => const NetCheckScreen()));
  }

  void onTapAddWidget(BuildContext context) async {
    final children = _superGridKey.currentState?.children;
    if (children == null) {
      return;
    }

    final exist = children
        .map(
          (item) => item.id,
        )
        .toList();

    final ids = HomeWidgets.getAllWidgetIds();
    ids.removeWhere((value) {
      return exist.contains(value);
    });

    var widgets = [];
    for (var id in ids) {
      final name = HomeWidgets.getWidgetNameById(context, id);
      widgets.add(ListTile(
        title: Text(
          name,
        ),
        onTap: () async {
          Navigator.pop(context);
          final item = HomeWidgets.createWidget(id, _widgetOptions);
          if (item != null) {
            _superGridKey.currentState?.handleAdd(item);
            setState(() {});
          }
        },
      ));
    }

    showSheetWidgets(context: context, widgets: widgets);
  }

  static Future<ReturnResult<WidgetImportExport>> getWidgetsFromFile(
      String path) async {
    try {
      var file = File(path);
      if (!await file.exists()) {
        return ReturnResult(error: ReturnResultError("$path not exists"));
      }
      String content = await file.readAsString();
      if (content.isEmpty) {
        return ReturnResult(error: ReturnResultError("$path content is empty"));
      }
      var config = jsonDecode(content);
      WidgetImportExport data = WidgetImportExport();
      data.fromJson(config);
      return ReturnResult(data: data);
    } catch (err) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  void onTapWidgetImport(BuildContext context) async {
    final tcontext = Translations.of(context);
    List<String> extensions = ['json'];
    try {
      FilePickerResult? fresult = await FilePicker.platform.pickFiles(
        type: Platform.isAndroid ? FileType.any : FileType.custom,
        allowedExtensions: Platform.isAndroid ? null : extensions,
      );
      if (fresult != null) {
        String ext = path
            .extension(fresult.files.first.name)
            .replaceAll('.', '')
            .toLowerCase();
        if (!extensions.contains(ext)) {
          if (!mounted) {
            return;
          }
          DialogUtils.showAlertDialog(
              context, tcontext.meta.fileTypeInvalid(p: ext));
          return;
        }
        ReturnResult<WidgetImportExport> result =
            await getWidgetsFromFile(fresult.files.first.path!);
        if (result.error != null) {
          if (!mounted) {
            return;
          }
          DialogUtils.showAlertDialog(context, result.error!.message,
              showCopy: true, showFAQ: true, withVersion: true);
          return;
        }
        if (result.data!.widgets.isEmpty) {
          if (!mounted) {
            return;
          }
          DialogUtils.showAlertDialog(
              context, tcontext.SettingsScreen.widgetsEmpty,
              showCopy: true, showFAQ: true, withVersion: true);
          return;
        }
        SettingManager.getConfig().uiScreen.widgets = result.data!.widgets;
        SettingManager.saveConfig();
        _edit = false;

        setState(() {});
      }
    } catch (err, stacktrace) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  void onTapWidgetExport(BuildContext context) async {
    try {
      String fileName = "home_widgets_custom.json";
      String? filePath;
      if (PlatformUtils.isMobile()) {
        String dir = await PathUtils.cacheDir();
        filePath = path.join(dir, fileName);
      } else {
        filePath = await FilePicker.platform.saveFile(
          fileName: fileName,
          lockParentWindow: true,
        );
      }

      if (filePath != null) {
        File file = File(filePath);
        final children = _superGridKey.currentState?.children ?? [];
        WidgetImportExport data = WidgetImportExport();
        data.widgets = children
            .map(
              (item) => item.id,
            )
            .toList();

        const JsonEncoder encoder = JsonEncoder.withIndent('  ');
        String content = encoder.convert(data);
        try {
          await file.writeAsString(content, flush: true);
        } catch (err) {
          ErrorReporterUtils.tryReportNoSpace(err.toString());
          return;
        }

        if (PlatformUtils.isMobile()) {
          try {
            if (!mounted) {
              return;
            }
            final box = context.findRenderObject() as RenderBox?;
            final rect =
                box != null ? box.localToGlobal(Offset.zero) & box.size : null;
            await Share.shareXFiles(
              [XFile(filePath)],
              sharePositionOrigin: rect,
            );
          } catch (err) {
            if (!mounted) {
              return;
            }
            DialogUtils.showAlertDialog(context, err.toString(),
                showCopy: true, showFAQ: true, withVersion: true);
          }
        }
      }
    } catch (err, stacktrace) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  void onTapEditWidget() async {
    if (_edit) {
      final children = _superGridKey.currentState?.children;
      if (children == null) {
        return;
      }

      SettingManager.getConfig().uiScreen.widgets = children
          .map(
            (item) => item.id,
          )
          .toList();
      SettingManager.saveConfig();
    }

    _edit = !_edit;
    setState(() {});
  }

  void onTapNotice(NoticeItem noticeItem) async {
    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeUA,
        name: 'HSS_notice',
        parameters: {"title": noticeItem.title, "isp_id": noticeItem.ispId},
        repeatable: true);

    InAppNotifications.dismiss();
    if (noticeItem.url.isNotEmpty) {
      String url = noticeItem.ispId.isNotEmpty
          ? noticeItem.url
          : await UrlLauncherUtils.reorganizationUrlWithAnchor(noticeItem.url);
      if (!context.mounted) {
        return;
      }
      await WebviewHelper.loadUrl(context, url, "HSS_notice",
          title: noticeItem.title);
    } else {
      await Navigator.push(
          context,
          MaterialPageRoute(
              settings: RichtextViewScreen.routSettings(),
              builder: (context) => RichtextViewScreen(
                  title: t.meta.notice,
                  file: "",
                  content: noticeItem.content)));
    }
    noticeItem.readed = true;
    NoticeManager.saveConfig();

    setState(() {});
    Future.delayed(const Duration(seconds: 0), () async {
      if (!mounted) {
        return;
      }
      _showNotify();
    });
  }

  Future<String> getConnectionsUrl(bool noConnections) async {
    return await ClashApi.getConnectionsUrl(
        SettingManager.getConfig().proxy.controlPort,
        noConnections: noConnections);
  }

  Future<void> onTapServerSelect() async {
    ProxyConfig? result = await Navigator.push(
        context,
        MaterialPageRoute(
            settings: ServerSelectScreen.routSettings(),
            builder: (context) => ServerSelectScreen(
                  singleSelect: ServerSelectScreenSingleSelectedOption(
                    selectedServer: _currentServer,
                    showAutoSelect: true,
                    showDirect: true,
                    showUrltestGroup: true,
                  ),
                  multiSelect: null,
                  autoUpdateLatencyHistory: _currentServer.groupid ==
                      ServerManager.getUrltestGroupId(),
                )));
    if (result != null) {
      if (!_currentServer.isSame(result) || ServerManager.getDirty()) {
        _currentServer = result;
        _currentServerForUrltest.clear();
        ServerManager.addRecent(result);
        var use = ServerManager.getUse();
        if (use.selectDefault != result.tag &&
            result.latency.isNotEmpty &&
            int.tryParse(result.latency) != null &&
            result.type != kOutboundTypeUrltest) {
          use.selectDefault = result.tag;
        }
        await setServerAndReload("ServerSelectScreen");
      } else {
        _currentServer = result;
      }
      VPNService.setCurrent(_currentServer);
    }
    ServerManager.setDirty(false);
    setState(() {});
  }

  Future<ReturnResultError?> checkAndReload(String from,
      {bool disableShowAlertDialog = false}) async {
    if (_state != FlutterVpnServiceState.connected) {
      return null;
    }
    if (SettingManager.getDirty() || ServerManager.getDirty()) {
      if (_currentServer.groupid.isEmpty) {
        _currentServer = ServerManager.getUrltest();
        VPNService.setCurrent(_currentServer);

        ServerManager.addRecent(_currentServer);
        ServerManager.saveUse();
      }
      if (SettingManager.getDirty()) {
        SettingManager.setDirty(false);
        SettingManager.saveConfig();
      }

      ServerManager.setDirty(false);
      bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
      if (noConfig) {
        await stop();
        return null;
      }
      return await setServerAndReload(from,
          disableShowAlertDialog: disableShowAlertDialog);
    }
    return null;
  }

  Future<ReturnResultError?> onTapToggle(String from) async {
    bool started = await VPNService.getStarted();
    if (started) {
      await stop();
      return null;
    } else {
      return await start(from);
    }
  }

  Future<void> stop() async {
    _currentServerForUrltest.clear();
    await ProxyCluster.stop();
    await Zashboard.stop();
    if (_currentServer.groupid == ServerManager.getUrltestGroupId()) {
      _currentServer.latency = "";
      _currentServerForUrltest.history.clear();
    }
    await VPNService.stop();
  }

  Future<ReturnResultError?> start(String from,
      {bool disableShowAlertDialog = false}) async {
    _currentServerForUrltest.clear();
    await ProxyCluster.stop();

    if (!_agreementApproved) {
      return ReturnResultError("agreement");
    }

    if (Platform.isWindows) {
      List<String> filePaths = [
        PathUtils.serviceExePath(),
      ];
      List<String> dirPaths = [PathUtils.flutterAssetsDir()];
      for (var filePath in filePaths) {
        var file = File(filePath);
        bool exist = await file.exists();
        if (!exist) {
          final tcontext = Translations.of(context);
          if (!disableShowAlertDialog) {
            DialogUtils.showAlertDialog(
                context, tcontext.fileNotExistReinstall(p: filePath),
                showCopy: true, showFAQ: true, withVersion: true);
          }
          Log.w("start failed: ${tcontext.fileNotExistReinstall(p: filePath)}");
          return ReturnResultError(tcontext.fileNotExistReinstall(p: filePath));
        }
      }
      for (var filePath in dirPaths) {
        var file = Directory(filePath);
        bool exist = await file.exists();
        if (!exist) {
          final tcontext = Translations.of(context);
          if (!disableShowAlertDialog) {
            DialogUtils.showAlertDialog(
                context, tcontext.fileNotExistReinstall(p: filePath),
                showCopy: true, showFAQ: true, withVersion: true);
          }
          Log.w("start failed: ${tcontext.fileNotExistReinstall(p: filePath)}");
          return ReturnResultError(tcontext.fileNotExistReinstall(p: filePath));
        }
      }
    }
    if (Platform.isIOS || Platform.isMacOS) {
      final List<ConnectivityResult> connectivityResult =
          await (Connectivity().checkConnectivity());
      if (connectivityResult.contains(ConnectivityResult.none)) {
        final tcontext = Translations.of(context);
        if (!disableShowAlertDialog) {
          DialogUtils.showAlertDialog(context, tcontext.noNetworkConnect);
        }
        return ReturnResultError(tcontext.noNetworkConnect);
      }
    }
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    if (noConfig) {
      if (!disableShowAlertDialog) {
        DialogUtils.showAlertDialog(
            context, "start failed: no server avaliable",
            showCopy: true, showFAQ: true, withVersion: true);
      }
      Log.w("start failed: no server avaliable");
      return ReturnResultError("start failed: no server avaliable");
    }
    if (_currentServer.groupid.isEmpty) {
      if (!disableShowAlertDialog) {
        DialogUtils.showAlertDialog(context, "start failed: groupid is empty",
            showCopy: true, showFAQ: true, withVersion: true);
      }
      Log.w("start failed: groupid is empty, from $from");
      return ReturnResultError("start failed: groupid is empty");
    }
    var state = await VPNService.getState();
    if (state == FlutterVpnServiceState.connecting ||
        state == FlutterVpnServiceState.disconnecting ||
        state == FlutterVpnServiceState.reasserting) {
      if (!disableShowAlertDialog) {
        DialogUtils.showAlertDialog(context, "start failed: wrong state $state",
            showCopy: true, showFAQ: true, withVersion: true);
      }
      Log.w("start failed: wrong state $state");
      return ReturnResultError("start failed: wrong state $state");
    }

    setState(() {});
    var result = await setServer();
    bool tunMode = await VPNService.getTunMode();
    if (result.item1 != null) {
      setState(() {});

      if (!disableShowAlertDialog) {
        CommonDialog.handleStartError(context, result.item1!.message);
      }
      return result.item1;
    }
    ServerManager.setDirty(false);
    SettingManager.setDirty(false);
    var err = await VPNService.start(
        VPNService.getTimeoutByOutboundCount(result.item2!, tunMode));

    setState(() {});

    if (err != null) {
      if (err.message == "willCompleteAfterReboot") {
        err.message = t.meta.willCompleteAfterRebootInstall;
      } else if (err.message == "requestNeedsUserApproval") {
        err.message = t.meta.requestNeedsUserApproval;
      } else if (err.message.contains("FullDiskAccessPermissionRequired")) {
        /*try {
          String cmd = await getChmodCmd();
          await Clipboard.setData(ClipboardData(text: cmd));
          if (!context.mounted) {
            return err;
          }
        } catch (ex) {}*/
        err.message = t.meta.FullDiskAccessPermissionRequired;
      }
      if (!disableShowAlertDialog) {
        CommonDialog.handleStartError(context, err.message);
      }
    } else {
      if (PlatformUtils.isPC()) {
        var settingConfig = SettingManager.getConfig();
        if (settingConfig.proxy.enableCluster) {
          String? error = await ProxyCluster.start();
          if (error != null) {
            if (!disableShowAlertDialog) {
              DialogUtils.showAlertDialog(context, error,
                  showCopy: true, showFAQ: true, withVersion: true);
            }
          }
        }
      }
    }
    return err;
  }

  Future<String> getChmodCmd() async {
    Directory? sharedDirectory =
        await FlutterVpnService.getAppGroupDirectory(AppUtils.getGroupId());
    String dirPath = sharedDirectory!.path.replaceAll(' ', '\\ ');
    return "chmod g+rw $dirPath";
    /*String cmd = "chmod g+rw ${AppUtils.getGroupId()}";
    String workingDirectory = sharedDirectory!.parent.path;
    final result = await Process.run('zsh', ["-c", cmd],
        workingDirectory: workingDirectory);
    //await Process.run('zsh', ["chmod", "g+rw", sharedDirectory!.path]);
    print("${result.exitCode}, ${result.stderr}, ${result.stdout}");*/
  }

  void onOutboundModeChanged(Mode mode) async {
    await setServerAndReload("outbound_mode");
  }

  void onTunChanged(bool value) async {
    await setServerAndReload("tun");
  }

  void onConnectionsInfoPressed() async {
    String connectionsUrl = await getConnectionsUrl(false);
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: NetConnectionsScreen.routSettings(),
            builder: (context) => NetConnectionsScreen(
                  connectionsUrl: connectionsUrl,
                  checkStarted: true,
                )));
    await checkAndReload("onConnectionsInfoPressed");
  }

  void onConnectionsInfoLongPress() async {
    await ClashApi.resetNetwork(
      SettingManager.getConfig().proxy.controlPort,
    );
  }

  @override
  void onProtocolUrlReceived(String url) {
    Log.i("onProtocolUrlReceived: $url");
    if (!mounted) {
      return;
    }
    if (!_onInitAllFinished) {
      _initUrl = url;
      return;
    }
    SchemeHandler.handle(context, url);
  }

  @override
  void dispose() {
    _focusNodeRoot.dispose();
    _focusNodeSwitch.dispose();
    _focusNodeEdit.dispose();

    ErrorReporterUtils.register(null);
    _stopStateCheckTimer();

    _disconnectToService();
    _disconnectToCurrent();

    protocolHandler.removeListener(this);
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    var settingConfig = SettingManager.getConfig();
    AutoUpdateCheckVersion checkVersion = AutoUpdateManager.getVersionCheck();
    List<Notice> notices = NoticeManager.getNotices();
    NoticeItem? noticeItem;
    for (var notice in notices) {
      noticeItem = notice.getFirstUnread();
      if (noticeItem != null) {
        break;
      }
    }

    bool showAds = AdsBannerWidget.getEnable();

    var themes = Provider.of<Themes>(context, listen: false);
    Color? color = theme.colorScheme.surface;
    final groupid = getCurrentGroupId();
    if (_widgetOptions.profileSubTraffic!.notifier.value != groupid) {
      _widgetOptions.profileSubTraffic!.notifier.value = groupid;
    }

    int alpha = SettingManager.getConfig().uiScreen.getWidgetAlpha();
    final columns = max(4 * (((windowSize.width - 50) / 320).ceil()), 8);
    final spacing = 10.ap;
    List<GridItem> widgets = HomeWidgets.getWidgets(_widgetOptions);
    final working = _working ||
        _state == FlutterVpnServiceState.connecting ||
        _state == FlutterVpnServiceState.disconnecting ||
        _state == FlutterVpnServiceState.reasserting;
    String stateTooltip = "";
    if (working) {
      stateTooltip = tcontext.meta.connecting;
    } else if (_state == FlutterVpnServiceState.connected) {
      stateTooltip = tcontext.meta.connected;
    } else {
      stateTooltip = tcontext.meta.disconnected;
    }
    const double convexHeight = 80;
    const double convexIconSize = 50;
    final decoration = getBackgroundDecoration();
    return Focus(
      includeSemantics: true,
      onKeyEvent: onKeyEvent,
      focusNode: _focusNodeRoot,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.zero,
          child: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              systemNavigationBarIconBrightness: decoration == null
                  ? themes.getStatusBarIconBrightness(context)
                  : Brightness
                      .light, //must be light if has decoration, or transparent does not work if light theme on android
              systemNavigationBarColor:
                  decoration == null ? color : Colors.transparent,
              systemNavigationBarDividerColor: Colors.transparent,
              statusBarColor: decoration == null ? color : Colors.transparent,
              statusBarBrightness: themes.getStatusBarBrightness(context),
              statusBarIconBrightness:
                  themes.getStatusBarIconBrightness(context),
              systemStatusBarContrastEnforced: true,
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: decoration,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      if (!_edit) ...[
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Tooltip(
                                  message: tcontext.meta.setting,
                                  child: InkWell(
                                      //autofocus: settingConfig.ui.tvMode,
                                      //focusNode: _focusNodeSettings,
                                      onTap: () async {
                                        onTapSetting();
                                      },
                                      child: Stack(
                                        children: [
                                          const SizedBox(
                                            width: 50,
                                            height: 30,
                                            child: Icon(
                                              Icons.settings_outlined,
                                              size: 26,
                                            ),
                                          ),
                                          if (checkVersion.newVersion ||
                                              noticeItem != null) ...[
                                            Positioned(
                                              left: 10,
                                              top: 0,
                                              child: Container(
                                                  width: 8,
                                                  height: 8,
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.red,
                                                    shape: BoxShape.circle,
                                                  )),
                                            )
                                          ],
                                        ],
                                      ))),
                            ])
                      ],
                      if (_edit) ...[
                        Tooltip(
                          message: tcontext.meta.add,
                          child: InkWell(
                            onTap: () async {
                              onTapAddWidget(context);
                            },
                            child: const SizedBox(
                              width: 50,
                              height: 30,
                              child: Icon(
                                Icons.add,
                                size: 26,
                              ),
                            ),
                          ),
                        ),
                        Tooltip(
                          message: tcontext.meta.import,
                          child: InkWell(
                            onTap: () async {
                              onTapWidgetImport(context);
                            },
                            child: const SizedBox(
                              width: 50,
                              height: 30,
                              child: Icon(
                                AntDesign.import_outline,
                                size: 26,
                              ),
                            ),
                          ),
                        ),
                        Tooltip(
                          message: tcontext.meta.export,
                          child: InkWell(
                            onTap: () async {
                              onTapWidgetExport(context);
                            },
                            child: const SizedBox(
                              width: 50,
                              height: 30,
                              child: Icon(
                                AntDesign.export_outline,
                                size: 26,
                              ),
                            ),
                          ),
                        )
                      ],
                      Tooltip(
                        message:
                            _edit ? tcontext.meta.save : tcontext.meta.edit,
                        child: InkWell(
                          focusNode: _focusNodeEdit,
                          onTap: () async {
                            onTapEditWidget();
                          },
                          child: SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              _edit ? Icons.done_outlined : Icons.edit_outlined,
                              size: 26,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                showAds
                    ? AdsBannerWidget(
                        fixedHeight: true,
                        adWidth: windowSize.width,
                      )
                    : SizedBox(
                        height: 20,
                      ),
                Expanded(
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        right: 0,
                        bottom: (_edit ? 0 : 60),
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                          child: Column(children: [
                            _edit
                                ? SuperGrid(
                                    key: _superGridKey,
                                    crossAxisCount: columns,
                                    crossAxisSpacing: spacing,
                                    mainAxisSpacing: spacing,
                                    onUpdate: () {},
                                    deleteOnTap: settingConfig.ui.tvMode,
                                    children: widgets,
                                  )
                                : Grid(
                                    key: _superGridKey,
                                    crossAxisCount: columns,
                                    crossAxisSpacing: spacing,
                                    mainAxisSpacing: spacing,
                                    children: widgets,
                                  ),
                            if (!_edit) ...[
                              SizedBox(
                                height: convexIconSize,
                              )
                            ]
                          ]),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Column(children: [
                          if (!_edit) ...[
                            ConvexButton2.fab2(
                              thickness: 60,
                              top: 60,
                              size: convexHeight,
                              color: _state == FlutterVpnServiceState.connected
                                  ? Colors.green
                                  : Colors.red,
                              backgroundColor: theme
                                  .colorScheme.surfaceContainerLow
                                  .withAlpha(alpha),
                              thicknessChild: ServerSelectCard(
                                server: _currentServer,
                                serverUrltest: _currentServerForUrltest,
                                onTap: (bool hasProfile) async {
                                  if (!hasProfile) {
                                    onTapAddProfileByStart();
                                  } else {
                                    await onTapServerSelect();
                                  }
                                },
                              ),
                              child: SizedBox(
                                height: convexIconSize,
                                width: convexIconSize,
                                child: Tooltip(
                                  message: stateTooltip,
                                  child: IconButton(
                                    focusNode: _focusNodeSwitch,
                                    iconSize: 32,
                                    onPressed: working
                                        ? null
                                        : () async {
                                            _working = true;
                                            bool noConfig =
                                                ServerManager.getConfig()
                                                        .getServersCount(
                                                            false) ==
                                                    0;
                                            var state =
                                                await VPNService.getState();
                                            if (noConfig) {
                                              if (state ==
                                                  FlutterVpnServiceState
                                                      .connected) {
                                                await stop();
                                              } else {
                                                await onTapShowAddProfile();
                                              }
                                            } else {
                                              await onTapToggle("switch");
                                            }
                                            _working = false;
                                            setState(() {});
                                          },
                                    icon: working
                                        ? RepaintBoundary(
                                            child: Rotation(
                                                child: Icon(
                                              CupertinoIcons.checkmark_shield,
                                              color: Colors.red,
                                            )),
                                          )
                                        : Icon(
                                            _state ==
                                                    FlutterVpnServiceState
                                                        .connected
                                                ? CupertinoIcons
                                                    .checkmark_shield
                                                : CupertinoIcons.xmark_shield,
                                            color: _state ==
                                                    FlutterVpnServiceState
                                                        .connected
                                                ? Colors.green
                                                : Colors.red,
                                          ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BoxDecoration? getBackgroundDecoration() {
    var settingConfig = SettingManager.getConfig();
    if (settingConfig.uiScreen.backgroundImageType ==
        SettingConfigItemUIScreen.backgroundTypeDisable) {
      return null;
    }
    if (settingConfig.uiScreen.backgroundImageType ==
            SettingConfigItemUIScreen.backgroundTypeLocal &&
        settingConfig.uiScreen.backgroundImageLocal.isNotEmpty) {
      return BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image:
              LocalImageProvider(settingConfig.uiScreen.backgroundImageLocal),
        ),
      );
    }
    if (settingConfig.uiScreen.backgroundImageType ==
            SettingConfigItemUIScreen.backgroundTypeRemote &&
        settingConfig.uiScreen.backgroundImageUrl.isNotEmpty) {
      return BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: CachedNetworkImageProvider(
              settingConfig.uiScreen.backgroundImageUrl),
        ),
      );
    }
    return null;
  }

  KeyEventResult onKeyEvent(FocusNode node, KeyEvent event) {
    if (event is KeyDownEvent) {
      final focus = FocusScope.of(context).focusedChild;
      if (focus == _focusNodeRoot) {
        if (_edit) {
          _focusNodeEdit.requestFocus();
        } else {
          _focusNodeSwitch.requestFocus();
        }

        return KeyEventResult.handled;
      }
    }

    return KeyEventResult.ignored;
  }

  String getCurrentGroupId() {
    String groupid = _currentServer.groupid;
    if (groupid == ServerManager.getUrltestGroupId()) {
      List<ServerConfigGroupItem> items = ServerManager.getConfig().items;

      if (_currentServerForUrltest.now.isNotEmpty) {
        String newGroupId = "";
        for (var item in items) {
          if (!item.enable) {
            continue;
          }
          for (var server in item.servers) {
            if (server.tag == _currentServerForUrltest.now) {
              newGroupId = item.groupid;
              break;
            }
          }
          if (newGroupId.isNotEmpty) {
            groupid = newGroupId;
            break;
          }
        }
      } else if (items.length == 1) {
        groupid = items[0].groupid;
      }
    }
    return groupid;
  }

  void _showNotify() {
    if (AppLifecycleStateNofity.isPaused()) {
      return;
    }
    List<Notice> notices = NoticeManager.getNotices();
    NoticeItem? noticeItem;
    for (var notice in notices) {
      noticeItem = notice.getFirstUnread();
      if (noticeItem != null) {
        break;
      }
    }
    if (noticeItem == null) {
      return;
    }

    final tcontext = Translations.of(context);
    InAppNotifications.show(
        title: tcontext.meta.notice,
        duration: const Duration(seconds: 60),
        description: noticeItem.title,
        onTap: () {
          onTapNotice(noticeItem!);
        });
  }

  void _showNotifyWith(String content) {
    if (AppLifecycleStateNofity.isPaused()) {
      return;
    }

    final tcontext = Translations.of(context);
    InAppNotifications.show(
        title: tcontext.meta.tips,
        duration: const Duration(seconds: 3),
        description: content,
        onTap: () {
          InAppNotifications.dismiss();
        });
  }
}
