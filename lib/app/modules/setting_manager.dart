// ignore_for_file: empty_catches

import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:country/country.dart' as country;
import 'package:intl/intl.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/runtime/type_checker.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/cloudflare_warp_api.dart';
import 'package:karing/app/utils/convert_utils.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/sentry_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/widgets/text_field.dart';
import 'package:vpn_service/proxy_manager.dart';

Map<String, dynamic> removeNotMap(Map<String, dynamic> object) {
  object.removeWhere((key, value) {
    return value == null || value is! Map<String, dynamic>;
  });
  return object;
}

//UI选项
class SettingConfigItemUICloudflareWarp {
  WarpAccount account = WarpAccount();
  String license = "";
  Map<String, dynamic> toJson() => {
        //'account': warpAccount,
        'license': license,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    // account.fromJson(map["account"]);
    license = map["license"] ?? "";
  }

  static SettingConfigItemUICloudflareWarp fromJsonStatic(
      Map<String, dynamic>? map) {
    SettingConfigItemUICloudflareWarp config =
        SettingConfigItemUICloudflareWarp();
    config.fromJson(map);
    return config;
  }
}

class SettingConfigItemAds {
  static const int rewardDays = 7;
  static const int shareRewardTimes = 4;
  String bannerRewardAdExpire = "";
  String bannerShareExpire = "";
  bool bannerEnable = false;

  Map<String, dynamic> toJson() => {
        'banner_enable': bannerEnable,
        'banner_reward_ad_expire': bannerRewardAdExpire,
        'banner_share_expire': bannerShareExpire,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    bannerEnable = map["banner_enable"] ?? false;
    bannerRewardAdExpire = map["banner_reward_ad_expire"] ?? "";
    bannerShareExpire = map["banner_share_expire"] ?? "";
    var expireReward = DateTime.tryParse(bannerRewardAdExpire);
    var expireShare = DateTime.tryParse(bannerShareExpire);
    if (expireReward != null &&
        expireReward.difference(DateTime.now()).inDays > rewardDays) {
      bannerRewardAdExpire = "";
    }
    if (expireShare != null &&
        expireShare.difference(DateTime.now()).inDays >
            rewardDays * shareRewardTimes) {
      bannerShareExpire = "";
    }
  }

  static SettingConfigItemAds fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemAds config = SettingConfigItemAds();
    config.fromJson(map);
    return config;
  }

  void clear() {
    bannerRewardAdExpire = "";
    bannerShareExpire = "";
  }

  String getBannerRewardAdExpire(String languageTag) {
    DateTime? date = DateTime.tryParse(bannerRewardAdExpire);
    if (date != null) {
      if (!DateTime.now().isAfter(date)) {
        try {
          return DateFormat.yMd(languageTag).format(date);
        } catch (e) {}
      }
    }
    return "";
  }

  String getBannerShareExpire(String languageTag) {
    DateTime? date = DateTime.tryParse(bannerShareExpire);
    if (date != null) {
      if (!DateTime.now().isAfter(date)) {
        try {
          return DateFormat.yMd(languageTag).format(date);
        } catch (e) {}
      }
    }
    return "";
  }
}

class SettingConfigItemAutobackup {
  static const int kMaxCount = 5;
  bool addProfile = true;
  bool removeProfile = false;

  Map<String, dynamic> toJson() => {
        'add_profile': addProfile,
        'remove_profile': removeProfile,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    addProfile = map["add_profile"] ?? true;
    removeProfile = map["remove_profile"] ?? false;
  }

  static SettingConfigItemAutobackup fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemAutobackup config = SettingConfigItemAutobackup();
    config.fromJson(map);
    return config;
  }
}

class SettingConfigItemUI {
  String theme = "light";
  bool autoOrientation = maybeTv();
  bool hideDockIcon = false; //macos
  bool disableFontScaler = false;
  bool hideAfterLaunch = false;
  String netCheckDomain = "google.com";
  String diversionRuleDetectDomain = "google.com";
  bool tvMode = maybeTv();

  Map<String, dynamic> toJson() => {
        'theme': theme,
        'auto_orientation': autoOrientation,
        'hide_dock_icon': hideDockIcon,
        'disable_font_scaler': disableFontScaler,
        'hide_after_launch': hideAfterLaunch,
        'net_check_domain': netCheckDomain,
        'diversion_rule_detect_domain': diversionRuleDetectDomain,
        'tv_mode': tvMode,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    theme = map["theme"] ?? "";
    autoOrientation = map["auto_orientation"] ?? maybeTv();
    hideDockIcon = map["hide_dock_icon"] ?? false;
    disableFontScaler = map["disable_font_scaler"] ?? false;
    hideAfterLaunch = map["hide_after_launch"] ?? false;
    netCheckDomain = map["net_check_domain"] ?? "google.com";
    diversionRuleDetectDomain =
        map["diversion_rule_detect_domain"] ?? "google.com";
    if (Platform.isAndroid) {
      tvMode = map["tv_mode"] ?? maybeTv();
      TextFieldEx.popupEdit = tvMode;
    }

    switch (theme) {
      case "black":
      case "dark":
        theme = "dark";
        break;
      case "white":
      case "light":
        theme = "light";
        break;
      case "system":
        theme = "system";
        break;
      default:
        theme = "light";
        break;
    }
  }

  static SettingConfigItemUI fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemUI config = SettingConfigItemUI();
    config.fromJson(map);
    return config;
  }

  static bool maybeTv() {
    if (Platform.isAndroid) {
      final abis = VPNService.getABIs();
      if (abis.length == 1 &&
          (abis.contains("armeabi") || abis.contains("x86"))) {
        return true;
      }
    }
    return false;
  }
}

class SettingConfigItemUIScreen {
  static const String backgroundTypeLocal = "local";
  static const String backgroundTypeRemote = "remote";
  static const String backgroundTypeDisable = "";

  List<String> widgets = [];
  int widgetsAlpha = 255;

  bool hideInvalidServerMyProfiles = false;
  bool hideInvalidServerSelectServer = false;
  bool hideInvalidServerDiversionRules = false;
  bool sortServerMyProfiles = false;
  bool sortServerSelectServer = false;
  bool sortServerDiversionRules = false;
  bool selectServerHideRecommand = false;
  bool selectServerHideRecent = false;
  bool selectServerHideFav = false;
  bool hideUnusedDiversionGroup = false;
  String myLink = "";
  String backgroundImageType = backgroundTypeDisable;
  String backgroundImageUrl = "";
  String backgroundImageLocal = "";

