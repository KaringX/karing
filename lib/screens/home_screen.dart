// ignore_for_file: prefer_interpolation_to_compose_strings, use_build_context_synchronously, empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inapp_notifications/flutter_inapp_notifications.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/app_lifecycle_state_notify_manager.dart';
//import 'package:animated_toggle_switch/animated_toggle_switch.dart';

import 'package:karing/app/modules/auto_update_manager.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/notice_manager.dart';
import 'package:karing/app/modules/proxy_cluster.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/private/ads_banner_widget_private.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/app_scheme_utils.dart';
import 'package:karing/app/utils/backup_and_sync_utils.dart';
import 'package:karing/app/utils/clash_api.dart';
import 'package:karing/app/utils/diversion_custom_utils.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';

import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/karing_url_utils.dart';
import 'package:karing/app/utils/local_notifications_utils.dart';
import 'package:karing/app/utils/local_storeage.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/main_channel_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/system_scheme_utils.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/add_profile_by_link_or_content_screen.dart';
import 'package:karing/screens/common_dialog.dart';
import 'package:karing/screens/common_widget.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/diversion_rules_custom_set_screen.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/language_settings_screen.dart';
import 'package:karing/screens/my_profiles_screen.dart';
import 'package:karing/screens/net_check_screen.dart';
import 'package:karing/screens/net_connections_screen.dart';
import 'package:karing/screens/novice_screen.dart';
import 'package:karing/screens/region_settings_screen.dart';
import 'package:karing/screens/richtext_viewer.screen.dart';
import 'package:karing/screens/server_select_screen.dart';
import 'package:karing/screens/settings_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_data_blue.dart';
import 'package:karing/screens/theme_data_dark.dart';
import 'package:karing/screens/theme_data_light.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/themes.dart';
import 'package:karing/screens/user_agreement_screen.dart';
import 'package:karing/screens/version_update_screen.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:move_to_background/move_to_background.dart';
import 'package:path/path.dart' as path;
import 'package:protocol_handler/protocol_handler.dart';
import 'package:provider/provider.dart';
import 'package:vpn_service/state.dart';
import 'package:web_socket_channel/io.dart';

class Header {
  String tooltip = "";
  IconData? iconData;
  VoidCallback? onTap;
  Header(this.tooltip, this.iconData, this.onTap);
}

class HomeScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "/");
  }

  final String launchUrl;
  const HomeScreen({super.key, required this.launchUrl});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends LasyRenderingState<HomeScreen>
    with WidgetsBindingObserver, ProtocolListener {
  static const double kMaxWidth = 500;
  static const int kLocalNotificationsIdVpnStateId = 1;
  static const int kLocalNotificationsIdNetStateId = 2;

  static const String kLocalNotificationsIdNetState = "netState";
  static const String kLocalNotificationsIdVpnState = "vpnState";
  final FocusNode _focusNodeSettings = FocusNode();
  final FocusNode _focusNodeSwitch = FocusNode();
  final FocusNode _focusNodeSelect = FocusNode();
  HttpClient? _httpClient;
  StreamSubscription<dynamic>? _subscriptions;
  bool _wsConnecting = false;

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

  Function(List<Tracker>)? _trackerCallback;

  bool _isStarting = false;
  bool _isStarted = false;
  bool _isStoping = false;
  bool _isSystemProxySet = false;

  bool _canConnect = false;
  Timer? _timer;
  Timer? _wstimer;
  CurrentServerForSelector _currentServerForSelector =
      CurrentServerForSelector();

  ProxyConfig _currentServer = ProxyConfig();
  bool _inAppNotificationsShowing = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
    protocolHandler.addListener(this);

    _init();
    Biz.initHomeFinish();
    ErrorReporterUtils.register(() {
      if (!mounted) {
        return;
      }
      final tcontext = Translations.of(context);
      DialogUtils.showAlertDialog(context, tcontext.HomeScreen.deviceNoSpace,
          showCopy: true, showFAQ: true, withVersion: true);
    });

    Future.delayed(const Duration(seconds: 0), () async {
      showAgreement();
    });

    LocalNotifications.init();
  }

  Future<bool> futureBool(bool value) async {
    return value;
  }

  void showAgreement() async {
    const String idKey = 'userAgreementAgreedKey';
    String? value;
    try {
      value = await LocalStorage.read(idKey);
    } catch (e) {
      DialogUtils.showAlertDialog(context, e.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }

    if (value == null) {
      var tcontext = Translations.of(context);
      await Navigator.push(
          context,
          MaterialPageRoute(
              settings: UserAgreementScreen.routSettings(),
              fullscreenDialog: true,
              builder: (context) => const UserAgreementScreen()));

      await Navigator.push(
          context,
          MaterialPageRoute(
              settings: LanguageSettingsScreen.routSettings(),
              fullscreenDialog: true,
              builder: (context) => LanguageSettingsScreen(
                    canGoBack: false,
                    nextText: tcontext.next,
                  )));
      tcontext = Translations.of(context);

      await Navigator.push(
          context,
          MaterialPageRoute(
              settings: RegionSettingsScreen.routSettings(),
              fullscreenDialog: true,
              builder: (context) => RegionSettingsScreen(
                    canGoBack: false,
                    nextText: tcontext.next,
                  )));

      var settingConfig = SettingManager.getConfig();
      var regionCode = settingConfig.regionCode.toLowerCase();

      DiversionCustomRules rules =
          (await DiversionCustomRulesPreset.getPreset(regionCode)) ??
              DiversionCustomRules();

      await Navigator.push(
          context,
          MaterialPageRoute(
              settings: DiversionRulesCustomSetScreen.routSettings(),
              fullscreenDialog: true,
              builder: (context) => DiversionRulesCustomSetScreen(
                    title: tcontext.diversionCustomGroupPreset,
                    canGoBack: false,
                    nextText: tcontext.next,
                    nextIcon: null,
                    rules: rules,
                  )));

      await Navigator.push(
          context,
          MaterialPageRoute(
              settings: NoviceScreen.routSettings(),
              fullscreenDialog: true,
              builder: (context) => const NoviceScreen()));

      LocalStorage.write(idKey, "true");
      bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
      if (noConfig) {
        onTapAddProfileByAgreement();
      }
    } else {
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
    }
  }

  void checkError(String from) async {
    String errorPath = await PathUtils.serviceStdErrorFilePath();
    String? content = await FileUtils.readAndDelete(errorPath);
    if (content != null && content.isNotEmpty) {
      AnalyticsUtils.logEvent(
          analyticsEventType: analyticsEventTypeApp,
          name: 'HSS_checkError',
          parameters: {
            "err": content,
            "from": from,
            "currentSelectorTag": _currentServerForSelector.now,
          });

      String msg = content.replaceAll("sing-box", "");

      await DialogUtils.showAlertDialog(context, msg,
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  void updateTile() {
    //MainChannel.call("tile.update", {"started": _isStarting || _isStarted});
  }

  void _connectToCurrent() async {
    if (_currentServer.groupid != ServerManager.getUrltestGroupId()) {
      return;
    }

    bool started = await VPNService.started();
    if (!started) {
      String now = _currentServerForSelector.now;
      int delay = _currentServerForSelector.history.delay;
      _currentServerForSelector.clear();
      if (_currentServerForSelector.now != now ||
          _currentServerForSelector.history.delay != delay) {
        setState(() {});
      }
      return;
    }
    if (_wstimer != null) {
      return;
    }
    //Log.w("_connectToCurrent");
    _wstimer ??= Timer.periodic(const Duration(seconds: 5), (timer) async {
      bool started = await VPNService.started();
      if (!started) {
        if (_currentServerForSelector.now.isNotEmpty ||
            _currentServerForSelector.history.delay != 0) {
          _currentServerForSelector.clear();
          setState(() {});
        }

        return;
      }
      ReturnResult<CurrentServerForSelector> result =
          await ClashApi.getCurrentServerForUrltest(
              ServerManager.getUrltestTagForCustom(_currentServer.tag),
              SettingManager.getConfig().proxy.controlPort);
      String now = _currentServerForSelector.now;
      int delay = _currentServerForSelector.history.delay;
      if (result.error != null) {
        _currentServerForSelector.clear();
      } else {
        _currentServerForSelector = result.data!;
        _currentServer.latency = _currentServerForSelector.history.delay > 0
            ? _currentServerForSelector.history.delay.toString()
            : _currentServerForSelector.history.error;

        ProxyConfig? proxy =
            ServerManager.getConfig().getByTag(_currentServerForSelector.now);
        if (proxy != null) {
          proxy.latency = _currentServer.latency;
        }
        if (_currentServer.groupid == ServerManager.getUrltestGroupId() &&
            _currentServer.tag == kOutboundTagUrltest) {
          if (ServerManager.getUse().selectDefault !=
              _currentServerForSelector.now) {
            ServerManager.getUse().selectDefault =
                _currentServerForSelector.now;
            ServerManager.saveUse();
          }
        }
      }
      if (_currentServerForSelector.now != now ||
          _currentServerForSelector.history.delay != delay) {
        Future.delayed(const Duration(seconds: 1), () async {
          ServerManager.updateLatencyByHistory();
        });
        setState(() {});
      }
    });
  }

  void _disconnectToCurrent() {
    //Log.w("_disconnectToCurrent");
    if (!_isStarted) {
      _currentServerForSelector.clear();
    }

    _wstimer?.cancel();
    _wstimer = null;
  }

  Future<void> _connectToService() async {
    bool started = await VPNService.started();
    if (!started) {
      return;
    }
    if (_httpClient != null) {
      return;
    }
    if (_wsConnecting) {
      return;
    }
    //Log.w("_connectToService");
    _wsConnecting = true;
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);
    String connectionsUrl = await ClashApi.getConnectionsUrl(
        SettingManager.getConfig().proxy.controlPort);

    try {
      _subscriptions?.cancel();
      _httpClient?.close(force: true);
      _httpClient ??= HttpClient();
      _httpClient!.userAgent = await HttpUtils.getUserAgent();
      _httpClient!.connectionTimeout = const Duration(seconds: 3);
      _httpClient!.findProxy = (Uri uri) => "DIRECT";

      {
        WebSocket webSocket = await WebSocket.connect(connectionsUrl,
            headers: headers, customClient: _httpClient);

        _subscriptions = IOWebSocketChannel(webSocket).stream.listen((message) {
          var obj = jsonDecode(message);
          Connection con = Connection();
          con.fromJson(obj);
          if (con.startTime != null) {
            _startDurationNotify = DateTime.now()
                .difference(con.startTime!)
                .toString()
                .split(".")[0];
            if (!AppLifecycleStateNofityManager.isPaused()) {
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

          if (!AppLifecycleStateNofityManager.isPaused()) {
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
                  "${con.connectionsIn}/${con.connectionsOut}/${con.goroutines}/${con.threadCount}";
            } else {
              _connInboundCount.value = con.connectionsIn.toString();
            }
          }

          if (_trackerCallback != null) {
            _trackerCallback!(con.connections);
          }
          _updateNetStateLocalNotifications();
        }, onDone: () {
          _disconnectToService();
        }, onError: (error) {});
      }
    } catch (err) {
      Log.w("_connectToService exception ${err.toString()}");
      _disconnectToService();
    }
    _wsConnecting = false;
  }

  Future<void> _disconnectToService() async {
    _removeNetStateLocalNotifications();
    //Log.w("_disconnectToService");
    if (_trackerCallback != null) {
      return;
    }

    _subscriptions?.cancel();
    _subscriptions = null;
    _httpClient?.close();
    _httpClient = null;

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
        if (dur < const Duration(hours: 8)) {
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
    setting.dns.clientSubnet = result.data!.trim();
    SettingManager.saveConfig();
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
    Biz.onInitFinish(() async {
      DialogUtils.faqCallback = () async {
        var remoteConfig = RemoteConfigManager.getConfig();
        String queryParams = await KaringUrlUtils.getQueryParams();
        return UrlLauncherUtils.reorganizationUrl(
                remoteConfig.faq, queryParams) ??
            remoteConfig.faq;
      };

      checkError("onInitFinish");

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
          _currentServerForSelector.clear();
        } else {
          if (ServerManager.getConfig().getServersCount(false) > 0) {
            _currentServer = ServerManager.getUrltest();
            VPNService.setCurrent(_currentServer);
            _currentServerForSelector.clear();
            ServerManager.addRecent(_currentServer);
            ServerManager.saveUse();
          }
        }
      }
      _isStarted = await VPNService.started();
      Biz.vpnStateChanged(_isStarted);
      _canConnect = _isStarted;
      if (_canConnect) {
        _connectToCurrent();
        _connectToService();
        _updateWanIP();
      }

      const Duration duration = Duration(seconds: 1);
      _timer ??= Timer.periodic(duration, (timer) async {
        if (!_isStarting && !_isStoping) {
          bool started = await VPNService.started();
          if (started != _isStarted) {
            _isStarted = started;
            Biz.vpnStateChanged(_isStarted);
            setState(() {});
          }
          if (!_isStarted) {
            _canConnect = false;
          }
          updateTile();

          if (_canConnect) {
            _connectToCurrent();
            _connectToService();
          } else {
            _disconnectToCurrent();
            _disconnectToService();
          }
        }
        if (PlatformUtils.isPC()) {
          bool systemProxyset = await VPNService.getSystemProxy();
          if (systemProxyset != _isSystemProxySet) {
            _isSystemProxySet = systemProxyset;
            setState(() {});
          }
        }
      });

      if (PlatformUtils.isPC()) {
        if (SettingManager.getConfig().autoConnectAfterLaunch) {
          Future.delayed(const Duration(milliseconds: 500), () async {
            await start("launch");
          });
        }
      } else if (Platform.isAndroid) {
        String? command = await MainChannel.call("getCommand", {});
        if (command == "connect") {
          ReturnResultError? err = await start("launch");
          if (err == null) {
            MoveToBackground.moveTaskToBack();
          }
        }
      }
      if (widget.launchUrl.isNotEmpty) {
        onProtocolUrlReceived(widget.launchUrl);
      }
      setState(() {});
    });
    Biz.onRequestStartVPN((String from) async {
      return await start(from, disableShowAlertDialog: true);
    });
    VPNService.onStateChanged(
        (FlutterVpnServiceStateChangeReason reason, int code) async {
      if (!_isStarting && !_isStoping) {
        if (reason == FlutterVpnServiceStateChangeReason.start) {
          _updateVpnStateLocalNotifications("start");
          if (_canConnect) {
            _connectToCurrent();
            _connectToService();
            _updateWanIP();
          }
        } else if (reason == FlutterVpnServiceStateChangeReason.restart) {
          _updateVpnStateLocalNotifications("restart");
          _disconnectToCurrent();
          _disconnectToService();

          if (_canConnect) {
            _connectToCurrent();
            _connectToService();
            _updateWanIP();
          }
        } else if (reason == FlutterVpnServiceStateChangeReason.stop ||
            reason == FlutterVpnServiceStateChangeReason.processexit) {
          _updateVpnStateLocalNotifications("stop");
          _disconnectToCurrent();
          _disconnectToService();

          checkError("onStateChanged");
        } else if (reason == FlutterVpnServiceStateChangeReason.syncstate) {
          return;
        }
        updateTile();
      }

      if (reason == FlutterVpnServiceStateChangeReason.processexit &&
          code != 0) {
        AnalyticsUtils.logEvent(
            analyticsEventType: analyticsEventTypeApp,
            name: 'HSS_serviceQuit',
            parameters: {
              "code": code,
              "currentSelectorTag": _currentServerForSelector.now,
            });
      }
    });
    ServerManager.onAddConfig((ServerConfigGroupItem item) async {
      if (_currentServer.groupid.isEmpty) {
        _currentServer = ServerManager.getUrltest();
        VPNService.setCurrent(_currentServer);

        ServerManager.addRecent(_currentServer);
        ServerManager.saveUse();
      }
      await setServerAndReload("onAddConfig");
    });
    ServerManager.onUpdateConfig((List<ServerConfigGroupItem> groups) async {
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

      await setServerAndReload("onUpdateConfig");
    });
    ServerManager.onLatencyUpdateConfig(
        (Set<ServerConfigGroupItem> groups) async {
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

      await setServerAndReload("onLatencyUpdateConfig");
    });
    /*ServerManager.onRemoveConfig(
        (String groupid, bool enable, bool hasDeviersionGroup) async {
      if (!enable) {
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
      await setServerAndReload("onRemoveConfig");
    });*/
    ServerManager.onEnableConfig((String groupid, bool enable) async {
      bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
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
      await setServerAndReload("onEnableConfig");
    });
    ServerManager.onRemoteTrafficReload((String groupid) {
      setState(() {});
    }, (String groupid) {
      setState(() {});
    });
    ServerManager.onReloadFromZipConfigs(() async {
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
    });

    ServerManager.onTestLatency(hashCode,
        (String groupid, String tag, bool start, bool finish) async {
      if (!mounted) {
        return;
      }

      if ((groupid == _currentServer.groupid && tag == _currentServer.tag) ||
          (tag == _currentServerForSelector.now)) {
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
            ReturnResult<CurrentServerForSelector> result =
                await ClashApi.getCurrentServerForUrltest(
                    ServerManager.getUrltestTagForCustom(_currentServer.tag),
                    SettingManager.getConfig().proxy.controlPort);

            if (result.error != null) {
              _currentServerForSelector.clear();
            } else {
              _currentServerForSelector = result.data!;
              _currentServer.latency =
                  _currentServerForSelector.history.delay > 0
                      ? _currentServerForSelector.history.delay.toString()
                      : _currentServerForSelector.history.error;

              ProxyConfig? proxy = ServerManager.getConfig()
                  .getByTag(_currentServerForSelector.now);
              if (proxy != null) {
                proxy.latency = _currentServer.latency;
              }
              if (_currentServer.groupid == ServerManager.getUrltestGroupId() &&
                  _currentServer.tag == kOutboundTagUrltest) {
                if (ServerManager.getUse().selectDefault !=
                    _currentServerForSelector.now) {
                  ServerManager.getUse().selectDefault =
                      _currentServerForSelector.now;
                  ServerManager.saveUse();
                }
              }
            }
          }
        }
      }
    });

    NoticeManager.onCheck(() {
      setState(() {});
    });
    AutoUpdateManager.onCheck(() {
      setState(() {});
    });

    AppLifecycleStateNofityManager.onStateResumed(hashCode, () async {
      if (!_isStarting && !_isStoping) {
        bool started = await VPNService.started();
        if (started != _isStarted) {
          _isStarted = started;
          Biz.vpnStateChanged(_isStarted);
          setState(() {});
        }
        _canConnect = _isStarted;
      }
      _showNotify();
    });

    AppLifecycleStateNofityManager.onStatePaused(hashCode, () async {
      if (!_isStarting) {
        _canConnect = false;
      }
    });

    if (Platform.isWindows) {
      bool reg =
          SystemSchemeUtils.isRegistered(SystemSchemeUtils.getClashScheme());
      if (!reg) {
        SystemSchemeUtils.register(SystemSchemeUtils.getClashScheme());
      }
    }
  }

  Future<ReturnResultError?> setServer() async {
    final tcontext = Translations.of(context);
    String savePath = await PathUtils.serviceCoreConfigFilePath();
    VPNServiceSetServerOptions options = VPNServiceSetServerOptions();
    options.disabledServerError = tcontext.HomeScreen.disabledServer;
    options.invalidServerError = tcontext.HomeScreen.invalidServer;
    options.expiredServerError = tcontext.HomeScreen.expiredServer;
    ReturnResultError? err = await VPNService.setServer(
        _currentServer, options, SingboxExportType.karing, null, "", savePath);
    if (err != null) {
      return err;
    }
    if (Platform.isIOS) {
      const int maxCount = 1500;
      if (options.allOutboundsTags.length > maxCount) {
        InAppNotifications.show(
            title: tcontext.tips,
            duration: const Duration(seconds: 3),
            leading: const Icon(
              Icons.warning,
              color: Colors.yellow,
              size: 50,
            ),
            description: tcontext.HomeScreen.tooMuchServers(
                p: options.allOutboundsTags.length, p1: maxCount),
            onTap: () {
              InAppNotifications.dismiss();
            });
      }
    }

    return null;
  }

  Future<void> setServerAndReload(String from) async {
    bool run = await VPNService.running();
    if (!run) {
      return;
    }
    await ProxyCluster.stop();
    _disconnectToCurrent();
    _disconnectToService();
    _currentServerForSelector.clear();
    _isStarting = true;
    _isStarted = false;
    _canConnect = _isStarted;
    setState(() {});
    ReturnResultError? err = await setServer();
    if (err == null) {
      err = await VPNService.reload();
      _isStarting = false;
      _isStarted = err == null;
      _canConnect = _isStarted;
      setState(() {});
      if (err != null) {
        AnalyticsUtils.logEvent(
            analyticsEventType: analyticsEventTypeApp,
            name: 'HSS_reload',
            parameters: {
              "err": err.message,
              "from": from,
              "tunMode": await VPNService.getTunMode(),
              "currentSelectorTag": _currentServerForSelector.now,
            });
        CommonDialog.handleStartError(context, err.message);
      }
      if (PlatformUtils.isPC()) {
        var settingConfig = SettingManager.getConfig();
        if (settingConfig.proxy.enableCluster) {
          String? error = await ProxyCluster.start();
          if (error != null) {
            DialogUtils.showAlertDialog(context, error,
                showCopy: true, showFAQ: true, withVersion: true);
          }
        }
      }
    } else {
      _isStarting = false;
      _isStarted = false;
      _canConnect = _isStarted;
      _isStoping = true;
      setState(() {});
      await VPNService.stop();
      _isStoping = false;
      setState(() {});
    }
  }

  Future<bool> getSystemProxy() async {
    if (PlatformUtils.isPC()) {
      _isSystemProxySet = await VPNService.getSystemProxy();
      return _isSystemProxySet;
    }
    return false;
  }

  Material createServerSelect(BuildContext context) {
    final tcontext = Translations.of(context);
    var setting = SettingManager.getConfig();
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    String text = "";
    String delay = _currentServer.latency;
    String groupid = "";
    String tag = "";
    if (noConfig) {
      text = tcontext.addProfile;
    } else {
      if (_currentServer.groupid == ServerManager.getUrltestGroupId()) {
        text = tcontext.outboundActionUrltest;
        if (_currentServer.tag != kOutboundTagUrltest) {
          text += "[${_currentServer.tag}]";
        }

        if (_currentServerForSelector.now.isNotEmpty) {
          text += "[${_currentServerForSelector.now}]";
          ProxyConfig? proxy =
              ServerManager.getConfig().getByTag(_currentServerForSelector.now);
          if (proxy != null) {
            tag = _currentServerForSelector.now;
            groupid = proxy.groupid;
          }
        }
      } else if (_currentServer.groupid == ServerManager.getDirectGroupId()) {
        text = tcontext.outboundActionDirect;
        tag = _currentServer.tag;
        groupid = _currentServer.groupid;
      } else if (_currentServer.groupid == ServerManager.getBlockGroupId()) {
        text = tcontext.outboundActionBlock;
        tag = _currentServer.tag;
        groupid = _currentServer.groupid;
      } else {
        text = _currentServer.tag;
        tag = _currentServer.tag;
        groupid = _currentServer.groupid;
      }
    }
    if (setting.originSBProfile.isNotEmpty) {
      text = path.basename(setting.originSBProfile);
      delay = "";
      tag = "";
      groupid = "";
    }

    Size windowSize = MediaQuery.of(context).size;
    return Material(
      color: Colors.grey.withOpacity(0.5),
      child: InkWell(
        focusNode: _focusNodeSelect,
        onTap: setting.originSBProfile.isNotEmpty
            ? null
            : () async {
                if (noConfig) {
                  onTapAddProfileByStart();
                } else {
                  await onTapServerSelect();
                }
              },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          width: double.infinity,
          height: 60,
          child: Row(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: windowSize.width -
                                10 * 2 -
                                10 -
                                CommonWidget.kLatencyWidget -
                                25 -
                                5,
                            height: 60,
                            child: Text(
                              text,
                              style: TextStyle(
                                fontWeight: ThemeConfig.kFontWeightListSubItem,
                                fontSize: ThemeConfig.kFontSizeListSubItem,
                                fontFamily: Platform.isWindows ? 'Emoji' : null,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CommonWidget.createLatencyWidget(
                            context,
                            null,
                            false,
                            false,
                            delay,
                            onTapLatencyReload: tag.isEmpty || groupid.isEmpty
                                ? null
                                : () async {
                                    bool started = await VPNService.started();
                                    if (!started) {
                                      var err = await start("latencyWidget",
                                          disableShowAlertDialog: false);
                                      if (err != null) {
                                        return;
                                      }
                                    }

                                    ServerManager.testOutboundLatencyForServer(
                                            tag, groupid)
                                        .then((err) {
                                      if (!mounted) {
                                        return;
                                      }
                                      setState(() {});
                                      if (err != null) {
                                        DialogUtils.showAlertDialog(
                                            context, err.message,
                                            showCopy: true,
                                            showFAQ: true,
                                            withVersion: true);
                                      }
                                    });
                                  },
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                width: 25,
                child: setting.originSBProfile.isNotEmpty
                    ? null
                    : const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 14,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void changeTheme(String theme) {
    if (SettingManager.getConfig().ui.theme == theme) {
      return;
    }

    SettingManager.getConfig().ui.theme = theme;
    SettingManager.saveConfig();
    Provider.of<Themes>(context, listen: false).setTheme(theme, true);

    setState(() {});
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

  void onTapToggleStart() async {
    await GroupHelper.showAddProfile(context);
    await checkAndReload("onTapToggleStart");
    setState(() {});
  }

  void onTapSpeedTest() async {
    var setting = SettingManager.getConfig();
    UrlLauncherUtils.loadUrl(
        !setting.novice ? setting.speedTest : SettingConfig.kSpeedTestList[0]);
  }

  void onTapLink() async {
    final tcontext = Translations.of(context);
    if (SettingManager.getConfig().uiScreen.myLink.isEmpty) {
      await DialogUtils.showAlertDialog(
          context, tcontext.HomeScreen.myLinkEmpty);
    } else {
      UrlLauncherUtils.loadUrl(SettingManager.getConfig().uiScreen.myLink);
    }
  }

  void onTapAppleTV() async {
    GroupHelper.showAppleTVByScanQRCode(context);
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
    await GroupHelper.showAddProfile(context);
    await checkAndReload("onTapAddProfile");
    setState(() {});
  }

  void onTapAddProfileByAgreement() async {
    await GroupHelper.showAddProfile(context);
    await checkAndReload("onTapAddProfileByAgreement");
    setState(() {});
  }

  void onTapAddProfileByStart() async {
    await GroupHelper.showAddProfile(context);
    await checkAndReload("onTapAddProfileByStart");
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

  void onTapNetCheck() async {
    Navigator.push(
        context,
        MaterialPageRoute(
            settings: NetCheckScreen.routSettings(),
            builder: (context) => const NetCheckScreen()));
  }

  void onTapSetTheme() async {
    String theme = SettingManager.getConfig().ui.theme;
    showMenu(
        context: context,
        position: const RelativeRect.fromLTRB(0.1, 0, 0, 0),
        items: [
          PopupMenuItem(
              value: 0,
              child: Container(
                  alignment: Alignment.center,
                  width: 86,
                  height: 26,
                  color: theme == ThemeDefine.kThemeSystem
                      ? ThemeDefine.kColorGreenBright
                      : null,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: ThemeDataLight.homeColor,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: ThemeDataDark.homeColor,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: ThemeDataLight.homeColor,
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: ThemeDataDark.homeColor,
                            ),
                          )
                        ],
                      ))),
              onTap: () {
                changeTheme(ThemeDefine.kThemeSystem);
              }),
          PopupMenuItem(
              value: 1,
              child: Container(
                  alignment: Alignment.center,
                  width: 86,
                  height: 26,
                  color: theme == ThemeDefine.kThemeLight
                      ? ThemeDefine.kColorGreenBright
                      : null,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: Row(
                        children: [
                          Container(
                            width: 80,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: ThemeDataLight.homeColor,
                            ),
                          ),
                        ],
                      ))),
              onTap: () {
                changeTheme(ThemeDefine.kThemeLight);
              }),
          PopupMenuItem(
            value: 1,
            child: Container(
                alignment: Alignment.center,
                width: 86,
                height: 26,
                color: theme == ThemeDefine.kThemeDark
                    ? ThemeDefine.kColorGreenBright
                    : null,
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 20,
                          decoration: const BoxDecoration(
                            color: ThemeDataDark.homeColor,
                          ),
                        ),
                      ],
                    ))),
            onTap: () {
              changeTheme(ThemeDefine.kThemeDark);
            },
          ),
          PopupMenuItem(
              value: 0,
              child: Container(
                  alignment: Alignment.center,
                  width: 86,
                  height: 26,
                  color: theme == ThemeDefine.kThemeBlue
                      ? ThemeDefine.kColorGreenBright
                      : null,
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(3, 3, 3, 3),
                      child: Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: ThemeDataBlue.homeColor,
                            ),
                          ),
                          Container(
                            width: 60,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: ThemeDataLight.homeColor,
                            ),
                          )
                        ],
                      ))),
              onTap: () {
                changeTheme(ThemeDefine.kThemeBlue);
              }),
        ]);
  }

  void onTapNotice(NoticeItem noticeItem) async {
    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeUA,
        name: 'HSS_notice',
        parameters: {"title": noticeItem.title});

    InAppNotifications.dismiss();
    _inAppNotificationsShowing = false;
    if (noticeItem.url.isNotEmpty) {
      String queryParams = await KaringUrlUtils.getQueryParams();
      String newUrl =
          UrlLauncherUtils.reorganizationUrl(noticeItem.url, queryParams) ??
              noticeItem.url;

      UrlLauncherUtils.loadUrl(newUrl);
    } else {
      await Navigator.push(
          context,
          MaterialPageRoute(
              settings: RichtextViewScreen.routSettings(),
              builder: (context) => RichtextViewScreen(
                  title: t.notice, file: "", content: noticeItem.content)));
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

  Future<void> onTapNetConnections() async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: NetConnectionsScreen.routSettings(),
            builder: (context) => NetConnectionsScreen(
                    regTrack: (Function(List<Tracker>)? tracker) {
                  _trackerCallback = tracker;
                })));
    await checkAndReload("onTapNetConnections");
  }

  Future<void> onLongPressNetConnections() async {
    await ClashApi.resetOutboundConnections(
      SettingManager.getConfig().proxy.controlPort,
    );
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
                )));
    if (result != null) {
      if (!_currentServer.isSame(result) || ServerManager.getDirty()) {
        _currentServer = result;
        _currentServerForSelector.clear();
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

  Future<void> checkAndReload(String from) async {
    if (!_isStarted && !_isStarting) {
      return;
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
        return;
      }
      await setServerAndReload(from);
    }
  }

  Future<void> onTapToggle() async {
    bool run = await VPNService.running();
    if (run) {
      await stop();
    } else {
      await start("switch");
    }
  }

  Future<void> stop() async {
    _currentServerForSelector.clear();
    await ProxyCluster.stop();
    if (_currentServer.groupid == ServerManager.getUrltestGroupId()) {
      _currentServer.latency = "";
      _currentServerForSelector.history.clear();
    }

    _isStarting = false;
    _isStarted = false;
    setState(() {});
    Biz.vpnStateChanged(_isStarted);
    bool run = await VPNService.running();
    if (run) {
      AnalyticsUtils.logEvent(
          analyticsEventType: analyticsEventTypeApp,
          name: 'HSS_stop',
          parameters: {
            "server": _currentServer.server,
            "type": _currentServer.type,
          });
      _isStoping = true;
      setState(() {});
      await VPNService.stop();
      _isStoping = false;
      setState(() {});
    }
  }

  Future<ReturnResultError?> start(String from,
      {bool disableShowAlertDialog = false}) async {
    _currentServerForSelector.clear();
    await ProxyCluster.stop();
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
          return ReturnResultError(tcontext.fileNotExistReinstall(p: filePath));
        }
      }
    }
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    if (noConfig) {
      Log.w("start failed: no server avaliable, from $from");
      return ReturnResultError("start failed: no server avaliable");
    }
    if (_currentServer.groupid.isEmpty) {
      Log.w("start failed: groupid is empty, from $from");
      return ReturnResultError("start failed: groupid is empty");
    }
    if (_isStarting) {
      Log.w("start failed: starting, from $from");
      return ReturnResultError("start failed: starting");
    }
    bool run = await VPNService.running();
    if (run) {
      return ReturnResultError("start failed: already runing");
    }
    _isStarting = true;
    _isStarted = false;
    _canConnect = _isStarted;
    setState(() {});
    ReturnResultError? err = await setServer();
    if (err != null) {
      _isStarting = false;
      _isStarted = false;
      Biz.vpnStateChanged(_isStarted);
      _canConnect = _isStarted;
      setState(() {});
      AnalyticsUtils.logEvent(
          analyticsEventType: analyticsEventTypeApp,
          name: 'HSS_start',
          parameters: {
            "err": err.message,
            "from": from,
            "tunMode": await VPNService.getTunMode(),
            "currentSelectorTag": _currentServerForSelector.now,
          });
      if (!disableShowAlertDialog) {
        CommonDialog.handleStartError(context, err.message);
      }
      return err;
    }
    ServerManager.setDirty(false);
    SettingManager.setDirty(false);
    err = await VPNService.start();
    _isStarting = false;
    _isStarted = err == null;
    Biz.vpnStateChanged(_isStarted);
    _canConnect = _isStarted;

    setState(() {});

    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeApp,
        name: 'HSS_start',
        parameters: {
          "err": (err != null) ? err.message : null,
          "from": from,
          "tunMode": await VPNService.getTunMode(),
          "currentSelectorTag": _currentServerForSelector.now,
        });
    if (err != null) {
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

  void addConfigBySubscriptionLink(String? installUrl, String? name,
      String? ispName, String? ispUrl, String? ispFaq) {
    int kMaxPush = 2;
    if (installUrl != null &&
        AddProfileByLinkOrContentScreen.pushed <= kMaxPush) {
      UrlLauncherUtils.closeWebview();
      Navigator.push(
          context,
          MaterialPageRoute(
              settings: AddProfileByLinkOrContentScreen.routSettings(),
              builder: (context) => AddProfileByLinkOrContentScreen(
                  name: name,
                  linkUrl: installUrl,
                  ispName: ispName,
                  ispUrl: ispUrl,
                  ispFaq: ispFaq)));
    }
  }

  void installConfig(Uri uri) async {
    String? name;
    String? url;
    String? ispName;
    String? ispUrl;
    String? ispFaq;
    try {
      name = uri.queryParameters["name"];
      url = uri.queryParameters["url"];
      ispName =
          uri.queryParameters["isp-name"] ?? uri.queryParameters["Isp-Name"];
      ispUrl = uri.queryParameters["isp-url"] ?? uri.queryParameters["Isp-Url"];
      ispFaq = uri.queryParameters["isp-faq"] ?? uri.queryParameters["Isp-Faq"];
    } catch (err) {
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }
    name ??= uri.fragment;
    if (name.isNotEmpty) {
      try {
        name = Uri.decodeComponent(name);
      } catch (err) {}
    }
    if (url != null) {
      try {
        url = Uri.decodeComponent(url);
      } catch (err) {}
    }

    addConfigBySubscriptionLink(url, name, ispName, ispUrl, ispFaq);
  }

  void restoreBackup(Uri uri) async {
    String? url = uri.queryParameters["url"];
    if (url != null) {
      try {
        url = Uri.decodeComponent(url);
      } catch (err) {}
    }
    if (url == null || url.isEmpty) {
      return;
    }
    Uri? downloadUri = Uri.tryParse(url);
    if (downloadUri == null) {
      return;
    }
    final tcontext = Translations.of(context);
    bool? ok = await DialogUtils.showConfirmDialog(
        context, tcontext.SettingsScreen.rewriteConfirm);
    if (ok != true) {
      return;
    }
    DialogUtils.showLoadingDialog(context, text: "");
    String dir = await PathUtils.cacheDir();
    String filePath = path.join(dir, BackupAndSyncUtils.getZipFileName());
    var result = await HttpUtils.httpDownload(
        downloadUri, filePath, null, null, const Duration(seconds: 10));

    if (!mounted) {
      return;
    }
    Navigator.pop(context);
    if (result.error != null) {
      DialogUtils.showAlertDialog(context, result.error!.message,
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }
    await GroupHelper.backupRestoreFromZip(context, filePath, confirm: false);
    await FileUtils.deleteFileByPath(filePath);
  }

  @override
  void onProtocolUrlReceived(String url) {
    //clash://install-config?url=https://xxxxx.com/clash/config
    //stash://install-config?url=https%3A%2F%2Fwww.xxxxx.gay%2Fapi%2Fv1%2Fclient%2Fsubscribe%3Ftoken%3D&name=stars
    //sing-box://import-remote-profile?url=https://xxxxx:8443/proxy/fgram.json#mcivip%F0%9F%87%B9%F0%9F%87%B73%7CArefgram
    //karing://install-config?url=xxx&name=xxx&&isp-name=xxx&isp-url=xxx&isp-faq=xxx ;connect; disconnect; reconnect;
    //karing://install-config?url=https%3A%2F%2Fxn--xxxxx.com%2Fsub%2Fa363e83fd1f559df%2Fclash&name=gdy&&isp-name=%E8%B7%9F%E6%96%97%E4%BA%91&isp-url=https%3A%2F%2Fxn--9kq147c4p2a.com%2Fuser&isp-faq=
    //karing://restore-backup?url=https%3A%2F%2Fxn--xxxxx.com%2Fsub%2Fa363e83fd1f559df%2Fclash
    //karing://tvos?ips=192.168.1.102&port=4040&uuid=728EC1AB-7AC8-4E8F-8406-3856F6C70506&cport=3057&secret=0191eee9f89d7cd29fda94c0b663efb2&version=1.0.29.293
    Uri? uri = Uri.tryParse(url);
    if (uri != null) {
      if (uri.isScheme(SystemSchemeUtils.getClashScheme())) {
        if (uri.host == "install-config") {
          installConfig(uri);
        }
      } else if (uri.isScheme(SystemSchemeUtils.getSingboxScheme())) {
        if (uri.host == "import-remote-profile") {
          installConfig(uri);
        }
      } else if (uri.isScheme(SystemSchemeUtils.getKaringScheme())) {
        if (uri.host == AppSchemeUtils.connectAction()) {
          Future.delayed(const Duration(seconds: 0), () async {
            await start("scheme");
          });
        } else if (uri.host == AppSchemeUtils.disconnectAction()) {
          Future.delayed(const Duration(seconds: 0), () async {
            await stop();
          });
        } else if (uri.host == AppSchemeUtils.reconnectAction()) {
          Future.delayed(const Duration(seconds: 0), () async {
            await stop();
            await start("scheme");
          });
        } else if (uri.host == AppSchemeUtils.installConfigAction()) {
          installConfig(uri);
        } else if (uri.host == AppSchemeUtils.restoreBackup()) {
          restoreBackup(uri);
        } else if (uri.host == AppSchemeUtils.appleTVHost()) {
          if (PlatformUtils.isMobile()) {
            GroupHelper.showAppleTVByUrl(context, url);
          }
        }
      }
    }
  }

  @override
  void dispose() {
    _focusNodeSettings.dispose();
    _focusNodeSwitch.dispose();
    _focusNodeSelect.dispose();
    ErrorReporterUtils.register(null);
    _timer?.cancel();
    _timer = null;
    _disconnectToService();
    _disconnectToCurrent();

    protocolHandler.removeListener(this);
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    var settingConfig = SettingManager.getConfig();
    AutoUpdateCheckVersion checkVersion = AutoUpdateManager.getVersionCheck();
    NoticeItem? noticeItem = NoticeManager.getNotice().getFirstUnread();
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;

    var expire = DateTime.tryParse(settingConfig.ads.bannerRewardExpire);
    bool showAds = expire == null || DateTime.now().isAfter(expire);

    var themes = Provider.of<Themes>(context, listen: false);
    Color? color = themes.getThemeHomeColor(context);
    return Focus(
        autofocus: true,
        includeSemantics: true,
        onKeyEvent: (FocusNode node, KeyEvent event) {
          if (event is KeyDownEvent) {
            switch (event.logicalKey) {
              case LogicalKeyboardKey.contextMenu:
                var focus = [
                  _focusNodeSettings,
                  _focusNodeSwitch,
                  _focusNodeSelect
                ];
                int? focusIndex;
                for (int i = 0; i < focus.length; ++i) {
                  if (focus[i].hasFocus) {
                    focusIndex = i;
                    break;
                  }
                }
                if (focusIndex == null) {
                  _focusNodeSwitch.requestFocus();
                } else {
                  focus[(focusIndex + 1) % focus.length].requestFocus();
                }

                return KeyEventResult.handled;
            }
          }
          return KeyEventResult.ignored;
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.zero,
            child: AppBar(
              backgroundColor: color,
              systemOverlayStyle: SystemUiOverlayStyle(
                systemNavigationBarIconBrightness:
                    themes.getStatusBarIconBrightness(context),
                systemNavigationBarColor: color,
                systemNavigationBarDividerColor: Colors.transparent,
                statusBarColor: color,
                statusBarBrightness: themes.getStatusBarBrightness(context),
                statusBarIconBrightness:
                    themes.getStatusBarIconBrightness(context),
              ),
            ),
          ),
          backgroundColor: color,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Tooltip(
                                message: tcontext.setting,
                                child: InkWell(
                                    focusNode: _focusNodeSettings,
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
                                        checkVersion.newVersion ||
                                                noticeItem != null
                                            ? Positioned(
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
                                            : const SizedBox(
                                                width: 0,
                                              ),
                                      ],
                                    ))),
                            Row(children: createToolbar()),
                          ]),
                      Tooltip(
                        message: tcontext.SettingsScreen.theme,
                        child: InkWell(
                          onTap: () async {
                            onTapSetTheme();
                          },
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.color_lens_outlined,
                              size: 26,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        AdsBannerWidget(
                          adWidth: windowSize.width,
                          mask: showAds ? null : color,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Stack(children: [
                            SizedBox(
                              width: 180,
                              child: FittedBox(
                                fit: BoxFit.fill,
                                child: Switch.adaptive(
                                  value: _isStarted,
                                  focusNode: _focusNodeSwitch,
                                  activeColor: ThemeDefine.kColorGreenBright,
                                  thumbColor:
                                      WidgetStateProperty.resolveWith<Color>(
                                          (Set<WidgetState> states) {
                                    return Colors.orange;
                                  }),
                                  inactiveTrackColor: noConfig
                                      ? Colors.grey
                                      : Colors.grey.withOpacity(0.5),
                                  onChanged: (bool newValue) async {
                                    if (noConfig) {
                                      onTapToggleStart();
                                    } else {
                                      if (!_isStarting && !_isStoping) {
                                        onTapToggle();
                                      }
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
                        ),
                        /*AnimatedToggleSwitch<bool>.dual(
                            current: _isStarted,
                            first: false,
                            second: true,
                            spacing: 65.0,
                            animationDuration:
                                const Duration(milliseconds: 600),
                            style: const ToggleStyle(
                              borderColor: Colors.transparent,
                              indicatorColor: Colors.white,
                              backgroundColor: Colors.amber,
                            ),
                            customStyleBuilder: (context, local, global) =>
                                ToggleStyle(
                                    backgroundGradient: LinearGradient(
                              colors: const [
                              
                                Colors.red
                              ],
                              stops: [
                                global.position -
                                    (1 - 2 * max(0, global.position - 0.5)) *
                                        0.5,
                                global.position +
                                    max(0, 2 * (global.position - 0.5)) * 0.5,
                              ],
                            )),
                            borderWidth: 6.0,
                            height: 60.0,
                            loadingIconBuilder: (context, global) =>
                                CupertinoActivityIndicator(
                                    color: Color.lerp(
                                        Colors.red,
                                     
                                        global.position)),
                            onChanged: (b) async {
                              if (noConfig) {
                                 onTapToggleStart();
                              } else {
                                if (!_isStarting) {
                                  setState(() {});
                                  await onTapToggle();
                                }
                              }
                            },
                            iconBuilder: (value) => value
                                ? const Icon(Icons.power_outlined,
                                 
                                    size: 32.0)
                                : const Icon(Icons.power_settings_new_rounded,
                                    color: Colors.red, size: 32.0),
                            textBuilder: (value) => Center(
                                child: Text(
                              value ? 'ON' : 'OFF',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600),
                            )),
                          ),
                          const SizedBox(
                            height: 35,
                          ),*/
                        Column(
                          children: [
                            Platform.isWindows ||
                                    Platform.isMacOS ||
                                    Platform.isLinux
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Tooltip(
                                              message: tcontext.HomeScreen
                                                  .systemProxyTips(
                                                      hp: settingConfig
                                                          .proxy.mixedRulePort,
                                                      sp: settingConfig
                                                          .proxy.mixedRulePort),
                                              child: InkWell(
                                                onTap: () {
                                                  DialogUtils.showAlertDialog(
                                                      context,
                                                      tcontext.HomeScreen
                                                          .systemProxyTips(
                                                              hp: settingConfig
                                                                  .proxy
                                                                  .mixedRulePort,
                                                              sp: settingConfig
                                                                  .proxy
                                                                  .mixedRulePort));
                                                },
                                                child: const Icon(
                                                  Icons.info_outlined,
                                                  size: 20,
                                                ),
                                              )),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          Text(
                                            tcontext.systemProxy,
                                            style: const TextStyle(
                                              fontSize:
                                                  ThemeConfig.kFontSizeListItem,
                                            ),
                                          ),
                                          FutureBuilder(
                                            future: getSystemProxy(),
                                            builder: (BuildContext context,
                                                AsyncSnapshot<bool> snapshot) {
                                              return Switch.adaptive(
                                                value: snapshot.hasData &&
                                                    snapshot.data!,
                                                activeColor: ThemeDefine
                                                    .kColorGreenBright,
                                                onChanged: noConfig
                                                    ? null
                                                    : (bool newValue) {
                                                        if (!_isStarting &&
                                                            !_isStoping) {
                                                          VPNService
                                                              .setSystemProxy(
                                                                  newValue);
                                                          setState(() {});
                                                        }
                                                      },
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                : const SizedBox.shrink(),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              child: SegmentedButton<bool>(
                                segments: <ButtonSegment<bool>>[
                                  ButtonSegment<bool>(
                                      value: false,
                                      label: Text(
                                        tcontext.rule,
                                        style: const TextStyle(
                                          fontSize:
                                              ThemeConfig.kFontSizeListSubItem,
                                        ),
                                      )),
                                  ButtonSegment<bool>(
                                      value: true,
                                      label: Text(
                                        tcontext.global,
                                        style: const TextStyle(
                                          fontSize:
                                              ThemeConfig.kFontSizeListSubItem,
                                        ),
                                      )),
                                ],
                                selected: {SettingManager.getConfig().proxyAll},
                                onSelectionChanged:
                                    (Set<bool> newSelection) async {
                                  SettingManager.getConfig().proxyAll =
                                      newSelection.first;
                                  SettingManager.saveConfig();
                                  setState(() {});
                                  await setServerAndReload("proxyAll");
                                },
                                multiSelectionEnabled: false,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  createGroupTraffic(context),
                                ]),
                            const SizedBox(
                              height: 10,
                            ),
                            createNetStatusChart(context),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [createServerSelect(context)],
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }

  List<Widget> createToolbar() {
    final tcontext = Translations.of(context);
    var settingConfig = SettingManager.getConfig();

    Size windowSize = MediaQuery.of(context).size;

    int maxCount = ((windowSize.width - 100) / 35).toInt();
    if (maxCount < 0) {
      maxCount = 7;
    }
    List<Header> headerWidgets = [];
    if (settingConfig.uiScreen.homeShowMyProfiles) {
      headerWidgets.add(Header(tcontext.MyProfilesScreen.title,
          Icons.list_alt_outlined, onTapMyProfiles));
    }
    if (settingConfig.uiScreen.homeShowAddProfile) {
      headerWidgets.add(
          Header(tcontext.addProfile, Icons.add_outlined, onTapAddProfile));
    }
    if (settingConfig.uiScreen.homeShowDNS) {
      headerWidgets.add(Header(tcontext.dns, Icons.dns_outlined, onTapDNS));
    }
    if (settingConfig.uiScreen.homeShowDeversion) {
      headerWidgets.add(
          Header(tcontext.diversion, Icons.alt_route_outlined, onTapDiversion));
    }
    if (settingConfig.uiScreen.homeShowNetcheck) {
      headerWidgets.add(Header(tcontext.NetCheckScreen.title,
          Icons.network_check_outlined, onTapNetCheck));
    }
    if (settingConfig.uiScreen.homeShowSpeedtest) {
      headerWidgets.add(Header(tcontext.SettingsScreen.speedTest,
          Icons.speed_outlined, onTapSpeedTest));
    }
    if (settingConfig.uiScreen.homeShowMyLink) {
      headerWidgets.add(Header(
          tcontext.SettingsScreen.myLink, Icons.link_outlined, onTapLink));
    }
    if (settingConfig.uiScreen.homeShowAppleTV && PlatformUtils.isMobile()) {
      headerWidgets
          .add(Header(tcontext.appleTV, Icons.live_tv_outlined, onTapAppleTV));
    }
    List<Header> visibleWidgets = [];
    List<Header> moreWidgets = [];
    if (headerWidgets.length > maxCount) {
      visibleWidgets = headerWidgets.sublist(0, maxCount - 1);
      moreWidgets = headerWidgets.sublist(maxCount - 1);
    } else {
      visibleWidgets = headerWidgets;
    }
    List<Widget> widgets = [];

    for (var widget in visibleWidgets) {
      widgets.add(Tooltip(
          message: widget.tooltip,
          child: InkWell(
              onTap: widget.onTap,
              child: Stack(
                children: [
                  SizedBox(
                    width: 35,
                    height: 30,
                    child: Icon(
                      widget.iconData,
                      size: 26,
                    ),
                  ),
                ],
              ))));
    }
    if (moreWidgets.isNotEmpty) {
      widgets.add(Tooltip(
          message: tcontext.more,
          child: InkWell(
              onTap: () async {
                onTapToolbarMore(moreWidgets);
              },
              child: const Stack(
                children: [
                  SizedBox(
                    width: 35,
                    height: 30,
                    child: Icon(
                      Icons.more_vert_outlined,
                      size: 26,
                    ),
                  ),
                ],
              ))));
    }

    return widgets;
  }

  void onTapToolbarMore(List<Header> moreWidgets) {
    List<PopupMenuItem> items = [];
    for (var widget in moreWidgets) {
      items.add(
        PopupMenuItem(
            value: 0,
            child: Tooltip(
                message: widget.tooltip,
                child: InkWell(
                    onTap: widget.onTap,
                    child: Stack(
                      children: [
                        SizedBox(
                          width: 35,
                          height: 30,
                          child: Icon(
                            widget.iconData,
                            size: 26,
                          ),
                        ),
                      ],
                    )))),
      );
    }
    showMenu(
        context: context,
        position: const RelativeRect.fromLTRB(0.1, 0, 0, 0),
        items: items);
  }

  Widget createGroupTraffic(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    String groupid = _currentServer.groupid;
    const double height = 24 + 24 + 5;
    if (!_isStarted || groupid.isEmpty) {
      return const SizedBox(
        height: height,
      );
    }

    ServerConfigGroupItem? group;
    if (groupid == ServerManager.getUrltestGroupId()) {
      List<ServerConfigGroupItem> items = ServerManager.getConfig().items;

      if (_currentServerForSelector.now.isNotEmpty) {
        String newGroupId = "";
        for (var item in items) {
          if (!item.enable) {
            continue;
          }
          for (var server in item.servers) {
            if (server.tag == _currentServerForSelector.now) {
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
    group = ServerManager.getByGroupId(groupid);
    if (group == null || groupid == ServerManager.getUrltestGroupId()) {
      return const SizedBox(
        height: height,
      );
    }
    if (group.traffic == null) {
      return SizedBox(
        height: height,
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              group.remark,
              style: const TextStyle(
                fontSize: ThemeConfig.kFontSizeListSubItem,
              ),
            ),
          ],
        ),
      );
    }

    return SizedBox(
      height: height,
      child: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            group.remark,
            style: const TextStyle(
              fontSize: ThemeConfig.kFontSizeListSubItem,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          CommonWidget.createGroupTraffic(
              context,
              group.groupid,
              true,
              group.traffic,
              0,
              MainAxisAlignment.center,
              windowSize.width, (String groupId) {
            setState(() {});
          }, (String groupId, ReturnResult<SubscriptionTraffic> value) {
            if (!mounted) {
              return;
            }
            setState(() {});
            if (value.error != null) {
              if (value.error!.message.contains("405")) {
                ServerManager.reload(groupid).then((value) {
                  if (!mounted) {
                    return;
                  }
                  setState(() {});
                  if (value != null) {
                    DialogUtils.showAlertDialog(
                        context, tcontext.updateFailed(p: value.message),
                        showCopy: true, showFAQ: true, withVersion: true);
                  }
                });
              } else {
                DialogUtils.showAlertDialog(
                    context, tcontext.updateFailed(p: value.error!.message),
                    showCopy: true, showFAQ: true, withVersion: true);
              }
            }
          })
        ],
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
                    onLongPress: () async {
                      await onLongPressNetConnections();
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
                tcontext.HomeScreen.trafficTotal,
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
                tcontext.HomeScreen.trafficProxy,
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
                tcontext.netSpeed,
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

  void _showNotify() {
    if (AppLifecycleStateNofityManager.isPaused()) {
      return;
    }
    if (_inAppNotificationsShowing) {
      return;
    }
    NoticeItem? noticeItem = NoticeManager.getNotice().getFirstUnread();
    if (noticeItem == null) {
      return;
    }
    _inAppNotificationsShowing = true;
    final tcontext = Translations.of(context);
    InAppNotifications.show(
        title: tcontext.notice,
        duration: const Duration(seconds: 60),
        description: noticeItem.title,
        onTap: () {
          onTapNotice(noticeItem);
        });
  }
}
