// ignore_for_file: unused_catch_stack, empty_catches

import 'dart:convert';
import 'dart:io';

import 'package:karing/app/modules/proxy_cluster.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_args.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/clash_api.dart';
import 'package:karing/app/utils/did.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/geoip_subnet_utils.dart';
import 'package:karing/app/utils/install_referrer_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/ruleset_codes_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:launch_at_startup/launch_at_startup.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:tuple/tuple.dart';
import 'package:vpn_service/proxy_manager.dart';
import 'package:vpn_service/state.dart';
import 'package:vpn_service/vpn_service.dart';
import 'package:vpn_service/vpn_service_platform_interface.dart';

class VPNServiceSetServerOptions {
  String disabledServerError = "";
  String invalidServerError = "";
  String expiredServerError = "";
  Set<String> allOutboundsTags = {};
}

class VPNService {
  static const localhost = "127.0.0.1";
  static bool _useSystemExtension = false;
  static ProxyConfig _current = ProxyConfig();
  static bool _runAsAdmin = false;
  static List<String> _abis = [];

  static final List<
          void Function(
              FlutterVpnServiceState state, Map<String, String> params)>
      onEventStateChanged = [];

  static init() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    if (Platform.isWindows) {
      _runAsAdmin = await FlutterVpnService.isRunAsAdmin();
      FlutterVpnService.firewallAddApp(
          Platform.resolvedExecutable, PathUtils.getExeName());
      FlutterVpnService.firewallAddApp(
          PathUtils.serviceExePath(), PathUtils.serviceExeName());
    }

    launchAtStartup.setup(
        appName: packageInfo.appName,
        appPath: Platform.resolvedExecutable, //windows下开机启动的路径里不能有/,否则无法正常启动
        args: [AppArgs.launchStartup]);
    if (Platform.isMacOS) {
      _useSystemExtension =
          await File(PathUtils.tunnelServiceSEPath()).exists();
    }
    if (Platform.isAndroid) {
      String abisAll = await FlutterVpnService.getABIs();
      _abis = abisAll.replaceAll("[", "").replaceAll("]", "").split(",");
    }
    FlutterVpnService.onStateChanged(
        (FlutterVpnServiceState state, Map<String, String> params) async {
      if (getSupportSystemProxy()) {
        if (state == FlutterVpnServiceState.disconnected) {
          bool enable = await FlutterVpnService.getSystemProxyEnable(
              await getSystemProxyOptions());
          if (enable) {
            await FlutterVpnService.cleanSystemProxy();
          }
        }
      }

      for (var callback in onEventStateChanged) {
        callback(state, params);
      }
    });

    await _prepareConfig();

    //await setDefaultOutbound();