  Map<String, dynamic> toJson() => {
        'widgets': widgets,
        'widgets_alpha': widgetsAlpha,
        'hide_invalid_server_my_profiles': hideInvalidServerMyProfiles,
        'hide_invalid_server_select_server': hideInvalidServerSelectServer,
        'hide_invalid_server_diversion_rules': hideInvalidServerDiversionRules,
        'sort_server_my_profiles': sortServerMyProfiles,
        'sort_server_select_server': sortServerSelectServer,
        'sort_server_diversion_rules': sortServerDiversionRules,
        'select_server_hide_recommand': selectServerHideRecommand,
        'select_server_hide_recent': selectServerHideRecent,
        'select_server_hide_fav': selectServerHideFav,
        'hide_unused_diversion_group': hideUnusedDiversionGroup,
        'my_link': myLink,
        'background_image_type': backgroundImageType,
        'background_image': backgroundImageUrl,
        'background_image_local': backgroundImageLocal,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    widgets = ConvertUtils.getListStringFromDynamic(map["widgets"], true, [])!;
    try {
      widgetsAlpha = map['widgets_alpha'] ?? 255;
    } catch (e) {
      widgetsAlpha = 255;
    }
    if (widgetsAlpha < 0 || widgetsAlpha > 255) {
      widgetsAlpha = 255;
    }

    hideInvalidServerMyProfiles =
        map["hide_invalid_server_my_profiles"] ?? false;
    hideInvalidServerSelectServer =
        map["hide_invalid_server_select_server"] ?? false;
    hideInvalidServerDiversionRules =
        map["hide_invalid_server_diversion_rules"] ??
            map["hide_invalid_server_routing_group_strategy"] ??
            false;
    sortServerMyProfiles = map["sort_server_my_profiles"] ?? false;
    sortServerSelectServer = map["sort_server_select_server"] ?? false;
    sortServerDiversionRules = map["sort_server_diversion_rules"] ?? false;
    selectServerHideRecommand = map["select_server_hide_recommand"] ?? false;
    selectServerHideRecent = map["select_server_hide_recent"] ?? false;
    selectServerHideFav = map["select_server_hide_fav"] ?? false;
    hideUnusedDiversionGroup = map["hide_unused_diversion_group"] ?? false;
    myLink = map["my_link"] ?? "";

    final backgroundImageType_ = map["background_image_type"];
    backgroundImageUrl = map["background_image"] ?? "";
    backgroundImageLocal = map["background_image_local"] ?? "";
    if (backgroundImageType_ == null) {
      if (backgroundImageUrl.isNotEmpty) {
        //兼容老的远程图片
        backgroundImageType = backgroundTypeRemote;
      } else {
        backgroundImageType = backgroundTypeDisable;
      }
    } else {
      if ([backgroundTypeLocal, backgroundTypeRemote, backgroundTypeDisable]
          .contains(backgroundImageType_)) {
        backgroundImageType = backgroundImageType_;
      }
    }
  }

  static SettingConfigItemUIScreen fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemUIScreen config = SettingConfigItemUIScreen();
    config.fromJson(map);
    return config;
  }

  String getMyLink() {
    const int kMaxLength = 30;
    if (myLink.length > kMaxLength) {
      return "${myLink.substring(0, kMaxLength)}...";
    }
    return myLink;
  }

  static List<int> widgetsAlphaInt = [
    0,
    20,
    50,
    100,
    255,
  ];

  int getWidgetAlpha() {
    if (backgroundImageType == backgroundTypeDisable) {
      return 255;
    }
    if (backgroundImageUrl.isEmpty && backgroundImageLocal.isEmpty) {
      return 255;
    }
    if (widgetsAlphaInt.contains(widgetsAlpha)) {
      return widgetsAlpha;
    }
    if (widgetsAlpha < 0 || widgetsAlpha > 255) {
      return 255;
    }
    if (widgetsAlpha >= 0 && widgetsAlpha < 20) {
      return 0;
    }
    if (widgetsAlpha >= 20 && widgetsAlpha < 50) {
      return 20;
    }
    if (widgetsAlpha >= 50 && widgetsAlpha < 100) {
      return 50;
    }
    if (widgetsAlpha >= 100 && widgetsAlpha < 255) {
      return 100;
    }
    return 255;
  }
}

//开发选项
class SettingConfigItemDev {
  static int pprofPortDefault = 3060;
  bool devMode = false;
  bool enableDebugLog = false;
  int pprofPort = 0;
  bool allowRemoteAccessPprof = false;
  bool allowRemoteAccessHtmlBoard = false;
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {}

  static SettingConfigItemDev fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemDev config = SettingConfigItemDev();
    config.fromJson(map);
    return config;
  }
}

class SettingConfigItemWebDev {
  String url = "";
  String user = "";
  String password = "";

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'url': url,
      'user': user,
      'password': password,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    url = map["url"] ?? "";
    user = map["user"] ?? "";
    password = map["password"] ?? "";
  }

  static SettingConfigItemWebDev fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemWebDev config = SettingConfigItemWebDev();
    config.fromJson(map);
    return config;
  }
}

class SettingConfigItemNTP {
  static const List<String> kNTPServerList = [
    "time.apple.com",
    "time.windows.com",
    "time.google.com",
    "pool.ntp.org",
    "ntp.aliyun.com"
  ];
  bool enable = false;
  String server = getServer();
  int port = 123;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'enable': enable,
      'server': server,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    enable = map["enable"] ?? false;
    server = map["server"] ?? getServer();
  }

  static SettingConfigItemNTP fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemNTP config = SettingConfigItemNTP();
    config.fromJson(map);
    return config;
  }

  static String getServer() {
    return Platform.isIOS || Platform.isMacOS
        ? "time.apple.com"
        : "time.windows.com";
  }
}

class SettingConfigItemTUN {
  bool enable = getTun();
  String stack = getStack();
  Duration udpTimeout = const Duration(minutes: 1);
  String i4Address = SingboxInboundTunOptions.i4Address;
  int mtu = 4064;
  bool autoRoute = true;
  bool strictRoute = false;
  bool allowBypass = false; //android
  bool appendHttpProxy =
      getAppendHttp(); //android, ios有些app会直连代理绕过tun软路由,这里开启代理
  List<String> allowBypassHttpProxyDomains = ProxyBypassDoaminsDefault.toList();
  bool hijackDns = true;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'enable': enable,
      'stack': stack,
      'udp_timeout': udpTimeout.inSeconds,
      'i4_address': i4Address,
      'mtu': mtu,
      'auto_route': autoRoute,
      'strict_route': strictRoute,
      'allow_bypass': allowBypass,
      'append_http_proxy': appendHttpProxy,
      'allow_bypass_httpproxy_domains': allowBypassHttpProxyDomains,
      'hijack_dns': hijackDns,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    enable = map["enable"] ?? map["tun"] ?? getTun();
    stack = map["stack"] ?? map["tun_stack"] ?? "";
    if (stack.isEmpty) {
      stack = getStack();
    }
    if (map["udp_timeout"] != null) {
      udpTimeout = Duration(seconds: map["udp_timeout"]);
      if (udpTimeout.inDays > 365) {
        udpTimeout = const Duration(days: 365);
      }
      if (udpTimeout.inSeconds < 5) {
        udpTimeout = const Duration(seconds: 15);
      }
    }
    i4Address = map["i4_address"] ?? SingboxInboundTunOptions.i4Address;
    if (!NetworkUtils.isIpv4(i4Address)) {
      i4Address = SingboxInboundTunOptions.i4Address;
    }
    mtu = map["mtu"] ?? 4064;
    if (mtu == 0) {
      mtu = 4064;
    }
    autoRoute = map["auto_route"] ?? true;
    strictRoute = map["strict_route"] ?? false;
    allowBypass = map["allow_bypass"] ?? false;
    appendHttpProxy = map["append_http_proxy"] ?? getAppendHttp();
    allowBypassHttpProxyDomains = ConvertUtils.getListStringFromDynamic(
        map["allow_bypass_httpproxy_domains"],
        true,
        ProxyBypassDoaminsDefault.toList())!;
    hijackDns = map["hijack_dns"] ?? true;
  }

  static SettingConfigItemTUN fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemTUN config = SettingConfigItemTUN();
    config.fromJson(map);
    return config;
  }

  static bool getTun() {
    if (Platform.isWindows) {
      return false;
    }
    return true;
  }

  static String getStack() {
    if (Platform.isAndroid) {
      //改成system后, _cgo_topofstack,crosscall2崩溃基本消失了(291开始),某些设备上system还是持续崩溃,改成gvisor正常
      return "gvisor";
    }
    if (Platform.isWindows) {
      //某些新安装的win10使用system/mixed无法正常接收数据
      return "gvisor";
    }
    return "mixed";
  }

  static bool getAppendHttp() {
    if (Platform.isAndroid) {
      //android开启后,知乎无法正常访问网络
      return false;
    }
    return true;
  }
}

