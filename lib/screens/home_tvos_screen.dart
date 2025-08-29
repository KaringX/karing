// ignore_for_file: prefer_interpolation_to_compose_strings, use_build_context_synchronously, empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/utils/app_scheme_actions.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/websocket.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/home_new_screen_widgets.dart';
import 'package:karing/screens/net_connections_screen.dart';
import 'package:karing/screens/richtext_viewer.screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/grid.dart';
import 'package:karing/screens/widgets/num.dart';
import 'package:karing/screens/widgets/sheet.dart';
import 'package:karing/screens/widgets/super_grid.dart';
import 'package:path/path.dart' as path;

class HomeTVOSScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "HomeTVOSScreen");
  }

  final String host;
  final int port;
  final String cport;
  final String uuid;
  final String secret;
  final String version;
  const HomeTVOSScreen(
      {super.key,
      required this.host,
      required this.port,
      required this.cport,
      required this.uuid,
      required this.secret,
      required this.version});

  @override
  State<HomeTVOSScreen> createState() => _HomeTVOSScreenState();
}

class _HomeTVOSScreenState extends LasyRenderingState<HomeTVOSScreen>
    with WidgetsBindingObserver {
  Websocket? _websocket;
  Timer? _timer;

  final _superGridKey = GlobalKey<SuperGridState>();
  late HomeWidgetOptions _widgetOptions;

  @override
  void initState() {
    super.initState();

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
        null,
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
    );

    resetWidgetNotifier();

    _timer ??= Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (_websocket != null && _websocket!.connected()) {
        return;
      }
      _connectToService();
    });
  }

  Future<void> _connectToService() async {
    if (widget.cport.isEmpty) {
      return;
    }

    var setting = SettingManager.getConfig();
    bool started = await VPNService.getStarted();
    int? proxyPort = started ? setting.proxy.mixedDirectPort : null;
    final url = "http://${widget.host}:${widget.cport}/";
    ReturnResult<String>? result = await HttpUtils.httpGetRequest(
        url, proxyPort, null, const Duration(seconds: 3), null, null);

    if (result.error != null) {
      if (!result.error!.message.contains("401") &&
          !result.error!.message.contains("404")) {
        Log.w("connect to $url failed: ${result.error!.message}");
        return;
      }
    }
    _websocket ??= Websocket(
        url: getConnectionsUrl(true),
        userAgent: await HttpUtils.getUserAgent(),
        proxy: proxyPort != null ? "PROXY 127.0.0.1:$proxyPort" : null,
        onMessage: (String message) {
          var obj = jsonDecode(message);
          Connections con = Connections();
          con.fromJson(obj, false);
          if (AppLifecycleStateNofity.isPaused()) {
            return;
          }
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
    await _websocket?.disconnect();
    _websocket = null;

    resetWidgetNotifier();
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

  String getConnectionsUrl(bool noConnections) {
    return 'ws://${widget.host}:${widget.cport}/connections/?token=${widget.secret}&noConnections=$noConnections';
  }

  Future<void> onConnectionsInfoPressed() async {
    String connectionsUrl = getConnectionsUrl(false);
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: NetConnectionsScreen.routSettings(),
            builder: (context) => NetConnectionsScreen(
                  connectionsUrl: connectionsUrl,
                  checkStarted: false,
                )));
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;

    _disconnectToService();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;

    final columns = max(4 * (((windowSize.width - 50) / 320).ceil()), 8);
    final spacing = 16.ap;
    List<GridItem> widgets = HomeWidgets.getAppleTVWidgets(_widgetOptions);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const SizedBox(
                      width: 50,
                      height: 30,
                      child: Icon(
                        Icons.arrow_back_ios_outlined,
                        size: 26,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: windowSize.width - 50 * 4,
                    child: Text(
                      tcontext.meta.appleTV,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: ThemeConfig.kFontWeightTitle,
                          fontSize: ThemeConfig.kFontSizeTitle),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 50,
                          child: Tooltip(
                            message: tcontext.appleTVSync,
                            child: InkWell(
                              onTap: () async {
                                onTapSyncCoreConfig();
                              },
                              child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.upload_file_outlined,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: Tooltip(
                            message: tcontext.appleTVRemoveCoreConfig,
                            child: InkWell(
                              onTap: () async {
                                onTapRemoveCoreConfig();
                              },
                              child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.remove_circle_outlined,
                                        size: 26, color: Colors.red),
                                  ]),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                          child: InkWell(
                            onTap: () async {
                              onTapMore();
                            },
                            child: Tooltip(
                                message: tcontext.meta.more,
                                child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.more_vert_outlined, size: 26),
                                    ])),
                          ),
                        ),
                      ]),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16).copyWith(),
                child: Column(children: [
                  Grid(
                    key: _superGridKey,
                    crossAxisCount: columns,
                    crossAxisSpacing: spacing,
                    mainAxisSpacing: spacing,
                    children: widgets,
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> getFile(String fileName) async {
    var setting = SettingManager.getConfig();
    bool started = await VPNService.getStarted();
    int? proxyPort = started ? setting.proxy.mixedDirectPort : null;

    String url =
        "http://${widget.host}:${widget.port}/${AppSchemeActions.appleTVGetFileContentAction()}?uuid=${widget.uuid}&filename=$fileName";
    ReturnResult<String> result =
        await HttpUtils.httpGetRequest(url, proxyPort, null, null, null, null);
    if (result.error != null) {
      if (!mounted) {
        return;
      }
      if (result.error!.message.contains("404")) {
        final tcontext = Translations.of(context);
        DialogUtils.showAlertDialog(
            context, tcontext.appleTV404(p: widget.version));
      } else {
        DialogUtils.showAlertDialog(context, result.error!.message);
      }

      return;
    }

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: RichtextViewScreen.routSettings(),
            builder: (context) => RichtextViewScreen(
                  title: fileName,
                  file: fileName,
                  content: result.data!,
                  showAction: true,
                )));
  }

  Future<void> onTapSyncCoreConfig() async {
    final tcontext = Translations.of(context);
    String savePath = path.join(await PathUtils.cacheDir(), 'tvos_sync.json');
    await FileUtils.deletePath(savePath);
    VPNServiceSetServerOptions options = VPNServiceSetServerOptions();
    options.disabledServerError = tcontext.HomeScreen.disabledServer;
    options.invalidServerError = tcontext.HomeScreen.invalidServer;
    options.expiredServerError = tcontext.HomeScreen.expiredServer;
    ReturnResultError? err = await VPNService.setServer(VPNService.getCurrent(),
        options, SingboxExportType.tvos, widget.host, widget.secret, savePath);

    if (err != null) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.message,
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }
    var setting = SettingManager.getConfig();
    bool started = await VPNService.getStarted();
    int? proxyPort = started ? setting.proxy.mixedDirectPort : null;
    try {
      String content = await File(savePath).readAsString();
      var headers = {
        HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
      };
      String url =
          "http://${widget.host}:${widget.port}/${AppSchemeActions.appleTVSyncUploadAction()}?uuid=${widget.uuid}&type=json"; //type=url
      ReturnResult<String> result = await HttpUtils.httpPostRequest(
          url,
          proxyPort,
          headers,
          content,
          const Duration(seconds: 5),
          null,
          null,
          null);

      if (!mounted) {
        return;
      }
      if (result.error != null) {
        DialogUtils.showAlertDialog(context, result.error!.message,
            showCopy: true, showFAQ: true, withVersion: true);
      } else {
        if (result.data!.isNotEmpty) {
          DialogUtils.showAlertDialog(context, result.data!);
        } else {
          DialogUtils.showAlertDialog(context, tcontext.appleTVSyncDone);
        }
      }
    } catch (err) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  Future<void> onTapRemoveCoreConfig() async {
    final tcontext = Translations.of(context);
    bool? del = await DialogUtils.showConfirmDialog(
        context, tcontext.meta.removeConfirm);
    if (del != true) {
      return;
    }
    if (!mounted) {
      return;
    }

    var setting = SettingManager.getConfig();
    bool started = await VPNService.getStarted();
    int? proxyPort = started ? setting.proxy.mixedDirectPort : null;
    try {
      String url =
          "http://${widget.host}:${widget.port}/${AppSchemeActions.appleTVDeleteCoreConfigAction()}?uuid=${widget.uuid}";
      ReturnResult<String> result = await HttpUtils.httpGetRequest(
          url, proxyPort, null, const Duration(seconds: 5), null, null);

      if (!mounted) {
        return;
      }
      if (result.error != null) {
        DialogUtils.showAlertDialog(context, result.error!.message,
            showCopy: true, showFAQ: true, withVersion: true);
      } else {
        if (result.data!.isNotEmpty) {
          DialogUtils.showAlertDialog(context, result.data!);
        } else {
          DialogUtils.showAlertDialog(
              context, tcontext.appleTVRemoveCoreConfigDone);
        }
      }
    } catch (err) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  void onTapMore() {
    List<Widget> widgets = [
      ListTile(
        title: Text(PathUtils.serviceCoreConfigFileName()),
        leading: Icon(
          Icons.download,
        ),
        onTap: () async {
          Navigator.pop(context);
          await getFile(PathUtils.serviceCoreConfigFileName());
        },
      ),
      ListTile(
        title: Text(
          PathUtils.serviceLogFileName(),
        ),
        leading: Icon(
          Icons.download,
        ),
        onTap: () async {
          Navigator.pop(context);
          await getFile(PathUtils.serviceLogFileName());
        },
      ),
      ListTile(
        title: Text(
          PathUtils.serviceStdErrorFileName(),
        ),
        leading: Icon(
          Icons.download,
        ),
        onTap: () async {
          Navigator.pop(context);
          await getFile(PathUtils.serviceStdErrorFileName());
        },
      ),
    ];

    showSheetWidgets(context: context, widgets: widgets);
  }
}
