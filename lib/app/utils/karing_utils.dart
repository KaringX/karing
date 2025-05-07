// ignore_for_file: empty_catches, no_leading_underscores_for_local_identifiers

import 'dart:convert';
import 'dart:io';

import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/remote_config.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/install_referrer_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';

class KaringAutoupdateItem {
  String platform = "";

  List<String> channels = [];

  List<String> abis = [];
  String version = "";
  String url = "";
  String fileName = "";
  List<String> updateChannel = []; //stable, beta
  bool force = false;
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    platform = map["platform"] ?? "";

    var _channels = map["channels"] ?? [];
    for (var i in _channels) {
      channels.add(i as String);
    }

    var _abis = map["abis"] ?? [];
    for (var i in _abis) {
      abis.add(i as String);
    }
    version = map["version"] ?? "";
    url = map["url"] ?? "";
    fileName = map["file_name"] ?? "";
    var updateChannel = map["version_channel"] ?? [];
    for (var i in updateChannel) {
      updateChannel.add(i as String);
    }
    force = map["force"] ?? false;
  }
}

class KaringNoticeItem {
  String platform = "";
  String channel = "";
  String updateTime = "";
  String expireTime = "";
  String title = "";
  String content = "";
  String url = "";
  String versionRegex = "";
  String regionCode = "";

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    platform = map["platform"] ?? "";
    channel = map["channel"] ?? "";
    updateTime = map["update_time"] ?? "";
    expireTime = map["expire_time"] ?? "";
    title = map["title"] ?? "";
    content = map["content"] ?? "";
    url = map["url"] ?? "";
    versionRegex = map["version_regex"] ?? "";
    regionCode = (map["region_code"] ?? "").toLowerCase();
  }
}

abstract final class KaringUtils {
  static Future<ReturnResult<List<KaringAutoupdateItem>>>
      getAutoupdate() async {
    String url = RemoteConfigManager.getConfig().autoUpdate;
    late ReturnResult<String> response;
    List<int?> ports = await VPNService.getPortsByPrefer(false);
    for (var port in ports) {
      response = await HttpUtils.httpGetRequest(
          url, port, null, const Duration(seconds: 10), null, null);
      if (response.error == null) {
        break;
      }
    }
    List<KaringAutoupdateItem> items = [];
    if (response.error != null) {
      return ReturnResult(error: response.error);
    }
    try {
      if (response.data!.isNotEmpty) {
        var decodedResponse = jsonDecode(response.data!);
        if (decodedResponse is List) {
          for (var i in decodedResponse) {
            KaringAutoupdateItem item = KaringAutoupdateItem();
            item.fromJson(i);
            if (item.platform == Platform.operatingSystem) {
              items.add(item);
            }
          }
        }
      }
    } catch (err, _) {
      Log.i('KaringUtils getAutoupdate exception ${err.toString()}');
    }
    return ReturnResult(data: items);
  }

  static Future<ReturnResult<RemoteConfig>> getRemoteConfig() async {
    RemoteConfig rc = RemoteConfig();
    String url = RemoteConfigManager.getConfig().config;
    late ReturnResult<String> response;
    List<int?> ports = await VPNService.getPortsByPrefer(false);
    for (var port in ports) {
      response = await HttpUtils.httpGetRequest(
          url, port, null, const Duration(seconds: 10), null, null);
      if (response.error == null) {
        break;
      }
    }

    if (response.error != null) {
      return ReturnResult(error: response.error);
    }
    try {
      if (response.data!.isNotEmpty) {
        var decodedResponse = jsonDecode(response.data!);
        rc.fromJson(decodedResponse);
      }
    } catch (err, _) {
      Log.i('KaringUtils getRemoteConfig exception ${err.toString()}');
    }
    return ReturnResult(data: rc);
  }

  static Future<ReturnResult<RemoteISPConfig>> getRemoteISPConfig(
      String ispId) async {
    if (ispId.isEmpty) {
      return ReturnResult(error: ReturnResultError("ISP code is empty"));
    }

    RemoteISPConfig rc = RemoteISPConfig();
    String url = await UrlLauncherUtils.reorganizationUrlWithAnchor(
        RemoteConfigManager.getConfig().ispPrepare(ispId),
        bodyLen: int.parse(ispId));
    late ReturnResult<String> response;
    List<int?> ports = await VPNService.getPortsByPrefer(false);
    for (var port in ports) {
      response = await HttpUtils.httpGetRequest(
          url, port, null, const Duration(seconds: 5), null, null);
      if (response.error == null) {
        break;
      }
    }

    if (response.error != null) {
      return ReturnResult(error: response.error);
    }
    try {
      if (response.data!.isNotEmpty) {
        var decodedResponse = jsonDecode(response.data!);
        rc.fromJson(decodedResponse);
      }
    } catch (err, _) {
      Log.i('KaringUtils getRemoteISPConfig exception ${err.toString()}');
    }
    return ReturnResult(data: rc);
  }

  static Future<ReturnResult<KaringNoticeItem>> getNotice(String url) async {
    if (url.isEmpty) {
      return ReturnResult(error: ReturnResultError("url is empty"));
    }
    var settingConfig = SettingManager.getConfig();

    String regionCode = settingConfig.regionCode.toLowerCase();

    late ReturnResult<String> response;
    List<int?> ports = await VPNService.getPortsByPrefer(false);

    for (var port in ports) {
      response = await HttpUtils.httpGetRequest(
          url, port, null, const Duration(seconds: 10), null, null);
      if (response.error == null) {
        break;
      }
    }

    if (response.error != null) {
      return ReturnResult(error: response.error);
    }
    String version = AppUtils.getBuildinVersion();
    try {
      if (response.data!.isNotEmpty) {
        var decodedResponse = jsonDecode(response.data!);
        if (decodedResponse is List) {
          String channelName = await InstallReferrerUtils.getString();
          for (var i in decodedResponse) {
            KaringNoticeItem item = KaringNoticeItem();
            item.fromJson(i);
            if (item.platform == Platform.operatingSystem) {
              List channels = item.channel.split(",");
              if (channels.contains("*") || channels.contains(channelName)) {
                List regionCodes = item.regionCode.split(",");
                if (item.regionCode.isEmpty ||
                    regionCodes.contains("*") ||
                    regionCodes.contains(regionCode)) {
                  List versions = item.versionRegex.split(",");
                  if (item.versionRegex.isEmpty ||
                      versions.contains("*") ||
                      versions.contains(version)) {
                    if (item.expireTime.isNotEmpty) {
                      DateTime? date = DateTime.tryParse(item.expireTime);
                      if (date != null && date.isBefore(DateTime.now())) {
                        return ReturnResult(data: item);
                      }
                    } else {
                      return ReturnResult(data: item);
                    }
                  }
                }
              }
            }
          }
        }
      }
    } catch (err, _) {
      Log.i('KaringUtils getNotice exception ${err.toString()}');
    }
    return ReturnResult(error: ReturnResultError("not found"));
  }
}