enum SettingConfigItemDNSProxyResolveMode {
  proxy(name: "proxy"),
  direct(name: "direct"),
  fakeip(name: "fakeip");

  const SettingConfigItemDNSProxyResolveMode({required this.name});
  final String name;
}

class SettingConfigItemDNS {
  static const int kDNSServerMax = 10;
  static const String kDNSIsp = "isp";
  static const String kDNSUrl = "url";
  static const String kDNSLocal =
      "local"; //windows tun 不能够使用local,详情见https://github.com/SagerNet/sing-box/issues/1592
  static const String kDNSDHCP = "dhcp://auto"; //android 无权限
  static const String kDNSTestDomain = "gstatic.com";
  static const List<dynamic> kDNSList = [
    //https://dns.iui.im/
    {kDNSIsp: "Local", kDNSUrl: kDNSLocal},
    {kDNSIsp: "DHCP", kDNSUrl: kDNSDHCP},
    {kDNSIsp: "AliDNS", kDNSUrl: "udp://223.5.5.5"},
    {kDNSIsp: "AliDNS", kDNSUrl: "udp://223.6.6.6"},
    {kDNSIsp: "AliDNS", kDNSUrl: "tls://223.5.5.5"},
    {kDNSIsp: "AliDNS", kDNSUrl: "tls://223.6.6.6"},
    {kDNSIsp: "AliDNS", kDNSUrl: "tls://dns.alidns.com"},
    {kDNSIsp: "AliDNS", kDNSUrl: "https://223.5.5.5/dns-query"},
    {kDNSIsp: "AliDNS", kDNSUrl: "https://223.6.6.6/dns-query"},
    {kDNSIsp: "AliDNS", kDNSUrl: "https://dns.alidns.com/dns-query"},
    {kDNSIsp: "AliDNS", kDNSUrl: "udp://[2400:3200::1]"},
    {kDNSIsp: "DNSPod DNS", kDNSUrl: "tls://dot.pub"},
    {kDNSIsp: "DNSPod DNS", kDNSUrl: "tls://dns.pub"},
    {kDNSIsp: "DNSPod DNS", kDNSUrl: "https://1.12.12.12/dns-query"},
    {kDNSIsp: "DNSPod DNS", kDNSUrl: "https://120.53.53.53/dns-query"},
    {kDNSIsp: "DNSPod DNS", kDNSUrl: "https://doh.pub/dns-query"},
    {kDNSIsp: "DNSPod DNS", kDNSUrl: "udp://[2402:4e00::]"},
    {kDNSIsp: "Cloudflare DNS", kDNSUrl: "udp://1.0.0.1"},
    {kDNSIsp: "Cloudflare DNS", kDNSUrl: "udp://1.1.1.1"},
    {kDNSIsp: "Cloudflare DNS", kDNSUrl: "tls://1.0.0.1"},
    {kDNSIsp: "Cloudflare DNS", kDNSUrl: "tls://1.1.1.1"},
    {kDNSIsp: "Cloudflare DNS", kDNSUrl: "https://1.0.0.1/dns-query"},
    {kDNSIsp: "Cloudflare DNS", kDNSUrl: "https://1.1.1.1/dns-query"},
    {
      kDNSIsp: "Cloudflare DNS",
      kDNSUrl: "https://cloudflare-dns.com/dns-query"
    },
    {kDNSIsp: "Google DNS", kDNSUrl: "udp://8.8.8.8"},
    {kDNSIsp: "Google DNS", kDNSUrl: "udp://8.8.4.4"},
    {kDNSIsp: "Google DNS", kDNSUrl: "tls://8.8.8.8"},
    {kDNSIsp: "Google DNS", kDNSUrl: "tls://8.8.4.4"},
    {kDNSIsp: "Google DNS", kDNSUrl: "https://8.8.8.8/dns-query"},
    {kDNSIsp: "Google DNS", kDNSUrl: "https://8.8.4.4/dns-query"},
    {kDNSIsp: "Google DNS", kDNSUrl: "https://dns.google/dns-query"},
    {kDNSIsp: "Google DNS", kDNSUrl: "h3://8.8.4.4/dns-query"},
    {kDNSIsp: "Google DNS", kDNSUrl: "h3://8.8.8.8/dns-query"},
    {kDNSIsp: "Google DNS", kDNSUrl: "udp://[2001:4860:4860::8888]"},
    {kDNSIsp: "Google DNS", kDNSUrl: "udp://[2001:4860:4860::8844]"},
    {kDNSIsp: "Google DNS", kDNSUrl: "tls://[2001:4860:4860::8888]"},
    {kDNSIsp: "Google DNS", kDNSUrl: "tls://[2001:4860:4860::8844]"},
    {kDNSIsp: "TrafficRoute DNS", kDNSUrl: "udp://180.184.1.1"},
    {kDNSIsp: "TrafficRoute DNS", kDNSUrl: "udp://180.184.2.2"},
    {kDNSIsp: "OpenDNS", kDNSUrl: "udp://208.67.222.222"},
    {kDNSIsp: "OpenDNS", kDNSUrl: "udp://208.67.220.220"},
    {kDNSIsp: "Yandex DNS", kDNSUrl: "udp://77.88.8.1"},
    {kDNSIsp: "Yandex DNS", kDNSUrl: "udp://77.88.8.8"},
    {kDNSIsp: "Comodo DNS", kDNSUrl: "udp://8.26.56.26"},
    {kDNSIsp: "Comodo DNS", kDNSUrl: "udp://8.20.247.20"},
    {kDNSIsp: "AdGuard DNS", kDNSUrl: "udp://94.140.14.14"},
    {kDNSIsp: "AdGuard DNS", kDNSUrl: "udp://94.140.15.15"},
    {kDNSIsp: "AdGuard DNS", kDNSUrl: "quic://dns.adguard.com"},
    {kDNSIsp: "AdGuard DNS", kDNSUrl: "udp://[2a10:50c0::ad1:ff]"},
    {kDNSIsp: "AdGuard DNS", kDNSUrl: "udp://[2a10:50c0::ad2:ff]"},
  ];

  Duration ttl = const Duration(hours: 12);
  bool enableRule = false;
  String testDomain = kDNSTestDomain;
  bool enableClientSubnet = true;
  bool enableInboundDomainResolve = false;
  bool enableStaticIP = false;
  SettingConfigItemDNSProxyResolveMode proxyResolveMode =
      SettingConfigItemDNSProxyResolveMode.fakeip;

  List<String> _resolver = [];
  List<String> _outbound = [];
  List<String> _direct = [];
  List<String> _proxy = [];

  String clientSubnet = "";
  String clientSubnetLatestUpdate = "";

