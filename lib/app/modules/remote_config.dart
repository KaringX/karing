import 'dart:io';

import 'package:karing/app/utils/convert_utils.dart';
import 'package:karing/app/utils/install_referrer_utils.dart';

class RemoteConfigChannel {
  String platform = "";
  String channel = "";
  String url = "";
  String rateUrl = "";

  Map<String, dynamic> toJson() => {
        'platform': platform,
        'channel': channel,
        "url": url,
        "rate_url": rateUrl,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    platform = map["platform"] ?? "";
    channel = map["channel"] ?? "";
    url = map["url"] ?? "";
    rateUrl = map["rate_url"] ?? "";
  }

  static RemoteConfigChannel fromJsonStatic(Map<String, dynamic>? map) {
    RemoteConfigChannel config = RemoteConfigChannel();
    config.fromJson(map);
    return config;
  }
}

class RemoteConfigAds {
  String platform = "";
  List<String> region = [];
  int percent = 0;

  Map<String, dynamic> toJson() => {
        'platform': platform,
        'region': region,
        'pc': percent,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    platform = map["platform"] ?? "";
    region = ConvertUtils.getListStringFromDynamic(map["region"], true, [])!;
    percent = map["pc"] ?? 0;
  }

  static RemoteConfigAds fromJsonStatic(Map<String, dynamic>? map) {
    RemoteConfigAds config = RemoteConfigAds();
    config.fromJson(map);
    return config;
  }
}

class RemoteConfigGetProfile {
  String platform = "";
  List<String> region = [];
  String url = "";

  Map<String, dynamic> toJson() => {
        'platform': platform,
        'region': region,
        'url': url,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    platform = map["platform"] ?? "";
    region = ConvertUtils.getListStringFromDynamic(map["region"], true, [])!;
    url = map["url"] ?? "";
  }

  static RemoteConfigGetProfile fromJsonStatic(Map<String, dynamic>? map) {
    RemoteConfigGetProfile config = RemoteConfigGetProfile();
    config.fromJson(map);
    return config;
  }
}

class RemoteConfigDonate {
  String name = "";
  String url = "";
  Map<String, dynamic> toJson() => {
        'name': name,
        'url': url,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    name = map["name"] ?? "";
    url = map["url"] ?? "";
  }

  static RemoteConfigDonate fromJsonStatic(Map<String, dynamic>? map) {
    RemoteConfigDonate config = RemoteConfigDonate();
    config.fromJson(map);
    return config;
  }
}

class RemoteConfig {
  static const String kDefaultSentry = "o4508911573663744.ingest.sentry.io";
  static const String kDefaultHost = "karing.app";
  static const String kDefaultNotice = "https://dot.$kDefaultHost/notice2.json";
  static const String kDefaultConfig = "https://dot.$kDefaultHost/config.json";
  static const String kDefaultAutoUpdate =
      "https://dot.$kDefaultHost/autoupdate.json";
  static const String kDefaultOutpost = "https://outpost.$kDefaultHost/put";
  static const String kDefaultHarry = "https://harry.$kDefaultHost/spell/";
  static const String kDefaultGetTranffic =
      "https://outpost.$kDefaultHost/airport";
  static const String kDefaultGetTranfficFrom = "";
  static const String kDefaultTutorial = "https://$kDefaultHost/quickstart/";
  static const String kDefaultFaq = "https://$kDefaultHost/faq/";
  static const String kDefaultRulesets =
      "https://github.com/KaringX/karing-ruleset";
  static const String kDefaultDownload = "https://$kDefaultHost/download/";
  static const String kDefaultTelegram = "https://t.me/KaringApp";
  static const String kDefaultFollow = "https://github.com/KaringX/karing";
  static const String kDefaultPrivacyPolicy =
      "https://dot.$kDefaultHost/privacy_policy.txt";
  static const String kDefaultDnsLeakDetection = "https://browserleaks.com/dns";
  static const String kDefaultProxyLeakDetection = "https://scamalytics.com/";
  static const String kDefaultGeoSite =
      "https://github.com/KaringX/karing-ruleset/raw/sing/geo/geosite";
  static const String kDefaultGeoIp =
      "https://github.com/KaringX/karing-ruleset/raw/sing/geo/geoip";
  static const String kDefaultAcl =
      "https://github.com/KaringX/karing-ruleset/raw/sing/ACL4SSR";
  static const String kIspPanelJs =
      "https://harry.karing.app/assets/bind.js?v=";

