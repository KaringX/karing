import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:karing/app/utils/convert_utils.dart';

class RemoteIspConfigError {
  int ret = 0;
  String msg = "";
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    ret = map["ret"] ?? 0;
    msg = map["msg"] ?? "";
  }
}

class RemoteISPConfig {
  String latestCheck = "";
  String id = "";
  String name = "";
  String home = "";
  String connect = "";
  String faq = "";
  String getTranffic = "";
  bool getProfile = false;
  String customerService = "";
  String follow = "";
  String notice = "";
  String config = "";
  String panelSystem = "";
  List<String> proxyDomains = [];
  Duration noticeUpdateInterval = Duration(minutes: 3 * 60);

  Map<String, dynamic> toJson() => {
        'latest_check': latestCheck,
        "pid": id,
        "name": name,
        "home": home,
        "connect": connect,
        "faq": faq,
        "get_tranffic": getTranffic,
        "get_profile": getProfile,
        "customer_service": customerService,
        "follow": follow,
        "notice": notice,
        "config": config,
        "panel_system": panelSystem,
        "proxy_domains": proxyDomains,
        "notice_update_interval": noticeUpdateInterval.inMinutes,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    latestCheck = map["latest_check"] ?? "";
    id = (map["pid"] ?? "").toString();
    name = map["name"] ?? "";
    home = map["home"] ?? "";
    connect = map["connect"] ?? "";
    faq = map["faq"] ?? "";
    getTranffic = map["get_tranffic"] ?? home;
    if (getTranffic.isEmpty) {
      getTranffic = home;
    }
    getProfile = map["get_profile"] ?? false;
    customerService = map["customer_service"] ?? "";
    follow = map["follow"] ?? "";
    notice = map["notice"] ?? "";
    config = map["config"] ?? "";
    panelSystem = map["panel_system"] ?? "";

    proxyDomains =
        ConvertUtils.getListStringFromDynamic(map["proxy_domains"], true, [])!;
    proxyDomains.removeWhere((element) => element.isEmpty);
    noticeUpdateInterval =
        Duration(minutes: map["notice_update_interval"] ?? 3 * 60);
    if (noticeUpdateInterval.inMinutes < 10) {
      noticeUpdateInterval = Duration(minutes: 10);
    }
  }

  static RemoteISPConfig fromJsonStatic(Map<String, dynamic>? map) {
    RemoteISPConfig config = RemoteISPConfig();
    config.fromJson(map);
    return config;
  }

  static Future<RemoteISPConfig> getLocalConfig() async {
    RemoteISPConfig rconfig = RemoteISPConfig();
    try {
      String content =
          await rootBundle.loadString("assets/datas/isp.json", cache: false);
      if (content.isNotEmpty) {
        var config = jsonDecode(content);
        rconfig.fromJson(config);
      }
    } catch (err, stacktrace) {}
    return rconfig;
  }
}