  Map<String, List<String>> staticIPs = {};
  List<dynamic> list = [];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'ttl': ttl.inSeconds,
      'enable_rule': enableRule,
      'test_domain': testDomain,
      'enable_client_subnet': enableClientSubnet,
      'enable_inbound_domain_resolve': enableInboundDomainResolve,
      'enable_static_ip': enableStaticIP,
      'proxy_resolve_mode': proxyResolveMode.name,
      'resolver_addresses': _resolver,
      'outbound_addresses': _outbound,
      'direct_addresses': _direct,
      'proxy_addresses': _proxy,
      'client_subnet': clientSubnet,
      'client_subnet_latest_update': clientSubnetLatestUpdate,
      'static_ips': staticIPs,
      'list': list,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    if (map["ttl"] != null) {
      ttl = Duration(seconds: map["ttl"]);
      if (ttl.inDays > 365) {
        ttl = const Duration(days: 365);
      }
      if (ttl.inSeconds < 5) {
        ttl = const Duration(seconds: 5);
      }
    }
    enableRule = map["enable_rule"] ?? false;
    testDomain = map["test_domain"] ?? "";
    if (testDomain.isEmpty) {
      testDomain = kDNSTestDomain;
    }
    enableClientSubnet = map["enable_client_subnet"] ?? true;
    enableInboundDomainResolve = map["enable_inbound_domain_resolve"] ?? false;
    enableStaticIP = map["enable_static_ip"] ?? false;
    String? _proxyResolveMode = map["proxy_resolve_mode"];
    if (_proxyResolveMode == null) {
      do {
        bool enableFakeIp = map["enable_fake_ip"] ?? false;
        if (enableFakeIp) {
          proxyResolveMode = SettingConfigItemDNSProxyResolveMode.fakeip;
          break;
        }
        bool enableProxyResolveByProxy = map["enable_final_resolve_by_proxy"] ??
            map["enable_proxy_resolve_by_proxy"] ??
            true;
        if (enableProxyResolveByProxy) {
          proxyResolveMode = SettingConfigItemDNSProxyResolveMode.proxy;
          break;
        }
      } while (false);
    } else if (_proxyResolveMode ==
        SettingConfigItemDNSProxyResolveMode.proxy.name) {
      proxyResolveMode = SettingConfigItemDNSProxyResolveMode.proxy;
    } else if (_proxyResolveMode ==
        SettingConfigItemDNSProxyResolveMode.direct.name) {
      proxyResolveMode = SettingConfigItemDNSProxyResolveMode.direct;
    } else if (_proxyResolveMode ==
        SettingConfigItemDNSProxyResolveMode.fakeip.name) {
      proxyResolveMode = SettingConfigItemDNSProxyResolveMode.fakeip;
    } else {
      proxyResolveMode = SettingConfigItemDNSProxyResolveMode.fakeip;
    }

    _resolver = ConvertUtils.getListStringFromDynamic(
        map["resolver_addresses"], true, [])!;
    _outbound = ConvertUtils.getListStringFromDynamic(
        map["outbound_addresses"], true, [])!;
    _direct = ConvertUtils.getListStringFromDynamic(
        map["direct_addresses"], true, [])!;
    _proxy = ConvertUtils.getListStringFromDynamic(
        map["final_addresses"] ?? map["proxy_addresses"], true, [])!;

    clientSubnet = map["client_subnet"] ?? "";
    clientSubnetLatestUpdate = map["client_subnet_latest_update"] ?? "";
    if (clientSubnet.isNotEmpty) {
      if (!NetworkUtils.isIpv4(clientSubnet) &&
          !NetworkUtils.isIpv6(clientSubnet)) {
        clientSubnet = "";
        clientSubnetLatestUpdate = "";
      }
    }
    if (_resolver.isEmpty) {
      var resolver = map["resolver"] ?? "";
      if (resolver.isNotEmpty) {
        _resolver.add(resolver);
      }
    }

    if (_outbound.isEmpty) {
      var outbound = map["outbound"] ?? "";
      if (outbound.isNotEmpty) {
        _outbound.add(outbound);
      }
    }
    if (_direct.isEmpty) {
      var direct = map["direct"] ?? "";
      if (direct.isNotEmpty) {
        _direct.add(direct);
      }
    }
    if (_proxy.isEmpty) {
      var proxy = map["dns_proxy"] ??
          TypeChecker<String>().check(map["proxy"]) ??
          map["dns_remote"] ??
          "";
      if (proxy.isNotEmpty) {
        _proxy.add(proxy);
      }
    }

    if (Platform.isAndroid) {
      _resolver.remove(SettingConfigItemDNS.kDNSDHCP);
      _outbound.remove(SettingConfigItemDNS.kDNSDHCP);
      _direct.remove(SettingConfigItemDNS.kDNSDHCP);
      _proxy.remove(SettingConfigItemDNS.kDNSDHCP);
    }
    var dips = map["static_ips"] ?? {};
    var dl = map["list"] ?? map["dns_list"] ?? [];

    for (var i in dl) {
      if (i is Map) {
        var isp = i[kDNSIsp];
        var addr = i[kDNSUrl];
        if (isp is String && addr is String) {
          Uri? uri = Uri.tryParse(addr);
          if (uri != null && isDNSValidScheme(uri.scheme)) {
            list.add({
              kDNSIsp: isp,
              kDNSUrl: addr,
            });
          }
        }
      }
    }
    dips.forEach((key, value) {
      var list = ConvertUtils.getListStringFromDynamic(value, true, [])!;
      if (list.isNotEmpty) {
        staticIPs[key] = list;
      }
    });
  }

  static SettingConfigItemDNS fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemDNS config = SettingConfigItemDNS();
    config.fromJson(map);
    return config;
  }

  static bool isDNSValidScheme(String scheme) {
    return ["udp", "tcp", "tls", "https", "quic", "h3"].contains(scheme);
  }

  static bool containsDNSURL(String url) {
    for (var dns in kDNSList) {
      var addr = dns[kDNSUrl];
      if (addr == url) {
        return true;
      }
    }
    return false;
  }

  void setResolverDns(List<String> dns) {
    _resolver = dns;
  }

  void setOutboundDns(List<String> dns) {
    _outbound = dns;
  }

  void setDirectDns(List<String> dns) {
    _direct = dns;
  }

  void setProxyDns(List<String> dns) {
    _proxy = dns;
  }

  void addOrRemoveResolverDns(String dns, bool add) {
    if (add) {
      _resolver.add(dns);
    } else {
      _resolver.remove(dns);
    }
  }

  void addOrRemoveOutboundDns(String dns, bool add) {
    if (add) {
      _outbound.add(dns);
    } else {
      _outbound.remove(dns);
    }
  }

  void addOrRemoveDirectDns(String dns, bool add) {
    if (add) {
      _direct.add(dns);
    } else {
      _direct.remove(dns);
    }
  }

  void addOrRemoveProxyDns(String dns, bool add) {
    if (add) {
      _proxy.add(dns);
    } else {
      _proxy.remove(dns);
    }
  }

  List<String> getOutboundDns(String regioncode, bool tunMode) {
    if (_outbound.isNotEmpty) {
      return _updateDns(_outbound, tunMode);
    }

    _outbound.add(SettingConfigItemDNS.kDNSLocal);
    if (!Platform.isAndroid) {
      _outbound.add(SettingConfigItemDNS.kDNSDHCP);
    }
    _outbound.add("udp://8.8.8.8");
    if (regioncode.toLowerCase() == "cn") {
      _outbound.add("udp://223.6.6.6");
    }
    return _updateDns(_outbound, tunMode);
  }

  List<String> getDirectDns(String regioncode, bool tunMode) {
    if (_direct.isNotEmpty) {
      return _updateDns(_direct, tunMode);
    }

    _direct.add(SettingConfigItemDNS.kDNSLocal);
    if (!Platform.isAndroid) {
      _direct.add(SettingConfigItemDNS.kDNSDHCP);
    }
    _direct.add("udp://8.8.8.8");
    if (regioncode.toLowerCase() == "cn") {
      _direct.add("udp://223.6.6.6");
    }

    return _updateDns(_direct, tunMode);
  }

  List<String> getProxyDns(String regioncode, bool tunMode) {
    if (_proxy.isNotEmpty) {
      return _updateDns(_proxy, tunMode);
    }

    _proxy.add("https://1.1.1.1/dns-query");
    _proxy.add("https://dns.google/dns-query");

    return _updateDns(_proxy, tunMode);
  }

  List<String> getResolverDns(String regioncode, bool tunMode) {
    if (_resolver.isNotEmpty) {
      return _updateDns(_resolver, tunMode);
    }

    _resolver.add(SettingConfigItemDNS.kDNSLocal);
    if (!Platform.isAndroid) {
      _resolver.add(SettingConfigItemDNS.kDNSDHCP);
    }
    _resolver.add("https://1.1.1.1/dns-query");
    if (regioncode.toLowerCase() == "cn") {
      _resolver.add("udp://223.6.6.6");
    }
    return _updateDns(_resolver, tunMode);
  }

  List<String> _updateDns(List<String> dns, bool tunMode) {
    List<String> newDns = dns.toList();
    if (Platform.isWindows) {
      if (tunMode) {
        bool has = newDns.contains(SettingConfigItemDNS.kDNSDHCP);
        newDns.remove(SettingConfigItemDNS.kDNSLocal);
        if (!has && newDns.isEmpty) {
          newDns.add(SettingConfigItemDNS.kDNSDHCP);
        }
      }
    } else if (Platform.isAndroid) {
      bool has = newDns.contains(SettingConfigItemDNS.kDNSLocal);
      newDns.remove(SettingConfigItemDNS.kDNSDHCP);
      if (!has && newDns.isEmpty) {
        newDns.add(SettingConfigItemDNS.kDNSLocal);
      }
    }
    return newDns;
  }
}

