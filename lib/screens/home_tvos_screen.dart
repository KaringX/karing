// ignore_for_file: prefer_interpolation_to_compose_strings, use_build_context_synchronously, empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_scheme_actions.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/websocket.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/net_connections_screen.dart';
import 'package:karing/screens/richtext_viewer.screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/themes.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';

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
  static const double kMaxWidth = 500;

  Websocket? _websocket;
  Timer? _timer;
  final ValueNotifier<String> _trafficUpTotal = ValueNotifier<String>("0 B");
  final ValueNotifier<String> _trafficDownTotal = ValueNotifier<String>("0 B");
  final ValueNotifier<String> _trafficUpTotalProxy =
      ValueNotifier<String>("0 B");
  final ValueNotifier<String> _trafficDownTotalProxy =
      ValueNotifier<String>("0 B");
  final ValueNotifier<String> _trafficUpSpeed = ValueNotifier<String>("0 B/s");
  final ValueNotifier<String> _trafficDownSpeed =
      ValueNotifier<String>("0 B/s");
  final ValueNotifier<String> _startDuration = ValueNotifier<String>("0:00:00");
  final ValueNotifier<String> _memory = ValueNotifier<String>("0 B");
  final ValueNotifier<String> _connInboundCount = ValueNotifier<String>("");

  String _trafficUpTotalNotify = "0 B";
  String _trafficDownTotalNotify = "0 B";
  String _trafficUpTotalProxyNotify = "0 B";
  String _trafficDownTotalProxyNotify = "0 B";
  String _trafficUpSpeedNotify = "0 B/s";
  String _trafficDownSpeedNotify = "0 B/s";
  String _startDurationNotify = "0 B/s";

  /*bool _isStarting = false;
  bool _isStarted = false;
  bool _isStoping = false;*/
  @override
  void initState() {
    super.initState();
    _timer ??= Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (_websocket != null && _websocket!.connected()) {
        return;
      }
      _connectToService();
    });
  }

  Future<bool> futureBool(bool value) async {
    return value;
  }

  Future<void> _connectToService() async {
    if (widget.cport.isEmpty) {
      return;
    }

    var setting = SettingManager.getConfig();
    bool started = await VPNService.getStarted();
    int? proxyPort = started ? setting.proxy.mixedDirectPort : null;

    ReturnResult<String>? result = await HttpUtils.httpGetRequest(
        "http://${widget.host}:${widget.cport}/",
        proxyPort,
        null,
        const Duration(milliseconds: 500),
        null,
        null);

    if (result.error != null) {
      if (!result.error!.message.contains("401") &&
          !result.error!.message.contains("404")) {
        return;
      }
    }
    _websocket ??= Websocket(
        url: getConnectionsUrl(true),
        userAgent: await HttpUtils.getUserAgent(),
        onMessage: (String message) {
          var obj = jsonDecode(message);
          Connections con = Connections();
          con.fromJson(obj, false);
          if (con.startTime != null) {
            _startDurationNotify = DateTime.now()
                .difference(con.startTime!)
                .toString()
                .split(".")[0];
            if (!AppLifecycleStateNofity.isPaused()) {
              _startDuration.value = _startDurationNotify;
            }
          }
          _trafficUpTotalNotify =
              ProxyConfUtils.convertTrafficToStringDouble(con.uploadTotal);
          _trafficDownTotalNotify =
              ProxyConfUtils.convertTrafficToStringDouble(con.downloadTotal);
          _trafficUpTotalProxyNotify =
              ProxyConfUtils.convertTrafficToStringDouble(
                  con.uploadTotal - con.uploadTotalDirect);
          _trafficDownTotalProxyNotify =
              ProxyConfUtils.convertTrafficToStringDouble(
                  con.downloadTotal - con.downloadTotalDirect);
          _trafficUpSpeedNotify =
              ProxyConfUtils.convertTrafficToStringDouble(con.uploadSpeed) +
                  "/s";
          _trafficDownSpeedNotify =
              ProxyConfUtils.convertTrafficToStringDouble(con.downloadSpeed) +
                  "/s";

          if (!AppLifecycleStateNofity.isPaused()) {
            _trafficUpTotal.value = _trafficUpTotalNotify;
            _trafficDownTotal.value = _trafficDownTotalNotify;

            _trafficUpTotalProxy.value = _trafficUpTotalProxyNotify;
            _trafficDownTotalProxy.value = _trafficDownTotalProxyNotify;

            _trafficUpSpeed.value = _trafficUpSpeedNotify;
            _trafficDownSpeed.value = _trafficDownSpeedNotify;

            _memory.value =
                ProxyConfUtils.convertTrafficToStringDouble(con.memory);

            if (SettingManager.getConfig().dev.devMode) {
              _connInboundCount.value =
                  "${con.connectionsInCount}/${con.connectionsOutCount}/${con.goroutines}/${con.threadCount}";
            } else {
              _connInboundCount.value = con.connectionsInCount.toString();
            }
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

    _connInboundCount.value = "";

    _memory.value = "0 B";

    _startDurationNotify = "0:00:00";
    _trafficUpTotalNotify = "0 B";
    _trafficDownTotalNotify = "0 B";
    _trafficUpTotalProxyNotify = "0 B";
    _trafficDownTotalProxyNotify = "0 B";

    _trafficUpSpeedNotify = "0 B/s";
    _trafficDownSpeedNotify = "0 B/s";

    _startDuration.value = _startDurationNotify;
    _trafficUpTotal.value = _trafficUpTotalNotify;
    _trafficDownTotal.value = _trafficDownTotalNotify;
    _trafficUpTotalProxy.value = _trafficUpTotalProxyNotify;
    _trafficDownTotalProxy.value = _trafficDownTotalProxyNotify;
    _trafficUpSpeed.value = _trafficUpSpeedNotify;
    _trafficDownSpeed.value = _trafficDownSpeedNotify;
  }

  void onTapToggleStart() async {
    setState(() {});
  }

  String getConnectionsUrl(bool noConnections) {
    return 'ws://${widget.host}:${widget.cport}/connections/?token=${widget.secret}&noConnections=$noConnections';
  }

  Future<void> onTapNetConnections() async {
    String connectionsUrl = getConnectionsUrl(false);
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: NetConnectionsScreen.routSettings(),
            builder: (context) =>
                NetConnectionsScreen(connectionsUrl: connectionsUrl)));
  }

  Future<void> onTapToggle() async {}

  Future<void> stop() async {}

  Future<ReturnResultError?> start() async {
    return null;
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    ErrorReporterUtils.register(null);

    _disconnectToService();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    var themes = Provider.of<Themes>(context, listen: false);
    Color? color = themes.getThemeHomeColor(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(
          backgroundColor: color,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: color,
          ),
        ),
      ),
      backgroundColor: color,
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
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),

                  /*Container(
                            alignment: Alignment.center,
                            child: Stack(children: [
                              SizedBox(
                                width: 180,
                                child: FittedBox(
                                  fit: BoxFit.fill,
                                  child: Switch.adaptive(
                                    value: _isStarted,
                                    activeColor: ThemeDefine.kColorGreenBright,
                                    thumbColor:
                                        WidgetStateProperty.resolveWith<Color>(
                                            (Set<WidgetState> states) {
                                      return Colors.orange;
                                    }),
                                    inactiveTrackColor:
                                        Colors.greywithValues(alpha: 0.5),
                                    onChanged: (bool newValue) async {
                                      if (!_isStarting && !_isStoping) {
                                        onTapToggle();
                                      }
                                    },
                                  ),
                                ),
                              ),
                              SizedBox(
                                  width: 150,
                                  height: 150,
                                  child: _isStarting || _isStoping
                                      ? Container(
                                          alignment: const Alignment(-0.25, 0),
                                          child: const RepaintBoundary(
                                              child: CircularProgressIndicator(
                                                  color: ThemeDefine
                                                      .kColorGreenBright)),
                                        )
                                      : null),
                            ]),
                          ),*/
                  Column(
                    children: [
                      createNetStatusChart(context),
                    ],
                  ),
                ],
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

  Widget createNetStatusChart(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    double width = windowSize.width <= kMaxWidth ? windowSize.width : kMaxWidth;
    double itemWidth = (width - 30) / 3;
    Color? color =
        Provider.of<Themes>(context, listen: false).getThemeIconColor(context);
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        //memory_outlined
        SizedBox(
            width: itemWidth,
            child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Icon(
                Icons.memory_outlined,
                size: 26,
                color: color,
              ),
              const SizedBox(width: 3),
              ValueListenableBuilder<String>(
                builder: _buildWithMemoryValue,
                valueListenable: _memory,
              ),
            ])),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
            width: itemWidth,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.access_time_outlined,
                size: 20,
                color: color,
              ),
              const SizedBox(width: 3),
              ValueListenableBuilder<String>(
                builder: _buildWithTimeValue,
                valueListenable: _startDuration,
              ),
            ])),
        const SizedBox(
          width: 10,
        ),
        SizedBox(
            width: itemWidth,
            child: Tooltip(
                message: tcontext.NetConnectionsScreen.title,
                child: InkWell(
                    onTap: () async {
                      await onTapNetConnections();
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.monitor_outlined,
                              color: ThemeDefine.kColorGreenBright, size: 26),
                          const SizedBox(width: 3),
                          ValueListenableBuilder<String>(
                            builder: _buildWithConnnectionCountValue,
                            valueListenable: _connInboundCount,
                          ),
                        ])))),
      ]),
      const SizedBox(
        height: 5,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: itemWidth,
              child: Text(
                textAlign: TextAlign.center,
                tcontext.meta.trafficTotal,
                style: const TextStyle(
                  fontSize: ThemeConfig.kFontSizeListSubItem,
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.upload,
                  size: 15,
                  color: color,
                ),
                ValueListenableBuilder<String>(
                  builder: _buildWithTrafficValue,
                  valueListenable: _trafficUpTotal,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.download,
                  size: 15,
                  color: color,
                ),
                ValueListenableBuilder<String>(
                  builder: _buildWithTrafficValue,
                  valueListenable: _trafficDownTotal,
                ),
              ],
            ),
          ]),
          const SizedBox(
            width: 10,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: itemWidth,
              child: Text(
                textAlign: TextAlign.center,
                tcontext.meta.trafficProxy,
                style: const TextStyle(
                  fontSize: ThemeConfig.kFontSizeListSubItem,
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.upload,
                  size: 15,
                  color: color,
                ),
                ValueListenableBuilder<String>(
                  builder: _buildWithTrafficValue,
                  valueListenable: _trafficUpTotalProxy,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.download,
                  size: 15,
                  color: color,
                ),
                ValueListenableBuilder<String>(
                  builder: _buildWithTrafficValue,
                  valueListenable: _trafficDownTotalProxy,
                ),
              ],
            ),
          ]),
          const SizedBox(
            width: 10,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              width: itemWidth,
              child: Text(
                textAlign: TextAlign.center,
                tcontext.meta.netSpeed,
                style: const TextStyle(
                  fontSize: ThemeConfig.kFontSizeListSubItem,
                ),
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.upload,
                  size: 15,
                  color: color,
                ),
                ValueListenableBuilder<String>(
                  builder: _buildWithTrafficValue,
                  valueListenable: _trafficUpSpeed,
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.download,
                  size: 15,
                  color: color,
                ),
                ValueListenableBuilder<String>(
                  builder: _buildWithTrafficValue,
                  valueListenable: _trafficDownSpeed,
                ),
              ],
            ),
          ]),
        ],
      )
    ]);
  }

  Widget _buildWithMemoryValue(
      BuildContext context, String value, Widget? child) {
    return SizedBox(
      child: Text(
        value,
        style: const TextStyle(fontSize: ThemeConfig.kFontSizeListSubItem),
      ),
    );
  }

  Widget _buildWithConnnectionCountValue(
      BuildContext context, String value, Widget? child) {
    return Text(
      value,
      style: const TextStyle(fontSize: ThemeConfig.kFontSizeListSubItem),
    );
  }

  Widget _buildWithTrafficValue(
      BuildContext context, String value, Widget? child) {
    return SizedBox(
      child: Text(
        value,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: ThemeConfig.kFontSizeListSubItem),
      ),
    );
  }

  Widget _buildWithTimeValue(
      BuildContext context, String value, Widget? child) {
    return SizedBox(
      child: Text(
        value,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: ThemeConfig.kFontSizeListItem),
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
                title: fileName, file: "", content: result.data!)));
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
    showMenu(
        context: context,
        position: const RelativeRect.fromLTRB(0.1, 0, 0, 0),
        items: [
          PopupMenuItem(
            value: 1,
            child: Text(PathUtils.serviceCoreConfigFileName()),
            onTap: () async {
              return await getFile(PathUtils.serviceCoreConfigFileName());
            },
          ),
          PopupMenuItem(
              value: 1,
              child: Text(PathUtils.serviceLogFileName()),
              onTap: () async {
                await getFile(PathUtils.serviceLogFileName());
              }),
          PopupMenuItem(
              value: 1,
              child: Text(PathUtils.serviceStdErrorFileName()),
              onTap: () async {
                await getFile(PathUtils.serviceStdErrorFileName());
              }),
        ]);
  }
}