    if (Platform.isWindows) {
      //启动后就把之前残留的进程杀掉,后续验证端口需要用
      await stop();
    }
  }

  static Future<void> uninit() async {
    if (PlatformUtils.isPC() &&
        SettingManager.getConfig().proxy.disconnectWhenQuit) {
      await stop();
    }
  }

  static List<String> getABIs() {
    return _abis;
  }

  static void setCurrent(ProxyConfig currentServer) {
    _current = currentServer;
  }

  static ProxyConfig getCurrent() {
    return _current;
  }

  static ReturnResultError? convertErr(VpnServiceResultError? err) {
    if (err == null) {
      return null;
    }
    return ReturnResultError(err.message);
  }

  static String durationToString(Duration? duration) {
    if (duration == null) {
      return "";
    }
    var microseconds = duration.inMicroseconds;
    var sign = "";
    var negative = microseconds < 0;

    var hours = microseconds ~/ Duration.microsecondsPerHour;
    microseconds = microseconds.remainder(Duration.microsecondsPerHour);

    // Correcting for being negative after first division, instead of before,
    // to avoid negating min-int, -(2^31-1), of a native int64.
    if (negative) {
      hours = 0 - hours; // Not using `-hours` to avoid creating -0.0 on web.
      microseconds = 0 - microseconds;
      sign = "-";
    }

    var minutes = microseconds ~/ Duration.microsecondsPerMinute;
    microseconds = microseconds.remainder(Duration.microsecondsPerMinute);

    var minutesPadding = minutes < 10 ? "0" : "";

    var seconds = microseconds ~/ Duration.microsecondsPerSecond;
    microseconds = microseconds.remainder(Duration.microsecondsPerSecond);

    var secondsPadding = seconds < 10 ? "0" : "";

    return "$sign$hours:"
        "$minutesPadding$minutes:"
        "$secondsPadding$seconds";
  }

  static Future<bool> _prepareConfig() async {
    var proxy = SettingManager.getConfig().proxy;
    var excludePorts = [
      proxy.mixedRulePort,
      proxy.mixedDirectPort,
      proxy.mixedForwordPort,
      proxy.controlPort,
      proxy.clusterPort,
    ];

    String name = AppUtils.getName();
    String vpnName = name;
    String configFilePath = await PathUtils.serviceConfigFilePath();
    String installReferrer = await InstallReferrerUtils.getString();
    var setting = SettingManager.getConfig();
    VpnServiceConfig config = VpnServiceConfig();
    config.control_port = setting.proxy.controlPort;
    config.base_dir = await PathUtils.profileDir();
    config.work_dir = PathUtils.appAssetsDir();
    config.cache_dir = await PathUtils.cacheDir();
    config.core_path = await PathUtils.serviceCoreConfigFilePath();
    config.log_path = await PathUtils.serviceLogFilePath();
    config.err_path = await PathUtils.serviceStdErrorFilePath();
    config.id = await Did.getDid();
    config.version = AppUtils.getBuildinVersion();
    config.name = name;
    config.secret = await ClashApi.getSecret();
    config.install_refer = installReferrer;
    config.expired_time =
        DateTime.now().add(const Duration(hours: 24)).millisecondsSinceEpoch;
    config.time_connect = durationToString(setting.timeConnect);
    config.time_disconnect = durationToString(setting.timeDisconnect);
    config.sentry_minversion = RemoteConfigManager.getConfig().sentryMinVersion;
    FlutterVpnService.prepareConfig(
      config: config,
      tunnelServicePath: PathUtils.serviceExePath(),
      configFilePath: configFilePath,
      systemExtension: _useSystemExtension,
      bundleIdentifier: getBundleId(),
      uiServerAddress: name,
      uiLocalizedDescription: vpnName,
      excludePorts: excludePorts,
    );
    File confFile = File(configFilePath);
    bool reinstall = false;
    if (Platform.isIOS || Platform.isMacOS) {
      bool exists = await confFile.exists();
      if (exists) {
        try {
          String content = await confFile.readAsString();
          if (content.isNotEmpty) {
            var configJson = jsonDecode(content);
            VpnServiceConfig configOld = VpnServiceConfig();
            configOld.fromJson(configJson);
            if (config.install_refer != configOld.install_refer) {
              reinstall = true;
            }
          }
        } catch (err, stacktrace) {
          Log.w("VPNService.prepareConfig exception ${err.toString()}");
        }
      }
    }

    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(config);
    try {
      await confFile.writeAsString(content, flush: true);
    } catch (err) {
      ErrorReporterUtils.tryReportNoSpace(err.toString());
    }

    if (Platform.isMacOS) {
      ProxyManager().setExcludeDevices({vpnName});
    }

    return reinstall;
  }

  static Duration getTimeoutByOutboundCount(int count, bool tunMode) {
    int seconds = 20;
    if (Platform.isWindows && tunMode) {
      seconds += 5;
    }
    if (count > 1000) {
      seconds += (((count - 1000) ~/ 1000) + 1) * 2;
    }

    return Duration(seconds: seconds);
  }

  static Future<ReturnResultError?> install() async {
    VpnServiceResultError? err = await FlutterVpnService.installService();
    if (err != null) {
      Log.w("VPNService.install err ${err.message.toString()}");
    }
    return convertErr(err);
  }

  static Future<ReturnResultError?> uninstall() async {
    VpnServiceResultError? err = await FlutterVpnService.uninstallService();
    if (err != null) {
      Log.w("VPNService.uninstall err ${err.message.toString()}");
    }
    return convertErr(err);
  }

  static Future<ReturnResultError?> restart(Duration timeout) async {
    var started = await getStarted();
    if (!started) {
      return null;
    }
    bool reinstall = await _prepareConfig();
    if (reinstall) {
      await uninstall();
    }

    var setting = SettingManager.getConfig();

    if (Platform.isWindows) {
      if (setting.proxy.host == SettingConfigItemProxy.hostNetwork) {
        FlutterVpnService.firewallAddPorts([
          setting.proxy.mixedDirectPort,
          setting.proxy.mixedForwordPort,
          setting.proxy.mixedRulePort
        ], PathUtils.serviceExeName());
      }
    }
    if (Platform.isIOS || Platform.isMacOS) {
      await FlutterVpnService.setAlwaysOn(false);
    }

    VpnServiceWaitResult result = await FlutterVpnService.restart(timeout);
    if (result.type == VpnServiceWaitType.timeout) {
      ReturnResult<String> result = await ClashApi.mainStack(
        SettingManager.getConfig().proxy.controlPort,
      );
      String extra = "";
      if (result.data != null) {
        extra = result.data!;
      }
      await stop();
      return ReturnResultError("service restart timeout:$extra");
    }
    if (result.type != VpnServiceWaitType.done) {
      Log.w(
          "VPNService.restart err ${result.type}:${result.err!.message.toString()}");
      if (result.err!.message.contains("timeout")) {
        ReturnResult<String> result1 = await ClashApi.mainStack(
          SettingManager.getConfig().proxy.controlPort,
        );
        String extra = "";
        if (result1.data != null) {
          extra = result1.data!;
        }
        result.err!.message += ":$extra";
      }
      await stop();
      return convertErr(result.err);
    }
    String errorPath = await PathUtils.serviceStdErrorFilePath();
    String? content = await FileUtils.readAndDelete(errorPath);
    if (content != null && content.isNotEmpty) {
      await stop();
      return ReturnResultError(content);
    }
    if (Platform.isIOS || Platform.isMacOS) {
      if (setting.alwayOn) {
        await FlutterVpnService.setAlwaysOn(setting.alwayOn);
      }
    }

    return null;
  }

  static Future<ReturnResultError?> start(Duration timeout) async {
    bool reinstall = await _prepareConfig();
    if (reinstall) {
      await uninstall();
    }
    var setting = SettingManager.getConfig();
    if (Platform.isWindows) {
      if (setting.proxy.host == SettingConfigItemProxy.hostNetwork) {
        FlutterVpnService.firewallAddPorts([
          setting.proxy.mixedDirectPort,
          setting.proxy.mixedForwordPort,
          setting.proxy.mixedRulePort
        ], PathUtils.serviceExeName());
      }
    }
    VpnServiceWaitResult result = await FlutterVpnService.start(timeout);
    if (result.type == VpnServiceWaitType.timeout) {
      ReturnResult<String> result1 = await ClashApi.mainStack(
        SettingManager.getConfig().proxy.controlPort,
      );
      String extra = "";
      if (result1.data != null) {
        extra = result1.data!;
      }

      await stop();
      return ReturnResultError("service start timeout:$extra");
    }

    if (result.err != null) {
      Log.w("VPNService.start err ${result.err!.message.toString()}");
      if (result.err!.message.contains("timeout")) {
        ReturnResult<String> result1 = await ClashApi.mainStack(
          SettingManager.getConfig().proxy.controlPort,
        );
        String extra = "";
        if (result1.data != null) {
          extra = result1.data!;
        }
        result.err!.message += ":$extra";
      }
      await stop();
      return convertErr(result.err);
    }
    String errorPath = await PathUtils.serviceStdErrorFilePath();
    String? content = await FileUtils.readAndDelete(errorPath);
    if (content != null && content.isNotEmpty) {
      await stop();
      return ReturnResultError(content);
    }
    if (Platform.isIOS || Platform.isMacOS) {
      if (setting.alwayOn) {
        await FlutterVpnService.setAlwaysOn(setting.alwayOn);
      }
    }

    var proxy = SettingManager.getConfig().proxy;
    if (proxy.autoSetSystemProxy) {
      await setSystemProxy(true);
    }

    return null;
  }

  static Future<void> stop() async {
    if (Platform.isIOS || Platform.isMacOS) {
      await FlutterVpnService.setAlwaysOn(false);
    }
    await setSystemProxy(false);
    await FlutterVpnService.stop();

    if (Platform.isWindows) {
      await uninstall();
    }
  }

  static bool getSupportSystemProxy() {
    return PlatformUtils.isPC();
  }

  static Future<void> setSystemProxy(bool enable) async {
    if (getSupportSystemProxy()) {
      try {
        if (enable) {
          await FlutterVpnService.setSystemProxy(await getSystemProxyOptions());
        } else {
          if (await FlutterVpnService.getSystemProxyEnable(
              await getSystemProxyOptions())) {
            await FlutterVpnService.cleanSystemProxy();
          }
        }
      } catch (err) {
        Log.w("VPNService setSystemProxy exception:${err.toString()}");
      }
    }
  }

  static Future<bool> getSystemProxy() async {
    if (getSupportSystemProxy()) {
      bool enable = await FlutterVpnService.getSystemProxyEnable(
          await getSystemProxyOptions());
      return enable;
    }
    return false;
  }

  static bool isRunAsAdmin() {
    return _runAsAdmin;
  }

  static Future<bool> getTunMode() async {
    if (!SettingManager.getConfig().tun.enable) {
      return false;
    }
    if (Platform.isWindows) {
      return isRunAsAdmin();
    }
    return true;
  }

  static Future<FlutterVpnServiceState> getState() async {
    return await FlutterVpnService.currentState;
  }

  static Future<bool> getStarted() async {
    FlutterVpnServiceState newState = await FlutterVpnService.currentState;
    if (newState == FlutterVpnServiceState.connected) {
      return true;
    }

    return false;
  }

  static Future<List<int?>> getPortsBySetting(
      ProxyStrategy proxyStrategy) async {
    bool start = await getStarted();
    if (start) {
      var setting = SettingManager.getConfig();
      switch (proxyStrategy) {
        case ProxyStrategy.onlyDirect:
          return [setting.proxy.mixedDirectPort];
        case ProxyStrategy.onlyProxy:
          return [setting.proxy.mixedForwordPort];
        case ProxyStrategy.preferDirect:
          return [
            setting.proxy.mixedDirectPort,
            setting.proxy.mixedForwordPort
          ];
        default:
          return [
            setting.proxy.mixedForwordPort,
            setting.proxy.mixedDirectPort
          ];
      }
    }
    return [null];
  }

  static Future<List<int?>> getPortsByPrefer(bool preferForward) async {
    var started = await getStarted();
    if (started) {
      var setting = SettingManager.getConfig();
      if (preferForward) {
        return [setting.proxy.mixedForwordPort, setting.proxy.mixedDirectPort];
      }
      return [setting.proxy.mixedDirectPort, setting.proxy.mixedForwordPort];
    }
    return [null];
  }

  static Future<int?> getPort() async {
    var setting = SettingManager.getConfig();
    var started = await getStarted();
    return started ? setting.proxy.mixedForwordPort : null;
  }

  static Future<ReturnResultError?> reload(Duration timeout) async {
    //reload经常因为连接中的请求造成阻塞,重新载入配置文件可能延迟高,新配置生效不及时
    return restart(timeout);
    /*  var started = await getStarted();
    if (!started) {
      return ReturnResultError("service is not running");
    }
    VpnServiceResultError? err = await FlutterVpnService.reload();
    if (err != null) {
      return convertErr(err);
    }
    return null;*/
  }

  static List<SingboxOutboundUrltest> getUrltests(Set<String> allOutboundsTags,
      {bool uniTag = true, bool includeEmpty = true}) {
    List<SingboxOutboundUrltest> urltests = [];
    ServerConfigGroupItem customGroup = ServerManager.getCustomGroup();

    for (var ul in customGroup.urltests) {
      SingboxOutboundUrltest urltest = SingboxOutboundUrltest();
      urltest.type = kOutboundTypeUrltest;

      urltest.tag =
          uniTag ? ServerManager.getUrltestTagForCustom(ul.remark) : ul.remark;
      if (!allOutboundsTags.contains(urltest.tag)) {
        List<String> outbounds = [];
        for (var tag in ul.tags) {
          if (allOutboundsTags.contains(tag)) {
            outbounds.add(tag);
          }
        }
        List<String> searchTags = [];
        for (var reg in ul.regexs) {
          searchTags.addAll(ServerManager.searchTagsIn(allOutboundsTags, reg));
        }

        for (var tag in searchTags) {
          if (!outbounds.contains(tag)) {
            outbounds.add(tag);
          }
        }

        if (outbounds.isEmpty) {
          if (!includeEmpty) {
            continue;
          }
        }

        urltest.outbounds = outbounds;
        urltests.add(urltest);
      }
    }
    return urltests;
  }

  static Set<String> getOutboundsForUrltest(
    Set<String> allOutboundsTags,
    List<ProxyConfig> allOutboundProxys,
  ) {
    var settings = SettingManager.getConfig();
    var use = ServerManager.getUse();
    Set<String> selectOutboundsTags = {};
    if (settings.autoSelect.prioritizeMyFav) {
      //先检查收藏
      for (var server in use.fav) {
        if (!allOutboundsTags.contains(server.tag)) {
          continue;
        }
        if (server.tag.isEmpty) {
          continue; //这些不能添加到服务器列表,否则在后续过滤的时候可能被过滤掉导致可用列表为空,引起服务无法启动
        }

        if (settings.autoSelect.filter) {
          if (server.latency.isNotEmpty) {
            int? value = int.tryParse(server.latency);
            if (value == null) {
              continue;
            }
          }
        }
        selectOutboundsTags.add(server.tag);
      }
    }

    if (selectOutboundsTags.isEmpty) {
      //收藏无效的情况,重新组装数据
      for (var outbound in allOutboundProxys) {
        if (settings.autoSelect.filter) {
          if (outbound.latency.isNotEmpty) {
            int? value = int.tryParse(outbound.latency);
            if (value == null) {
              continue;
            }
          }
        }
        selectOutboundsTags.add(outbound.tag);
        if (selectOutboundsTags.length >= settings.autoSelect.limitedNum) {
          break;
        }
      }
    }
    if (selectOutboundsTags.isEmpty) {
      //依然没有可用数据,取前n个
      for (var outbound in allOutboundProxys) {
        selectOutboundsTags.add(outbound.tag);
        if (selectOutboundsTags.length >= settings.autoSelect.limitedNum) {
          break;
        }
      }
    }
    return selectOutboundsTags;
  }

  static void getOutboundsWithoutUrltest(
      Set<String> allOutboundsTags,
      Tuple2<List<ProxyConfig>, List<dynamic>>? allOutbounds,
      Map<String, List<String>>? urltestGroupTags,
      {bool sortByLatency = false}) {
    var configs = ServerManager.getConfig();
    var use = ServerManager.getUse();

    for (var group in configs.items) {
      if (!group.enable) {
        continue;
      }

      for (var server in group.servers) {
        if (server.tag.isEmpty ||
            server.server.isEmpty ||
            server.serverport == 0) {
          continue;
        }
        String disableKey = ServerUse.getDisableKey(server);
        bool disabled = use.disable.contains(disableKey);
        if (disabled) {
          continue;
        }
        if (!allOutboundsTags.contains(server.tag)) {
          if (!SingboxConfigBuilder.canBuildOutbound(server)) {
            continue;
          }

          allOutboundsTags.add(server.tag);
          allOutbounds?.item1.add(server);

          String tag = ServerManager.getUrltestTagForCustom(group.remark);

          if (urltestGroupTags != null) {
            List<String>? tg = urltestGroupTags[tag];
            if (tg == null) {
              urltestGroupTags[tag] = [server.tag];
            } else {
              tg.add(server.tag);
            }
          }
        }
      }
    }

    if (allOutbounds != null) {
      if (sortByLatency) {
        allOutbounds.item1.sort((a, b) {
          int? lantecyA = int.tryParse(a.latency);
          int? lantecyB = int.tryParse(b.latency);
          if (lantecyA == null && lantecyB == null) {
            return 0;
          }
          if (lantecyA != null && lantecyB == null) {
            return -1;
          }
          if (lantecyA == null && lantecyB != null) {
            return 1;
          }
          return lantecyA! - lantecyB!;
        });
      }
      for (var server in allOutbounds.item1) {
        allOutbounds.item2.add(SingboxConfigBuilder.buildOutbound(server));
      }
    }
  }

  static Future<ReturnResultError?> setServer(
      ProxyConfig currentServer,
      VPNServiceSetServerOptions options,
      SingboxExportType exportType,
      String? hostAddress,
      String secret,
      String savePath) async {
    dynamic selectOutbound;

    Map<String, List<String>> testGroupTags = {};
    Set<String> allOutboundsTags = {};
    Tuple2<List<ProxyConfig>, List<dynamic>> allOutbounds = Tuple2([], []);

    getOutboundsWithoutUrltest(allOutboundsTags, allOutbounds, testGroupTags,
        sortByLatency:
            currentServer.groupid == ServerManager.getUrltestGroupId());
    Set<String> selectOutboundTags = getOutboundsForUrltest(
      allOutboundsTags,
      allOutbounds.item1,
    );
    if (selectOutboundTags.isEmpty) {
      return ReturnResultError(options.expiredServerError, report: false);
    }
    Set<String> urltestCustomGroupTags = {};
    List<SingboxOutboundUrltest> urltests =
        getUrltests(allOutboundsTags, uniTag: true, includeEmpty: false);

    if (currentServer.groupid == ServerManager.getUrltestGroupId()) {
      if (currentServer.tag != kOutboundTagUrltest) {
        String tag = ServerManager.getUrltestTagForCustom(currentServer.tag);
        bool hasUrltest = false;

        for (var urltest in urltests) {
          if (urltest.tag == tag) {
            hasUrltest = true;
            break;
          }
        }
        if (!hasUrltest) {
          return ReturnResultError(
              "[${currentServer.tag}] ${options.invalidServerError}",
              report: false);
        }
      }
    }
    for (var urltest in urltests) {
      allOutbounds.item2.add(urltest.toJson());
      allOutboundsTags.add(urltest.tag);
      urltestCustomGroupTags.add(urltest.tag);
    }

    options.allOutboundsTags = allOutboundsTags;

    if (currentServer.groupid == ServerManager.getUrltestGroupId()) {
      if (selectOutboundTags.isEmpty) {
        return ReturnResultError(options.expiredServerError, report: false);
      }
      if (currentServer.tag != kOutboundTypeUrltest) {
        selectOutbound = {
          "tag": ServerManager.getUrltestTagForCustom(currentServer.tag),
          "type": currentServer.type,
        };
      }
    } else if (currentServer.groupid == ServerManager.getDirectGroupId() ||
        currentServer.groupid == ServerManager.getBlockGroupId()) {
      selectOutbound = {"tag": currentServer.tag, "type": currentServer.type};
    } else {
      String disableKey = ServerUse.getDisableKey(currentServer);
      bool disabled = ServerManager.getUse().disable.contains(disableKey);
      if (disabled) {
        return ReturnResultError(
            "[${currentServer.tag}] ${options.disabledServerError}",
            report: false);
      }
      if (!allOutboundsTags.contains(currentServer.tag)) {
        return ReturnResultError(
            "[${currentServer.tag}] ${options.invalidServerError}",
            report: false);
      }

      selectOutbound = SingboxConfigBuilder.buildOutbound(currentServer);
    }

    List<Tuple2<DiversionRulesGroup, ProxyConfig>> diversionGroups =
        ServerManager.getDiversionGroups();

    var result = await VPNService.setOutbound(
        selectOutbound,
        selectOutboundTags,
        testGroupTags,
        allOutbounds.item1,
        allOutbounds.item2,
        allOutboundsTags,
        urltestCustomGroupTags,
        diversionGroups,
        exportType,
        hostAddress,
        secret,
        savePath);
    if (result != null) {
      return result;
    }
    _current = currentServer;
    return null;
  }

  static Future<ReturnResultError?> setOutbound(
      dynamic selectOutbound,
      Set<String> selectOutboundTags,
      Map<String, List<String>> testGroupTags,
      List<ProxyConfig> allOutboundProxys,
      List<dynamic> outbounds,
      Set<String> allOutboundsTags,
      Set<String> urltestCustomGroupTags,
      List<Tuple2<DiversionRulesGroup, ProxyConfig>> diversionGroups,
      SingboxExportType exportType,
      String? hostAddress,
      String secret,
      String savePath) async {
    String configPath = savePath;
    String serviceLogFileName = PathUtils.serviceLogFileName();
    String cacheDBFileName = PathUtils.cacheDBFileName();
    String serviceLogFilePath = await PathUtils.serviceLogFilePath();
    String cacheDBFilePath = await PathUtils.cacheDBFilePath();
    if (secret.isEmpty) {
      secret = await ClashApi.getSecret();
    }

    String geoSiteDir = exportType == SingboxExportType.karing
        ? await PathUtils.geoSiteDir()
        : "";
    String geoIpDir = exportType == SingboxExportType.karing
        ? await PathUtils.geoIpDir()
        : "";
    String aclDir = exportType == SingboxExportType.karing
        ? await PathUtils.geoAclDir()
        : "";

    var setting = SettingManager.getConfig();
    String? clientSubnet =
        await GeoipSubnetUtils.subnet(setting.regionCode.toLowerCase());
    if ((exportType == SingboxExportType.karing) &&
        !setting.novice &&
        setting.originSBProfile.isNotEmpty) {
      try {
        var file = File(setting.originSBProfile);
        if (!await file.exists()) {
          return ReturnResultError("${setting.originSBProfile} not exists");
        }
        String content = await file.readAsString();
        var config = jsonDecode(content);
        var log = config["log"] ?? {};
        var experimental = config["experimental"] ?? {};
        var inbounds = config["inbounds"] ?? [];

        log["level"] = SingboxConfigBuilder.logLevel();
        log["output"] = serviceLogFileName;

        var clashapi = experimental["clash_api"] ?? {};
        var cachefile = experimental["cache_file"] ?? {};
        clashapi["external_controller"] =
            "127.0.0.1:${setting.proxy.controlPort}";
        clashapi["secret"] = secret;

        cachefile["path"] = cacheDBFileName;
        experimental["clash_api"] = clashapi;
        experimental["cache_file"] = cachefile;

        for (var inbound in inbounds) {
          if (inbound["type"] == "tun") {
            inbound["interface_name"] =
                "Karing TUN Network Adapter for Origin sb";
            var platform = inbound["platform"];
            if (platform is Map) {
              var httpproxy = platform["http_proxy"];
              if (httpproxy is Map) {
                if (httpproxy["server_port"] is num) {
                  httpproxy["server_port"] = setting.proxy.mixedRulePort;
                }
              }
            }
          } else if (inbound["type"] == "mixed") {
            if (inbound["listen_port"] is num) {
              if (kInboundTagMixedRule == inbound["tag"]) {
                inbound["listen_port"] = setting.proxy.mixedRulePort;
              } else if (kInboundTagMixedDirect == inbound["tag"]) {
                inbound["listen_port"] = setting.proxy.mixedDirectPort;
              } else if (kInboundTagMixedProxy == inbound["tag"]) {
                inbound["listen_port"] = setting.proxy.mixedForwordPort;
              }
            }
          }
        }

        config["log"] = log;
        config["inbounds"] = inbounds;
        config["experimental"] = experimental;
        const JsonEncoder encoder = JsonEncoder.withIndent('  ');
        String configContent = encoder.convert(config);
        await File(configPath).writeAsString(configContent, flush: true);
        return null;
      } catch (err, stacktrace) {
        return ReturnResultError(err.toString());
      }
    }

    bool tunMode = await VPNService.getTunMode();
    List<NetInterfacesInfo> interfaces = await NetworkUtils.getInterfaces(
        addressType: InternetAddressType.IPv4, filter: !Platform.isWindows);

    SingboxConfig config = SingboxConfig();
    String externalControllerHost = (exportType == SingboxExportType.tvos ||
            (setting.dev.devMode && setting.dev.allowRemoteAccessHtmlBoard))
        ? "0.0.0.0"
        : "127.0.0.1";
    String pprofHost =
        (setting.dev.devMode && setting.dev.allowRemoteAccessPprof)
            ? "0.0.0.0"
            : "127.0.0.1";
    config.experimental = SingboxConfigBuilder.experimental(
        externalControllerHost, pprofHost, secret, cacheDBFileName);
    config.log = SingboxConfigBuilder.log(serviceLogFileName);
    if (!setting.novice && setting.ntp.enable) {
      config.ntp = SingboxConfigBuilder.ntp();
    }

    config.dns = SingboxConfigBuilder.dns(tunMode, exportType, clientSubnet);
    config.inbounds = SingboxConfigBuilder.inbounds(
        setting.proxyAll, tunMode, interfaces, exportType, hostAddress);

    config.outbounds = SingboxConfigBuilder.outbounds(
        setting.proxyAll,
        selectOutboundTags,
        testGroupTags,
        urltestCustomGroupTags,
        outbounds,
        selectOutbound,
        allOutboundsTags,
        setting.frontProxy,
        exportType);

    var sitecodesHashCode = await RulesetCodesUtils.siteCodesHashCode();
    var ipcodesHashCode = await RulesetCodesUtils.ipCodesHashCode();
    var aclcodesHashCode = await RulesetCodesUtils.aclCodesHashCode();
    Map<String, List<String>> staticIPs = {};
    config.route = SingboxConfigBuilder.route(
        geoSiteDir,
        geoIpDir,
        aclDir,
        sitecodesHashCode,
        ipcodesHashCode,
        aclcodesHashCode,
        setting.proxyAll,
        outbounds,
        allOutboundsTags,
        selectOutbound,
        diversionGroups,
        config.inbounds,
        config.dns,
        staticIPs,
        "",
        exportType);
    SingboxConfigBuilder.optimizationOutboundsByRoute(
        config.outbounds, urltestCustomGroupTags, config.route);
    bool hasRemoteRuleset = false;
    for (var ruleset in config.route.rule_set) {
      String? type = ruleset["type"];
      if (type == "remote") {
        hasRemoteRuleset = true;
        break;
      }
    }

    if (!hasRemoteRuleset &&
        (setting.dns.proxyResolveMode !=
            SettingConfigItemDNSProxyResolveMode.fakeip)) {
      config.experimental.cache_file.enabled = false;
    }

    if (PlatformUtils.isPC()) {
      if (setting.proxy.enableCluster) {
        List<dynamic> routes = [];
        var inbounds =
            await ProxyCluster.inboundsAndRulesFrom(allOutboundProxys, routes);
        config.inbounds.addAll(inbounds);
        config.route.rules.addAll(routes);
      }
    }

    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String configContent = encoder.convert(config);

    try {
      await File(configPath).writeAsString(configContent, flush: true);
    } catch (err) {
      return ReturnResultError(err.toString());
    }

    if (exportType == SingboxExportType.karing) {
      const inProduction = bool.fromEnvironment("dart.vm.product");
      if (inProduction) {
        try {
          var file = File(serviceLogFileName);
          var fileSize = await file.length();
          if (fileSize > 500 * 1024) {
            await file.writeAsString("", flush: true);
          }
        } catch (err) {}
      }
      if (Platform.isIOS ||
          Platform.isMacOS ||
          Platform.isAndroid ||
          Platform.isLinux) {
        var fileLog =
            File(serviceLogFilePath); //日志文件必须先创建,否则ios及macos下sb会包chown错误
        if (!await fileLog.exists()) {
          await fileLog.create();
        }
        var fileCache = File(cacheDBFilePath); //文件必须先创建,否则ios及macos下sb会包chown错误
        if (!await fileCache.exists()) {
          await fileCache.create();
        }
      }
    }

    return null;
  }

  static String getLaunchAtStartupTaskName() {
    return "${AppUtils.getName()} Autorun";
  }

  static Future<ReturnResultError?> setLaunchAtStartup(bool enable) async {
    if (PlatformUtils.isPC()) {
      try {
        if (enable) {
          if (Platform.isWindows) {
            bool admin = isRunAsAdmin();
            await FlutterVpnService.autoStartCreate(
                getLaunchAtStartupTaskName(), Platform.resolvedExecutable,
                processArgs: AppArgs.launchStartup, runElevated: admin);
            return null;
          }
        } else {
          await FlutterVpnService.autoStartDelete(getLaunchAtStartupTaskName());
          await launchAtStartup.disable();
        }
      } catch (err, stacktrace) {
        return ReturnResultError(err.toString());
      }
    }
    return null;
  }

  static Future<bool> getLaunchAtStartup() async {
    if (PlatformUtils.isPC()) {
      try {
        if (Platform.isWindows) {
          if (await FlutterVpnService.autoStartIsActive(
              getLaunchAtStartupTaskName())) {
            return true;
          }
        }
        return await launchAtStartup.isEnabled();
      } catch (err, stacktrace) {
        return false;
      }
    }
    return false;
  }

  static Future<ProxyOption> getSystemProxyOptions() async {
    var proxy = SettingManager.getConfig().proxy;
    if (Platform.isMacOS) {
      List<NetInterfacesInfo> interfaces = await NetworkUtils.getInterfaces(
          addressType: InternetAddressType.IPv4);
      if (proxy.host == SettingConfigItemProxy.hostNetwork) {
        for (var face in interfaces) {
          if (face.name.startsWith("en")) {
            return ProxyOption(face.address, proxy.mixedRulePort);
          }
        }
      }
    }
    return ProxyOption(localhost, proxy.mixedRulePort);
  }

  static Future<void> setDefaultOutbound() async {
    String configPath = await PathUtils.serviceCoreConfigFilePath();
    bool exists = await File(configPath).exists();
    if (exists) {
      return;
    }

    SingboxConfig config = SingboxConfig();
    config.log = SingboxConfigBuilder.log(await PathUtils.serviceLogFilePath());
    config.ntp = SingboxConfigBuilder.ntp();
    config.dns =
        SingboxConfigBuilder.dns(false, SingboxExportType.karing, null);
    config.inbounds = SingboxConfigBuilder.inbounds(
        false, false, [], SingboxExportType.karing, null);
    config.outbounds = SingboxConfigBuilder.outbounds(
        false, {}, null, null, [], null, {}, [], SingboxExportType.karing);
    //String configContent = jsonEncode(config);
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String configContent = encoder.convert(config);

    await File(configPath).writeAsString(configContent, flush: true);
  }

  static String getBundleId() {
    if (Platform.isIOS || Platform.isMacOS) {
      if (_useSystemExtension) {
        return "com.nebula.karing.karingServiceSE";
      }

      return AppUtils.getBundleId();
    }
    return "";
  }
}