class SettingConfigItemTLS {
  static String kFragmentSize = "100-200"; //[1,256]
  static String kFragmentSleep = "10-20"; //[0,1000],0:disable
  static String kPaddingSize = "1-1500";
  bool enableInsecure = false;
  bool enableFragment = false;
  String fragmentSize = SettingConfigItemTLS.kFragmentSize;
  String fragmentSleep = SettingConfigItemTLS.kFragmentSleep;

  bool enableMixedCaseSNI = false;

  bool enablePadding = false;
  String paddingSize = SettingConfigItemTLS.kPaddingSize;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'enable_insecure': enableInsecure,
      'enable_fragment': enableFragment,
      'fragment_size': fragmentSize,
      'fragment_sleep': fragmentSleep,
      'enable_mixed_case_sni': enableMixedCaseSNI,
      'enable_padding': enablePadding,
      'padding_size': paddingSize,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    enableInsecure = map["enable_insecure"] ?? false;
    enableFragment = map["enable_fragment"] ?? false;
    fragmentSize = map["fragment_size"] ?? SettingConfigItemTLS.kFragmentSize;
    fragmentSleep =
        map["fragment_sleep"] ?? SettingConfigItemTLS.kFragmentSleep;
    enableMixedCaseSNI = map["enable_mixed_case_sni"] ?? false;
    enablePadding = map["enable_padding"] ?? false;
    paddingSize = map["padding_size"] ?? SettingConfigItemTLS.kPaddingSize;
  }

  static SettingConfigItemTLS fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemTLS config = SettingConfigItemTLS();
    config.fromJson(map);
    return config;
  }
}

class SettingConfigItemMux {
  bool enable = false;
  bool padding = false;
  String protocol = "h2mux";
  int maxStream = 8;

  List<String> outboundTypes = []; //vmess,vless,trojan,shadowsocks

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'enable': enable,
      'padding': padding,
      'protocol': protocol,
      'max_streams': maxStream,
      'outbound_types': outboundTypes,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    enable = map["enable"] ?? false;
    padding = map["padding"] ?? false;
    protocol = map["protocol"] ?? "";
    if (protocol.isEmpty) {
      protocol = "h2mux";
    }
    maxStream = map["max_streams"] ?? 8;
    outboundTypes =
        ConvertUtils.getListStringFromDynamic(map["outbound_types"], true, [])!;
  }

  static SettingConfigItemMux fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemMux config = SettingConfigItemMux();
    config.fromJson(map);
    return config;
  }
}

class SettingConfigItemProxy {
  static const String hostDefault = '127.0.0.1';
  static const String hostNetwork = '0.0.0.0';

  static int controlPortDefault = 3057;
  static int mixedDirectPortDefault = 3065;
  static int mixedForwordPortDefault = 3066;
  static int mixedPortDefault = 3067;
  static int clusterPortDefault = 3050;

  String host = hostDefault;
  String clusterHost = hostDefault;
  int mixedRulePort = mixedPortDefault;
  int mixedDirectPort = mixedDirectPortDefault;
  int mixedForwordPort = mixedForwordPortDefault;
  int controlPort = controlPortDefault;
  int clusterPort = clusterPortDefault;
  bool autoSetSystemProxy = getAutoSetSystemProxyDefault();
  List<String> systemProxyBypassDomain = ProxyBypassDoaminsDefault.toList();
  bool disconnectWhenQuit = getDisconnectWhenQuitDefault();
  bool enableCluster = false;

  void setAllowAllInbounds(bool allow) {
    host = allow ? hostNetwork : hostDefault;
  }

  bool getAllowAllInbounds() {
    return host == hostNetwork;
  }

  void setClusterAllowAllInbounds(bool allow) {
    clusterHost = allow ? hostNetwork : hostDefault;
  }

  bool getClusterAllowAllInbounds() {
    return clusterHost == hostNetwork;
  }

  Map<String, dynamic> toJson() => {
        'enable_cluster': enableCluster,
        'host': host,
        'cluster_host': clusterHost,
        'mixed_port': mixedRulePort,
        'mixed_direct_port': mixedDirectPort,
        'mixed_forword_port': mixedForwordPort,
        'control_port': controlPort,
        'cluster_port': clusterPort,
        'auto_set_system_proxy': autoSetSystemProxy,
        'system_proxy_bypass_domain': systemProxyBypassDomain,
        'disconnect_when_quit': disconnectWhenQuit,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    enableCluster = map["enable_cluster"] ?? false;
    host = map["host"] ?? hostDefault;
    clusterHost = map["cluster_host"] ?? hostDefault;
    mixedRulePort = map["mixed_port"] ?? 0;
    mixedDirectPort = map["mixed_direct_port"] ?? 0;
    mixedForwordPort = map["mixed_forword_port"] ?? 0;
    controlPort = map["control_port"] ?? 0;
    clusterPort = map["cluster_port"] ?? 0;

    if (mixedRulePort == 0) {
      mixedRulePort = mixedPortDefault;
    }
    if (mixedDirectPort == 0) {
      mixedDirectPort = mixedDirectPortDefault;
    }
    if (mixedForwordPort == 0) {
      mixedForwordPort = mixedForwordPortDefault;
    }
    if (controlPort == 0) {
      controlPort = controlPortDefault;
    }
    if (clusterPort == 0) {
      clusterPort = clusterPortDefault;
    }
    autoSetSystemProxy =
        map["auto_set_system_proxy"] ?? getAutoSetSystemProxyDefault();
    systemProxyBypassDomain = ConvertUtils.getListStringFromDynamic(
        map["system_proxy_bypass_domain"],
        true,
        ProxyBypassDoaminsDefault.toList())!;
    disconnectWhenQuit =
        map["disconnect_when_quit"] ?? getDisconnectWhenQuitDefault();
  }

