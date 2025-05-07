import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:build_info/build_info.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/app_url_utils.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/did.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/install_referrer_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/version_compare_utils.dart';
import 'package:package_info_plus/package_info_plus.dart';

enum AnalyticsLevel { debug, info, warning, error, fatal }

const int analyticsEventTypeUA = 1 << 0;
const int analyticsEventTypeApp = 1 << 1;
const int analyticsEventTypeErr = 1 << 2;
const int analyticsEventTypeException = 1 << 3;
const int analyticsEventTypeActive = 1 << 4;

const int analyticsEventTypeOnlyActive = analyticsEventTypeActive;

const int analyticsEventTypeNoUA = analyticsEventTypeApp |
    analyticsEventTypeErr |
    analyticsEventTypeException |
    analyticsEventTypeActive;

const int analyticsEventTypeAll = analyticsEventTypeUA |
    analyticsEventTypeApp |
    analyticsEventTypeErr |
    analyticsEventTypeException |
    analyticsEventTypeActive;

class AnalyticsCacheItem {
  int type = 0;
  String name = "";
  Map<String, Object?>? params;
  DateTime ts = DateTime.now();
  bool repeatable = false;
}

abstract final class AnalyticsUtils {
  static int _analyticsEventType = analyticsEventTypeAll;

  static Timer? _timer;
  static BuildInfoData? _buildInfo;
  static String? _installRefer;
  static bool? _inProduction;
  static String? _did;
  static bool? _firstTime;
  static PackageInfo? _packageInfo;
  static String? _version;
  static String? _abis;
  static DateTime? _cacheTime;
  static List<AnalyticsCacheItem> _cacheList = [];
  static final DateTime _startTime = DateTime.now();
  static String? _operatingSystem; //频繁调用会有异常
  static String? _operatingSystemVersion; //频繁调用会有异常

  static void setEventType(int type) {
    _analyticsEventType = type;
  }

  static String getStartTime() {
    Duration dur = DateTime.now().difference(_startTime);
    return dur.toString().split(".")[0].replaceAll("-", "");
  }

  static Future<void> logEvent(
      {required int analyticsEventType,
      required String name,
      Map<String, Object?>? parameters,
      bool forceSubmit = false,
      bool repeatable = false}) async {
    try {
      if (_analyticsEventType != analyticsEventTypeOnlyActive) {
        if (RemoteConfigManager.rejectAnalyticsSubmit()) {
          setEventType(analyticsEventTypeOnlyActive);
        }
      }

      if ((_analyticsEventType & analyticsEventType) == 0) {
        return;
      }

      _inProduction ??= const bool.fromEnvironment("dart.vm.product");
      if (_inProduction != true) {
        return;
      }
      _operatingSystem ??= Platform.operatingSystem;
      _operatingSystemVersion ??= Platform.operatingSystemVersion;

      if (analyticsEventType != analyticsEventTypeActive) {
        bool reject = rejectSubmit();
        if (reject) {
          return;
        }
      }

      _timer ??= Timer.periodic(const Duration(seconds: 60), (timer) async {
        await trySubmit(false);
      });

      if (_cacheList.length < 100) {
        AnalyticsCacheItem item = AnalyticsCacheItem();
        item.type = analyticsEventType;

        item.name = name;
        item.params = parameters;
        item.ts = DateTime.now();
        item.repeatable = repeatable;
        _cacheList.add(item);
      }
      await trySubmit(forceSubmit);
    } catch (err) {
      Log.w("AnalyticsUtils.logEvent exception ${err.toString()} ");
    }
  }

  static Future<void> trySubmit(bool forceSubmit) async {
    var now = DateTime.now();
    if (!forceSubmit) {
      if (_cacheTime == null || _cacheList.isEmpty) {
        _cacheTime = now;
        return;
      }

      var dif = now.difference(_cacheTime!);
      if (dif.inSeconds < 60) {
        return;
      }
      _cacheTime = now;
    }

    Map<String, Object?> cp = await getParameters();
    List<String> keys = [];
    int tsStart = 0;
    Set<int> noRepeat = {};
    for (var i in _cacheList) {
      if (tsStart == 0) {
        tsStart = i.ts.millisecondsSinceEpoch;
      }
      Map<String, Object?> allParameters = {};
      allParameters["type"] = getEventTypeString(i.type);
      allParameters["name"] = i.name;
      allParameters["params"] = i.params;
      if (!i.repeatable) {
        String content = jsonEncode(allParameters);
        int hashcode = content.hashCode;
        if (noRepeat.contains(hashcode)) {
          continue;
        }
        noRepeat.add(hashcode);
      }
      allParameters["ts_s"] = tsStart;
      allParameters["ts_i"] = keys.length + 1;
      allParameters["ts"] = i.ts.millisecondsSinceEpoch;
      try {
        keys.add(jsonEncode(allParameters));
      } catch (err) {
        Log.w("AnalyticsUtils.trySubmit encode exception ${err.toString()} ");
      }
    }
    _cacheList = [];
    String outpost = RemoteConfigManager.getConfig().outpost;
    String queryParams1 = AppUrlUtils.getQueryParamsForAnalytics(keys.length);

    var body = {"common": cp, "event": keys};
    String content = jsonEncode(body);
    List<int?> ports = await VPNService.getPortsByPrefer(false);
    int directPort = SettingManager.getConfig().proxy.mixedDirectPort;
    for (var port in ports) {
      bool direct = port == null || port == directPort;
      var uri = Uri.parse("$outpost?$queryParams1&noproxy=$direct");
      bool ok = await submit(uri, port, content);
      if (ok) {
        break;
      }
    }
  }