  String latestCheck = "";
  List<String> forwards = [];
  List<String> nowarp = ["us", "cn", "ru"];
  String sentryMinVersion = "";
  String analyticsMinVersion = "";
  bool ispBindNeedConnect = true;
  String ispPanelJs = "";
  List<String> faqAnchor = [];
  List<RemoteConfigAds> ad = [];
  bool adManualEnable = false;
  List<RemoteConfigGetProfile> getProfile = [];
  List<RemoteConfigChannel> channels = [];
  String host = kDefaultHost;
  String notice = kDefaultNotice;
  String config = kDefaultConfig;
  String autoUpdate = kDefaultAutoUpdate;
  String outpost = kDefaultOutpost;
  String harry = kDefaultHarry;
  String ispPrepare(String id) {
    return "https://potter.$kDefaultHost/isp/$id/base.json";
  }

  String sentry = kDefaultSentry;
  String getTranffic = kDefaultGetTranffic;
  String getTranfficFrom = kDefaultGetTranfficFrom;
  String tutorial = kDefaultTutorial;
  String faq = kDefaultFaq;
  String rulesets = kDefaultRulesets;
  String download = kDefaultDownload;
  String telegram = kDefaultTelegram;
  String follow = kDefaultFollow;
  String privacyPolicy = kDefaultPrivacyPolicy;
  String dnsLeakDetection = kDefaultDnsLeakDetection;
  String proxyLeakDetection = kDefaultProxyLeakDetection;
  String geosite = kDefaultGeoSite;
  String geoip = kDefaultGeoIp;
  String acl = kDefaultAcl;
  String donateUrl = "";

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'latest_check': latestCheck,
      'forwards': forwards,
      'nowarp': nowarp,
      "sentry_min_version": sentryMinVersion,
      "analytics_min_version": analyticsMinVersion,
      "isp_bind_need_connect": ispBindNeedConnect,
      "isp_panel_js": ispPanelJs,
      'faq_anchor': faqAnchor,
      "ad": ad,
      "ad_manual_enable": adManualEnable,
      "get_profile": getProfile,
      "channel": channels,
    };

    if (harry != kDefaultHarry) {
      ret["harry"] = harry;
    }
    if (sentry != kDefaultSentry) {
      ret["sentry"] = sentry;
    }
    if (getTranffic != kDefaultGetTranffic) {
      ret["get_tranffic"] = getTranffic;
    }
    if (getTranfficFrom != kDefaultGetTranfficFrom) {
      ret["get_tranffic_from"] = getTranfficFrom;
    }
    if (tutorial != kDefaultTutorial) {
      ret["tutorial"] = tutorial;
    }
    if (faq != kDefaultFaq) {
      ret["faq"] = faq;
    }
    if (rulesets != kDefaultRulesets) {
      ret["rulesets"] = rulesets;
    }
    if (download != kDefaultDownload) {
      ret["download"] = download;
    }
    if (telegram != kDefaultTelegram) {
      ret["telegram"] = telegram;
    }
    if (follow != kDefaultFollow) {
      ret["follow"] = follow;
    }
    if (privacyPolicy != kDefaultPrivacyPolicy) {
      ret["privacy_policy"] = privacyPolicy;
    }
    if (dnsLeakDetection != kDefaultDnsLeakDetection) {
      ret["dns_leak_detection"] = dnsLeakDetection;
    }
    if (proxyLeakDetection != kDefaultProxyLeakDetection) {
      ret["proxy_leak_detection"] = proxyLeakDetection;
    }
    if (geosite != kDefaultGeoSite) {
      ret["geosite_rulesets"] = geosite;
    }
    if (geoip != kDefaultGeoIp) {
      ret["geoip_rulesets"] = geoip;
    }
    if (acl != kDefaultAcl) {
      ret["acl_rulesets"] = acl;
    }
    if (donateUrl.isNotEmpty) {
      ret["donate_url"] = donateUrl;
    }

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    latestCheck = map["latest_check"] ?? "";
    forwards =
        ConvertUtils.getListStringFromDynamic(map["forwards"], true, [])!;
    nowarp = ConvertUtils.getListStringFromDynamic(
        map["nowarp"], true, ["us", "cn", "ru"])!;

    sentryMinVersion = map["sentry_min_version"] ?? "";
    analyticsMinVersion = map["analytics_min_version"] ?? "";

    ispBindNeedConnect = map["isp_bind_need_connect"] ?? true;
    ispPanelJs = map["isp_panel_js"] ?? kIspPanelJs;

    faqAnchor =
        ConvertUtils.getListStringFromDynamic(map["faq_anchor"], true, [])!;
    if (map["ad"] != null) {
      for (var i in map["ad"]) {
        RemoteConfigAds ch = RemoteConfigAds();
        ch.fromJson(i);
        ad.add(ch);
      }
    }
    adManualEnable = map["ad_manual_enable"] ?? false;
    if (map["get_profile"] != null) {
      for (var i in map["get_profile"]) {
        RemoteConfigGetProfile ch = RemoteConfigGetProfile();
        ch.fromJson(i);
        getProfile.add(ch);
      }
    }

    if (map["channel"] != null) {
      for (var i in map["channel"]) {
        RemoteConfigChannel ch = RemoteConfigChannel();
        ch.fromJson(i);
        channels.add(ch);
      }
    }
    /*host = map["host"] ?? kDefaultHost;
    List sp = host.split(".");
    if (sp.length != 2 || sp[0] != "karing") {
      host = kDefaultHost;
    }*/
    harry = map["harry"] ?? kDefaultHarry;
    sentry = map["sentry"] ?? kDefaultSentry;
    getTranffic = map["get_tranffic"] ?? kDefaultGetTranffic;
    getTranfficFrom = map["get_tranffic_from"] ?? kDefaultGetTranfficFrom;
    tutorial = map["tutorial"] ?? kDefaultTutorial;
    faq = map["faq"] ?? kDefaultFaq;
    rulesets = map["rulesets"] ?? kDefaultRulesets;
    download = map["download"] ?? kDefaultDownload;
    telegram = map["telegram"] ?? kDefaultTelegram;
    follow = map["follow"] ?? kDefaultFollow;
    privacyPolicy = map["privacy_policy"] ?? kDefaultPrivacyPolicy;
    dnsLeakDetection = map["dns_leak_detection"] ?? kDefaultDnsLeakDetection;
    proxyLeakDetection =
        map["proxy_leak_detection"] ?? kDefaultProxyLeakDetection;
    geosite = map["geosite_rulesets"] ?? kDefaultGeoSite;
    geoip = map["geoip_rulesets"] ?? kDefaultGeoIp;
    acl = map["acl_rulesets"] ?? kDefaultAcl;
    donateUrl = map["donate_url"] ?? "";

    if (geosite.isEmpty) {
      geosite = kDefaultGeoSite;
    }
    if (geoip.isEmpty) {
      geoip = kDefaultGeoIp;
    }
    if (acl.isEmpty) {
      acl = kDefaultAcl;
    }
    if (!isSelfHost(donateUrl, host)) {
      donateUrl = "";
    }
  }

  static bool isSelfHost(String url, String host) {
    Uri? uri = Uri.tryParse(url);
    if (uri == null) {
      return false;
    }
    if (uri.host == host || uri.host.contains(".$host")) {
      return true;
    }
    return false;
  }

  static RemoteConfig fromJsonStatic(Map<String, dynamic>? map) {
    RemoteConfig config = RemoteConfig();
    config.fromJson(map);
    return config;
  }

  Future<RemoteConfigChannel?> getCurrentChannel() async {
    if (channels.isNotEmpty) {
      return channels[0];
    }
    String channelName = await InstallReferrerUtils.getString();
    for (var cha in channels) {
      if (cha.platform == Platform.operatingSystem &&
          cha.channel == channelName) {
        return cha;
      }
    }
    return null;
  }

  RemoteConfigGetProfile? getProfileByRegionCode(String regionCode) {
    regionCode = regionCode.toLowerCase();
    for (var item in getProfile) {
      if (item.platform == Platform.operatingSystem) {
        if (item.region.contains("*") || item.region.contains(regionCode)) {
          if (item.url.isNotEmpty) {
            return item;
          }
        }
      }
    }
    return null;
  }

  RemoteConfigAds? getAdByRegionCode(String regionCode) {
    regionCode = regionCode.toLowerCase();
    for (var item in ad) {
      if (item.platform == Platform.operatingSystem) {
        if (item.region.contains("*") || item.region.contains(regionCode)) {
          return item;
        }
      }
    }
    return null;
  }

  String getPanelJs() {
    if (ispPanelJs.isNotEmpty) {
      if (ispPanelJs.endsWith("?v=") || ispPanelJs.endsWith("&v=")) {
        return "$ispPanelJs${DateTime.now().millisecondsSinceEpoch.toString()}";
      }
      return ispPanelJs;
    }

    return "";
  }
}