  static SettingConfigItemProxy fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemProxy config = SettingConfigItemProxy();
    config.fromJson(map);
    return config;
  }

  static bool getAutoSetSystemProxyDefault() {
    if (Platform.isWindows) {
      return true;
    }
    return false;
  }

  static bool getDisconnectWhenQuitDefault() {
    if (Platform.isWindows || Platform.isLinux) {
      return true;
    }
    return false;
  }
}

class SettingConfigItemRuleSets {
  bool enableGeoSite = true;
  bool enableGeoIp = true;
  bool enableAcl = true;
  bool autoAppendRegionGeoSite = true;
  bool autoAppendRegionGeoIp = true;
  bool useRemoteGeoSite = false;
  bool useRemoteGeoIp = false;
  bool useRemoteAcl = false;
  bool disableCustomDiversionGroup = false;
  bool disableISPDiversionGroup = false;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'enable_geosite': enableGeoSite,
      'enable_geoip': enableGeoIp,
      'enable_acl': enableAcl,
      'auto_append_region_geosite': autoAppendRegionGeoSite,
      'auto_append_region_geoip': autoAppendRegionGeoIp,
      'use_remote_geosite': useRemoteGeoSite,
      'use_remote_geoip': useRemoteGeoIp,
      'use_remote_acl': useRemoteAcl,
      'disable_custom_diversion_group': disableCustomDiversionGroup,
      'disable_isp_diversion_group': disableISPDiversionGroup,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map, String regionCode) {
    if (map == null) {
      return;
    }

    enableGeoSite =
        map["enable_geosite"] ?? getEnableGeositeDefault(regionCode);
    enableGeoIp = map["enable_geoip"] ?? true;
    enableAcl = map["enable_acl"] ?? true;
    autoAppendRegionGeoSite = map["auto_append_region_geosite"] ?? true;
    autoAppendRegionGeoIp = map["auto_append_region_geoip"] ?? true;
    useRemoteGeoSite = map["use_remote_geosite"] ?? false;
    useRemoteGeoIp = map["use_remote_geoip"] ?? false;
    useRemoteAcl = map["use_remote_acl"] ?? false;
    disableCustomDiversionGroup =
        map["disable_custom_diversion_group"] ?? false;
    disableISPDiversionGroup = map["disable_isp_diversion_group"] ?? false;
  }

  static SettingConfigItemRuleSets fromJsonStatic(
      Map<String, dynamic>? map, String regioncode) {
    SettingConfigItemRuleSets config = SettingConfigItemRuleSets();
    config.fromJson(map, regioncode);
    return config;
  }

  static List<String> getGeoSiteDataRegionCodes() {
    return ["af", "br", "cn", "id", "ru", "ir", "tr"];
  }

  static bool hasGeoSiteData(String regioncode) {
    regioncode = regioncode.toLowerCase();
    var codes = getGeoSiteDataRegionCodes();
    if (codes.contains(regioncode)) {
      return true;
    }

    return false;
  }

  static bool getEnableGeositeDefault(String regioncode) {
    if (regioncode.isEmpty) {
      return true;
    }

    return hasGeoSiteData(regioncode);
  }
}

class SettingConfigItemPerapp {
  bool enable = true;
  bool isInclude = true; //android
  List<String> _listAndroid = [];
  List<String> _listMacos = [];
  bool hideSystemApp = true;
  bool hideAppIcon = false;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'enable': enable,
      'is_include': isInclude,
      'list_android': _listAndroid,
      'list_macos': _listMacos,
      'hide_system_app': hideSystemApp,
      'hide_app_icon': hideAppIcon,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    enable = map["enable"] ?? map["perapp_enable"] ?? true;
    isInclude = map["is_include"] ?? map["perapp_is_include"] ?? true;
    _listAndroid =
        ConvertUtils.getListStringFromDynamic(map["list_android"], true, [])!;
    _listMacos =
        ConvertUtils.getListStringFromDynamic(map["list_macos"], true, [])!;
    if (_listAndroid.isEmpty) {
      _listAndroid = ConvertUtils.getListStringFromDynamic(
          map["list"] ?? map["perapp"], true, [])!;
    }

    hideSystemApp = map["hide_system_app"] ?? true;
    hideAppIcon = map["hide_app_icon"] ?? false;
  }

  static SettingConfigItemPerapp fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemPerapp config = SettingConfigItemPerapp();
    config.fromJson(map);
    return config;
  }

  List<String> get list {
    if (Platform.isAndroid) {
      return _listAndroid;
    } else if (Platform.isMacOS) {
      return _listMacos;
    }
    return [];
  }

  set list(List<String> list) {
    if (Platform.isAndroid) {
      _listAndroid = list;
    } else if (Platform.isMacOS) {
      _listMacos = list;
    }
  }
}

class SettingConfigItemAutoSelect {
  Duration timerInterval = const Duration(hours: 8);
  bool prioritizeMyFav = false;
  bool filter = false;
  int limitedNum = 2000;
  Duration? selectedHealthCheckInterval;
  bool reTestIfNetworkUpdate = false;
  bool updateCurrentServerAfterManualUrltest = true;
  bool autoSelectServerIgnorePerProxyServer = false;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'interval': timerInterval.inSeconds,
      'prioritize_my_fav': prioritizeMyFav,
      'filter': filter,
      'limited_num': limitedNum,
      'selected_health_check_interval': selectedHealthCheckInterval?.inSeconds,
      'retest_if_network_udpate': reTestIfNetworkUpdate,
      'update_current_server_after_manual_urltest':
          updateCurrentServerAfterManualUrltest,
      'ignore_perproxy_server': autoSelectServerIgnorePerProxyServer,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    if (map["interval"] != null) {
      timerInterval = Duration(seconds: map["interval"]);
      if (timerInterval.inDays > 365) {
        timerInterval = const Duration(days: 365);
      }
      if (timerInterval.inSeconds < 5) {
        timerInterval = const Duration(seconds: 5);
      }
    }

    prioritizeMyFav = map["prioritize_my_fav"] ?? false;
    filter = map["filter"] ?? false;
    final limitedNum_ = map["limited_num"] ?? 2000;
    if (limitedNum_ is int) {
      limitedNum = limitedNum_;
      if (limitedNum > 100000) {
        limitedNum = 100000;
      }
    }

    if (map["selected_health_check_interval"] != null) {
      selectedHealthCheckInterval =
          Duration(seconds: map["selected_health_check_interval"]);
      if (selectedHealthCheckInterval!.inSeconds >= 3600) {
        selectedHealthCheckInterval = const Duration(minutes: 59);
      }
      if (selectedHealthCheckInterval!.inSeconds < 3) {
        selectedHealthCheckInterval = const Duration(seconds: 3);
      }
    }
    reTestIfNetworkUpdate = map["retest_if_network_udpate"] ?? false;
    updateCurrentServerAfterManualUrltest =
        map["update_current_server_after_manual_urltest"] ?? true;
    autoSelectServerIgnorePerProxyServer =
        map["ignore_perproxy_server"] ?? false;
  }

  static SettingConfigItemAutoSelect fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfigItemAutoSelect config = SettingConfigItemAutoSelect();
    config.fromJson(map);
    return config;
  }
}