  static Future<bool> submit(Uri uri, int? proxyPort, String content) async {
    var client = HttpClient();
    try {
      client.idleTimeout = const Duration(seconds: 5);
      client.userAgent = await HttpUtils.getUserAgent();
      if (proxyPort != null) {
        client.findProxy = (Uri uri) => "PROXY 127.0.0.1:$proxyPort";
      }
      HttpClientRequest request = await client.postUrl(uri);

      request.headers.set(HttpHeaders.connectionHeader, "close");
      request.headers.set(HttpHeaders.acceptHeader, "*/*");
      request.headers.set(
          HttpHeaders.contentTypeHeader, "application/json; charset=UTF-8");

      var bytes = request.encoding.encode(content);
      request.headers
          .set(HttpHeaders.contentLengthHeader, bytes.length.toString());
      request.add(bytes);

      HttpClientResponse response = await request.close();
      /*X509Certificate? certificate = response.certificate;
      if (certificate != null) {
        String host = RemoteConfigManager.getConfig().host;
        if (!certificate.issuer.contains("/C=US/O=Google Trust Services") ||
            certificate.subject != "/CN=$host") {
        }
      }*/
    } catch (err) {
      Log.w('AnalyticsUtils.trySubmit exception ${err.toString()}');
      return false;
    } finally {
      client.close(force: true);
    }
    return true;
  }

  static Future<Map<String, Object?>> getParameters() async {
    var config = SettingManager.getConfig();
    var remoteConfig = RemoteConfigManager.getConfig();
    if (!Platform.isLinux) {
      try {
        _buildInfo ??= await BuildInfo.fromPlatform();
      } catch (err) {}
    }

    _installRefer ??= await InstallReferrerUtils.getString();
    _did ??= await Did.getDid();
    _firstTime ??= await Did.getFirstTime();
    _packageInfo ??= await PackageInfo.fromPlatform();
    _version ??= AppUtils.getBuildinVersion();
    _abis ??= VPNService.getABIs().join(",");
    bool tun = await VPNService.getTunMode();
    var remoteISPConfig = RemoteISPConfigManager.getConfig();

    String planguageTag = [
      ui.PlatformDispatcher.instance.locale.languageCode,
      ui.PlatformDispatcher.instance.locale.countryCode ?? ""
    ].join("-");
    Map<String, Object?> parameters = {};
    parameters["r_c"] = config.regionCode;
    parameters["s_r_c"] =
        ui.PlatformDispatcher.instance.locale.countryCode ?? "";
    parameters["l_t"] = config.languageTag;
    parameters["s_l_t"] = planguageTag;
    parameters["t_z_o"] = DateTime.now().timeZoneOffset.inHours;
    parameters["p"] = _operatingSystem;
    parameters["p_v"] = _operatingSystemVersion;
    parameters["v"] = _version;
    parameters["abis"] = _abis;
    parameters["i_d"] =
        _buildInfo != null ? _buildInfo!.installDate.toString() : "";
    parameters["i_r"] = _installRefer!;
    parameters["i_s"] = _packageInfo!.installerStore;
    parameters["did"] = _did!;
    parameters["new"] = _firstTime!;
    parameters["t_f_l"] = getStartTime();
    parameters["tun"] = tun;
    parameters["a_u_c"] = config.autoUpdateChannel;
    parameters["isp_id"] = remoteISPConfig.id;
    parameters["a_b_e"] =
        remoteConfig.adManualEnable && config.ads.bannerEnable;
    parameters["p_c_e"] = config.proxy.enableCluster;

    return parameters;
  }

  static String getEventTypeString(int type) {
    if (type == analyticsEventTypeUA) {
      return "ua";
    }
    if (type == analyticsEventTypeApp) {
      return "app";
    }
    if (type == analyticsEventTypeErr) {
      return "err";
    }
    if (type == analyticsEventTypeException) {
      return "exception";
    }
    if (type == analyticsEventTypeActive) {
      return "active";
    }

    return type.toString();
  }

  static bool rejectSubmit() {
    if (RemoteConfigManager.getConfig().analyticsMinVersion.isNotEmpty) {
      String version = AppUtils.getBuildinVersion();
      if (VersionCompareUtils.compareVersion(
              version, RemoteConfigManager.getConfig().analyticsMinVersion) <
          0) {
        return true;
      }
    }
    return false;
  }
}