enum DNSType {
  dnsTypeResolver,
  dnsTypeOutbound,
  dnsTypeDirect,
  dnsTypeProxy,
}

enum IPStrategy {
  ipv4Only(name: "ipv4_only"),
  preferIPv4(name: "prefer_ipv4"),
  preferIPv6(name: "prefer_ipv6"),
  ipv6Only(name: "ipv6_only");

  const IPStrategy({required this.name});
  final String name;
}

class SettingConfig {
  static int htmlBoardPortDefault = 3072;
  static const String kCoreVersion = "1.12.0";
  static const List<String> kSpeedTestList = [
    "https://speed.cloudflare.com/",
    "https://speedtest.net/",
    "https://ipcheck.ing/",
    "https://web1.cachefly.net/speedtest/index.html",
  ];
  static const List<String> kUrlTestList = [
    "https://www.gstatic.com/generate_204",
    "http://www.msftconnecttest.com/connecttest.txt",
    "http://cp.cloudflare.com/generate_204",
    "https://checkip.amazonaws.com",
    "http://connectivity-check.ubuntu.com",
    "http://detectportal.firefox.com/success.txt",
  ];

  static const List<String> kUserAgentList = [
    "sing-box $kCoreVersion",
    "mihomo/1.19.12",
    "ClashMeta",
    "clash-verge",
    "NekoBox/Android/1.3.4 (Prefer ClashMeta Format)",
    "HiddifyNext",
    "v2ray",
    "FLClash"
  ];

  String languageTag = "";
  String regionCode = "";
  bool novice = false;

  SettingConfigItemDev dev = SettingConfigItemDev();
  SettingConfigItemUI ui = SettingConfigItemUI();
  SettingConfigItemUIScreen uiScreen = SettingConfigItemUIScreen();
  SettingConfigItemProxy proxy = SettingConfigItemProxy();
  SettingConfigItemNTP ntp = SettingConfigItemNTP();
  SettingConfigItemTUN tun = SettingConfigItemTUN();
  SettingConfigItemDNS dns = SettingConfigItemDNS();
  SettingConfigItemTLS tls = SettingConfigItemTLS();
  SettingConfigItemMux mux = SettingConfigItemMux();
  SettingConfigItemRuleSets ruleSets = SettingConfigItemRuleSets();
  SettingConfigItemPerapp perapp = SettingConfigItemPerapp();
  SettingConfigItemAutoSelect autoSelect = SettingConfigItemAutoSelect();
  SettingConfigItemUICloudflareWarp warp = SettingConfigItemUICloudflareWarp();
  SettingConfigItemWebDev webdav = SettingConfigItemWebDev();
  SettingConfigItemAutobackup autoBackup = SettingConfigItemAutobackup();
  SettingConfigItemAds ads = SettingConfigItemAds();

  bool autoConnectAfterLaunch = true;

  IPStrategy ipStrategy = IPStrategy.ipv4Only;
  bool proxyAll = false;
  List<String> frontProxy = [];
  bool privateDirect = true;
  bool quitWhenSwitchSystemUser = false;
  bool alwayOn = false;
  Duration? disconnectAfterSleep;
  bool disableUAReport = false;

  List<String> userAgents = [];
  List<String> speedTestList = [];
  String speedTest = kSpeedTestList[0];
  List<String> urlTestList = [];
  String urlTest = kUrlTestList[0];
  int urlTestTimeout = 8;
  bool latencyCheckResoveIP = false;

  String autoUpdateChannel = "stable"; //stable, beta
  String originSBProfile = "";
  int htmlBoardPort = htmlBoardPortDefault;

  Map<String, dynamic> toJson() => {
        'language_tag': languageTag,
        'region_code': regionCode,
        'novice': novice,
        'ui': ui,
        'ui_screen': uiScreen,
        'ntp': ntp,
        'proxy': proxy,
        'tun': tun,
        'dns': dns,
        'tls': tls,
        'mux': mux,
        'rule_sets': ruleSets,
        'perapp': perapp,
        'auto_select': autoSelect,
        'warp': warp,
        'webdav': webdav,
        'auto_backup': autoBackup,
        'ads': ads,
        'auto_connect_after_launch': autoConnectAfterLaunch,
        'ip_strategy': ipStrategy.name,
        'proxy_all': proxyAll,
        'front_proxy': frontProxy,
        'private_direct': privateDirect,
        'quit_when_switch_systemUser': quitWhenSwitchSystemUser,
        'alway_on': alwayOn,
        'disconnect_after_sleep_seconds': disconnectAfterSleep?.inSeconds,
        'disable_ua_report': disableUAReport,
        'user_agents': userAgents,
        'speed_test_list': speedTestList,
        'speed_test': speedTest,
        'url_test_list': urlTestList,
        'url_test_timeout': urlTestTimeout,
        'url_test': urlTest,
        'latency_check_resolve_ip': latencyCheckResoveIP,
        'auto_update_channel': autoUpdateChannel,
        'origin_sb_profile': originSBProfile,
        'html_board_port': htmlBoardPort,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    languageTag = map["language_tag"] ?? "";
    regionCode = map["region_code"] ?? "";
    novice = map["novice"] ?? false;

    ui = SettingConfigItemUI.fromJsonStatic(map["ui"]);
    uiScreen =
        SettingConfigItemUIScreen.fromJsonStatic(map["ui_screen"] ?? map);
    if (map["ntp"] is Map) {
      ntp = SettingConfigItemNTP.fromJsonStatic(map["ntp"]);
    } else {
      ntp.enable = map["ntp"] ?? false;
    }

    proxy = SettingConfigItemProxy.fromJsonStatic(map["proxy"]);
    if (map["tun"] is Map) {
      tun = SettingConfigItemTUN.fromJsonStatic(map["tun"]);
    } else {
      tun = SettingConfigItemTUN.fromJsonStatic(map);
    }
    dns = SettingConfigItemDNS.fromJsonStatic(map["dns"] ?? map);
    tls = SettingConfigItemTLS.fromJsonStatic(map["tls"]);
    mux = SettingConfigItemMux.fromJsonStatic(map["mux"]);
    ruleSets = SettingConfigItemRuleSets.fromJsonStatic(
        map["rule_sets"] ?? map, regionCode);
    if (map["perapp"] is Map) {
      perapp = SettingConfigItemPerapp.fromJsonStatic(map["perapp"]);
    } else {
      perapp = SettingConfigItemPerapp.fromJsonStatic(map);
    }
    autoSelect =
        SettingConfigItemAutoSelect.fromJsonStatic(map["auto_select"] ?? map);
    warp = SettingConfigItemUICloudflareWarp.fromJsonStatic(map["warp"] ?? map);
    webdav = SettingConfigItemWebDev.fromJsonStatic(map["webdav"]);
    autoBackup = SettingConfigItemAutobackup.fromJsonStatic(map["auto_backup"]);
    ads = SettingConfigItemAds.fromJsonStatic(map["ads"]);

    autoConnectAfterLaunch = map["auto_connect_after_launch"] ?? true;

    var name = map["ip_strategy"];
    if (name != null) {
      if (name == IPStrategy.ipv4Only.name) {
        ipStrategy = IPStrategy.ipv4Only;
      } else if (name == IPStrategy.preferIPv4.name) {
        ipStrategy = IPStrategy.preferIPv4;
      } else if (name == IPStrategy.preferIPv6.name) {
        ipStrategy = IPStrategy.preferIPv6;
      } else if (name == IPStrategy.ipv6Only.name) {
        ipStrategy = IPStrategy.ipv6Only;
      } else {
        ipStrategy = IPStrategy.ipv4Only;
      }
    } else {
      ipStrategy = map["enable_ipv6"] == true
          ? IPStrategy.preferIPv4
          : IPStrategy.ipv4Only;
    }

    proxyAll = map["proxy_all"] ?? false;
    var _frontProxy = map["front_proxy"];
    if (_frontProxy is String) {
      if (_frontProxy.isNotEmpty) {
        frontProxy.add(_frontProxy);
      }
    } else {
      frontProxy =
          ConvertUtils.getListStringFromDynamic(_frontProxy, true, [])!;
    }

    privateDirect = map["private_direct"] ?? true;
    quitWhenSwitchSystemUser = map["quit_when_switch_systemUser"] ?? false;
    alwayOn = map["alway_on"] ?? false;

    if (map["disconnect_after_sleep_seconds"] != null) {
      disconnectAfterSleep =
          Duration(seconds: map["disconnect_after_sleep_seconds"]);
      if (disconnectAfterSleep!.inSeconds < 30) {
        disconnectAfterSleep = const Duration(seconds: 30);
      }
      if (disconnectAfterSleep!.inHours > 12) {
        disconnectAfterSleep = const Duration(hours: 12);
      }
    }

    disableUAReport = map["disable_ua_report"] ?? false;
    speedTestList = ConvertUtils.getListStringFromDynamic(
        map["speed_test_list"], true, [])!;
    userAgents =
        ConvertUtils.getListStringFromDynamic(map["user_agents"], true, [])!;

    speedTest = map["speed_test"] ?? "";
    if (speedTest.isEmpty) {
      speedTest = kSpeedTestList[0];
    }

    urlTestList =
        ConvertUtils.getListStringFromDynamic(map["url_test_list"], true, [])!;
    urlTestTimeout = map["url_test_timeout"] ?? 8;

    urlTest = map["url_test"] ?? "";
    if (urlTest.isEmpty) {
      urlTest = kUrlTestList[0];
    }
    latencyCheckResoveIP = map["latency_check_resolve_ip"] ??
        map["latency_check_resove_ip"] ??
        false;

    autoUpdateChannel = map["auto_update_channel"] ?? "stable";
    if (autoUpdateChannel.isEmpty) {
      autoUpdateChannel = "stable";
    }
    originSBProfile = map["origin_sb_profile"] ?? "";
    htmlBoardPort = map["html_board_port"] ?? htmlBoardPortDefault;
  }

  static SettingConfig fromJsonStatic(Map<String, dynamic>? map) {
    SettingConfig config = SettingConfig();
    config.fromJson(map);
    return config;
  }

  void reset() {
    var map = toJson();
    removeNotMap(map);
    map["language_tag"] = languageTag;
    map["region_code"] = regionCode;
    fromJson(map);
  }

  country.Country currentCountry() {
    final data = country.Countries.values.where((country) {
      if (country.alpha2 == regionCode) {
        return true;
      }

      return false;
    }).toList();
    if (data.isEmpty) {
      return country.Countries.values.first;
    }
    return data[0];
  }

  static String languageTagForCountry() {
    return LocaleSettings.currentLocale.languageTag.replaceAll("-", "_");
  }
}

class SettingManager {
  static bool _savingConfig = false;
  static bool _dirty = false;
  static SettingConfig _config = SettingConfig();
  static Future<void> init({bool fromBackupRestore = false}) async {
    await loadConfig();
    if (fromBackupRestore) {
      _config.ads.clear();
      if (!Platform.isWindows) {
        _config.tun.enable = true;
      }
    }

    bool save = await parseConfig();
    if (save) {
      saveConfig();
    }
  }

  static Future<void> uninit() async {}
  static Future<bool> parseConfig() async {
    bool save = false;

    String languageTag = "en";
    if (_config.languageTag.isNotEmpty) {
      for (var locale in AppLocale.values) {
        if (locale.languageTag == _config.languageTag) {
          languageTag = locale.languageTag;
          break;
        }
      }
    } else {
      String planguageTag = [
        PlatformDispatcher.instance.locale.languageCode,
        PlatformDispatcher.instance.locale.countryCode ?? ""
      ].join("-");
      for (var locale in AppLocale.values) {
        if (locale.languageTag == planguageTag) {
          languageTag = locale.languageTag;
          break;
        }
      }
    }

    if (languageTag.isEmpty) {
      languageTag = "en";
    }

    for (var locale in AppLocale.values) {
      if (languageTag == locale.languageTag) {
        save = true;
        _config.languageTag = languageTag;
        var current = LocaleSettings.currentLocale;
        if (current != locale) {
          await LocaleSettings.setLocale(locale);
        }

        break;
      }
    }

    if (_config.regionCode.isEmpty) {
      save = true;
      _config.regionCode =
          PlatformDispatcher.instance.locale.countryCode ?? "US";
    }
    AnalyticsUtils.setEventType(_config.disableUAReport
        ? analyticsEventTypeNoUA
        : analyticsEventTypeAll);

    return save;
  }

  static Future<void> loadConfig() async {
    String filePath = await PathUtils.settingFilePath();
    var file = File(filePath);
    bool exists = await file.exists();
    if (!exists) {
      return;
    }
    String content = "";
    try {
      content = await file.readAsString();
      if (content.isNotEmpty) {
        var config = jsonDecode(content);
        _config.fromJson(config);
        if (_config.uiScreen.backgroundImageType ==
                SettingConfigItemUIScreen.backgroundTypeLocal &&
            _config.uiScreen.backgroundImageLocal.isNotEmpty) {
          var file = File(_config.uiScreen.backgroundImageLocal);
          try {
            if (!await file.exists()) {
              _config.uiScreen.backgroundImageLocal = "";
            }
          } catch (err) {}
        }
      }
    } catch (err, stacktrace) {
      SentryUtils.captureException(
          'SettingManager.loadConfig.exception', [content], err, stacktrace,
          attachments: {filePath: content});
      Log.w("SettingManager.loadConfig exception $filePath ${err.toString()}");
    }
  }

  static void saveConfig() async {
    if (_savingConfig) {
      return;
    }
    _savingConfig = true;
    String filePath = await PathUtils.settingFilePath();
    //String content = jsonEncode(_config.toJson());
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(_config.toJson());
    try {
      await File(filePath).writeAsString(content, flush: true);
      if (!await FileUtils.validJsonFile(filePath)) {
        await File(filePath).writeAsString(content, flush: true);
      }
    } catch (err, stacktrace) {
      if (!ErrorReporterUtils.tryReportNoSpace(err.toString())) {
        SentryUtils.captureException(
          'SettingManager.saveConfig.exception',
          [],
          err,
          stacktrace,
        );
      }

      Log.w("SettingManager.saveConfig exception  $filePath ${err.toString()}");
    }
    _savingConfig = false;
  }

  static SettingConfig getConfig() {
    return _config;
  }

  static void reset() {
    _config = SettingConfig();
  }

  static void setDirty(bool dirty) {
    _dirty = dirty;
  }

  static bool getDirty() {
    return _dirty;
  }
}
