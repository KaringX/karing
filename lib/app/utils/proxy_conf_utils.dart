// ignore_for_file: constant_identifier_names, empty_catches

import 'dart:convert';
import 'dart:io';

import 'package:intl/intl.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/auto_conf_utils.dart';
import 'package:karing/app/utils/convert_utils.dart';
import 'package:karing/app/utils/date_time_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:tuple/tuple.dart';

class ProxyConfig extends SingboxOutboundOptions {
  int index = 0; //不用存储
  String server = ""; //不用存储
  int serverport = 0; //不用存储

  String groupid = "";
  String attach = "";
  String latency = "";
  String outletip = "";
  String outletregion = "";

  dynamic raw;

  Map<String, dynamic> toJson() {
    if (raw != null) {
      return {
        'groupid': groupid,
        'attach': attach,
        'latency': latency,
        'outlet_ip': outletip,
        'outlet_region': outletregion,
        ...raw
      };
    }
    return {
      'groupid': groupid,
      'attach': attach,
      'latency': latency,
      'outlet_ip': outletip,
      'outlet_region': outletregion,
      'type': type,
      'tag': tag
    };
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    raw = map;
    type = map["type"] ?? "";
    tag = map["tag"] ?? "";
    server = map["server"] ?? "";
    serverport = map["server_port"] ?? 0;

    groupid = map["groupid"] ?? "";
    attach = map["attach"] ?? "";
    latency = map["latency"] ?? "";
    outletip = map["outlet_ip"] ?? "";
    outletregion = map["outlet_region"] ?? "";
  }

  String getShowType() {
    switch (type) {
      case "shadowsocks":
        return "ss";

      case "shadowsocksr":
        return "ssr";

      case "shadowtls":
        return "s-tls";

      case "wireguard":
        return "wg";

      case "hysteria":
        return "hy";

      case "hysteria2":
        return "hy2";
    }
    return type;
  }

  ProxyConfig clone() {
    ProxyConfig item = ProxyConfig();
    item.raw = raw;
    item.type = type;
    item.tag = tag;
    item.index = index;
    item.server = server;
    item.serverport = serverport;
    item.attach = attach;
    item.groupid = groupid;
    item.latency = latency;

    return item;
  }

  bool isSame(ProxyConfig other) {
    return other.groupid == groupid &&
        other.type == type &&
        other.tag == tag &&
        other.server == server &&
        other.serverport == serverport;
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is ProxyConfig) {
      return runtimeType == other.runtimeType && isSame(other);
    } else {
      return false;
    }
  }

  @override
  int get hashCode {
    var result = 17;

    result = 37 * result + groupid.hashCode;
    result = 37 * result + latency.hashCode;
    result = 37 * result + type.hashCode;
    result = 37 * result + tag.hashCode;
    result = 37 * result + server.hashCode;
    result = 37 * result + serverport.hashCode;
    return result;
  }
}

//clash, 及部分 v2用户订阅 信息
class SubscriptionTraffic {
  String updateTime = ''; //最后一次更新时间
  String upload = ''; //上传
  String download = ''; //下载
  String total = ''; //总量
  String expire = ''; //过期时间
  bool overQuota = false;

  Map<String, dynamic> toJson() => {
        'updateTime': updateTime,
        'upload': upload,
        'download': download,
        'total': total,
        'expire': expire,
        'over_quota': overQuota,
      };

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    updateTime = map["updateTime"] ?? "";
    upload = map["upload"] ?? "";
    download = map["download"] ?? "";
    total = map["total"] ?? "";
    expire = map["expire"] ?? "";
    overQuota = map["over_quota"] ?? false;
  }

  static SubscriptionTraffic? fromJsonStatic(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }

    SubscriptionTraffic tmp = SubscriptionTraffic();
    tmp.fromJson(map);
    return tmp;
  }

  Tuple2<bool, String> getExpireTime(String languageTag) {
    bool expiring = false;
    String expireTime = expire;
    if (expireTime.isNotEmpty) {
      DateTime? date = DateTime.tryParse(expireTime);
      if (date != null) {
        try {
          var dif = date.difference(DateTime.now());
          if (dif.inDays <= 14) {
            expiring = true;
          }
          if (languageTag.isNotEmpty) {
            expireTime = DateFormat.yMd(languageTag).format(date);
          }
        } catch (e) {}
      }
    }

    return Tuple2(expiring, expireTime);
  }
}

class SubscriptionISP {
  String user = '';
  String id = '';

  Map<String, dynamic> toJson() => {
        'user': user,
        'id': id,
      };

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    user = map["user"] ?? "";
    id = map["id"] ?? "";
  }

  static SubscriptionISP? fromJsonStatic(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }

    SubscriptionISP tmp = SubscriptionISP();
    tmp.fromJson(map);
    return tmp;
  }
}

class TransException {
  final String context;
  final String message;
  final String stack;
  const TransException(
      {required this.context, required this.message, required this.stack});
  @override
  String toString() {
    return "$message [$context]";
  }
}

class TransUnsupport {
  final String context;
  final String message;
  const TransUnsupport({required this.context, required this.message});
  @override
  String toString() {
    return "$message [$context]";
  }
}

class TransExceptionAndUnsupport {
  List<TransException> exceptions = [];
  List<TransUnsupport> unsupports = [];

  void clear() {
    exceptions = [];
    unsupports = [];
  }
}

class ProxyUrltest {
  String remark = "";
  List<String> tags = [];
  List<String> regexs = [];
  Map<String, dynamic> toJson() => {
        'remark': remark,
        'tags': tags,
        'regexs': regexs,
      };

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    remark = map["remark"] ?? "";
    tags = ConvertUtils.getListStringFromDynamic(map["tags"], false, [])!;
    regexs = ConvertUtils.getListStringFromDynamic(map["regexs"], false, [])!;

    if (regexs.isEmpty) {
      if (map["regex"] is String) {
        if (map["regex"].isNotEmpty) {
          regexs.add(map["regex"]);
        }
      }
    }
  }

  ProxyUrltest clone() {
    ProxyUrltest item = ProxyUrltest();
    item.remark = remark;
    item.tags = tags.toList();
    item.regexs = regexs.toList();
    return item;
  }
}

enum ProxyFilterMethod {
  all(name: "all"),
  include(name: "include"),
  exclude(name: "exclude");

  const ProxyFilterMethod({required this.name});
  final String name;
}

enum ProxyStrategy {
  preferProxy(name: "preferProxy"),
  preferDirect(name: "preferDirect"),
  onlyProxy(name: "onlyProxy"),
  onlyDirect(name: "onleyDirect");

  const ProxyStrategy({required this.name});
  final String name;
}

class ProxyFilter {
  ProxyFilterMethod method = ProxyFilterMethod.all;
  String keywordOrRegx = "";
  Map<String, dynamic> toJson() => {
        'method': method.name,
        'keywordOrRegx': keywordOrRegx,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    String _method = map["method"] ?? "";
    if (_method == ProxyFilterMethod.all.name) {
      method = ProxyFilterMethod.all;
    } else if (_method == ProxyFilterMethod.include.name) {
      method = ProxyFilterMethod.include;
    } else if (_method == ProxyFilterMethod.exclude.name) {
      method = ProxyFilterMethod.exclude;
    } else {
      method = ProxyFilterMethod.all;
    }
    keywordOrRegx = map["keywordOrRegx"] ?? "";
  }

  static ProxyFilter fromJsonStatic(Map<String, dynamic>? map) {
    if (map == null) {
      return ProxyFilter();
    }

    ProxyFilter tmp = ProxyFilter();
    tmp.fromJson(map);
    return tmp;
  }
}

//服务配置项
class ServerConfigGroupItem {
  int index = 0;
  String groupid = "";
  SubscriptionLinkType type = SubscriptionLinkType.unknown; //clash; v2ray; ss
  String site = ""; //官网
  String remark = ""; //备注或者文件名
  String urlOrPath = ""; //remote or local 可用
  String userAgentCompatible = ""; //user-agent
  ProxyFilter proxyFilter = ProxyFilter();
  List<String> proxyFilterRemove = [];
  bool keepDiversionRules = false;
  bool enableDiversionRules = false;
  bool reloadAfterProfileUpdate = true;
  bool testLatencyAfterProfileUpdate = false; //更新后自动启动延迟测试
  bool testLatencyAutoRemove = false; //自动移除测试延迟失败的服务器
  bool enable = true;
  bool editAble = false;
  String updateTime = ''; //最后一次更新时间
  ProxyStrategy proxyStrategy = ProxyStrategy.preferProxy;
  Duration? updateDuration;
  SubscriptionTraffic? traffic; //for clash

  SubscriptionISP? isp;

  List<ProxyConfig> servers = [];
  List<ProxyUrltest> urltests = [];
  List<String> testLatency = [];
  List<String> testLatencyIndepends = [];

  ServerConfigGroupItem clone() {
    ServerConfigGroupItem item = ServerConfigGroupItem();
    item.index = index;
    item.groupid = groupid;
    item.type = type;
    item.site = site;
    item.remark = remark;
    item.urlOrPath = urlOrPath;
    item.userAgentCompatible = userAgentCompatible;
    item.proxyFilter.method = proxyFilter.method;
    item.proxyFilter.keywordOrRegx = proxyFilter.keywordOrRegx;
    item.proxyFilterRemove = proxyFilterRemove.toList();
    item.keepDiversionRules = keepDiversionRules;
    item.enableDiversionRules = enableDiversionRules;
    item.reloadAfterProfileUpdate = reloadAfterProfileUpdate;
    item.testLatencyAfterProfileUpdate = testLatencyAfterProfileUpdate;
    item.testLatencyAutoRemove = testLatencyAutoRemove;
    item.enable = enable;
    item.updateTime = updateTime;
    item.proxyStrategy = proxyStrategy;
    item.updateDuration = updateDuration;
    item.traffic = traffic;
    item.isp = isp;
    for (var server in servers) {
      item.servers.add(server.clone());
    }
    for (var urltest in urltests) {
      item.urltests.add(urltest.clone());
    }

    return item;
  }

  List<ProxyConfig> cloneServers() {
    List<ProxyConfig> nservers = [];
    for (var server in servers) {
      nservers.add(server.clone());
    }
    return nservers;
  }

  void filterServers() {
    if (proxyFilterRemove.isNotEmpty) {
      Set<String> list = proxyFilterRemove.toSet();
      for (int i = 0; i < servers.length; ++i) {
        if (list.contains(servers[i].tag)) {
          servers.removeAt(i);
          i--;
        }
      }
    }

    if (proxyFilter.method == ProxyFilterMethod.all) {
      return;
    }
    if (proxyFilter.keywordOrRegx.isEmpty) {
      return;
    }
    RegExp? regExp;
    try {
      regExp = RegExp(proxyFilter.keywordOrRegx, caseSensitive: false);
    } catch (err, stacktrace) {}
    try {
      for (int i = 0; i < servers.length; ++i) {
        String tag = servers[i].tag.toLowerCase();
        if (tag.contains(proxyFilter.keywordOrRegx) ||
            (regExp != null && regExp.hasMatch(tag))) {
          if (proxyFilter.method == ProxyFilterMethod.exclude) {
            servers.removeAt(i);
            i--;
          }
        } else {
          if (proxyFilter.method == ProxyFilterMethod.include) {
            servers.removeAt(i);
            i--;
          }
        }
      }
    } catch (err, stacktrace) {}
  }

  Map<String, dynamic> toJson() => {
        'groupid': groupid,
        'type': type.name,
        'site': site,
        'remark': remark,
        'urlOrPath': urlOrPath,
        'userAgentCompatible': userAgentCompatible,
        'proxyFilter': proxyFilter,
        'proxyFilterRemove': proxyFilterRemove,
        'keepDiversionRules': keepDiversionRules,
        'enableDiversionRules': enableDiversionRules,
        'reloadAfterProfileUpdate': reloadAfterProfileUpdate,
        'testLatencyAfterProfileUpdate': testLatencyAfterProfileUpdate,
        'testLatencyAutoRemove': testLatencyAutoRemove,
        'enable': enable,
        'editAble': editAble,
        'updateTime': updateTime,
        'proxyStrategy': proxyStrategy.name,
        'updateDurationMinutes': updateDuration?.inMinutes,
        'traffic': traffic,
        'isp': isp,
        'servers': servers,
        'urltests': urltests,
      };

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    groupid = map["groupid"] ?? "";
    var name = map["type"];

    if (name == SubscriptionLinkType.clash.name) {
      type = SubscriptionLinkType.clash;
    } else if (name == SubscriptionLinkType.singbox.name) {
      type = SubscriptionLinkType.singbox;
    } else if (name == SubscriptionLinkType.v2ray.name) {
      type = SubscriptionLinkType.v2ray;
    } else if (name == SubscriptionLinkType.wireguard.name) {
      type = SubscriptionLinkType.wireguard;
    } else if (name == SubscriptionLinkType.unknown.name) {
      type = SubscriptionLinkType.unknown;
    }

    site = map["site"] ?? "";
    remark = map["remark"] ?? "";
    urlOrPath = map["urlOrPath"] ?? "";
    userAgentCompatible = map["userAgentCompatible"] ?? "";
    proxyFilter = ProxyFilter.fromJsonStatic(map["proxyFilter"]);
    proxyFilterRemove = ConvertUtils.getListStringFromDynamic(
        map["proxyFilterRemove"], false, [])!;
    keepDiversionRules = map["keepDiversionRules"] ?? false;
    enableDiversionRules = map["enableDiversionRules"] ?? false;
    reloadAfterProfileUpdate = map["reloadAfterProfileUpdate"] ?? false;
    testLatencyAfterProfileUpdate =
        map["testLatencyAfterProfileUpdate"] ?? false;
    testLatencyAutoRemove = map["testLatencyAutoRemove"] ?? false;
    enable = map["enable"] ?? true;
    editAble = map["editAble"] ?? true;
    updateTime = map["updateTime"] ?? "";
    var proxystrategy = map["proxyStrategy"];
    if (proxystrategy == null) {
      proxyStrategy = map["downloadPreferProxy"] != false
          ? ProxyStrategy.preferProxy
          : ProxyStrategy.preferDirect;
    } else {
      if (proxystrategy == ProxyStrategy.onlyProxy.name) {
        proxyStrategy = ProxyStrategy.onlyProxy;
      } else if (proxystrategy == ProxyStrategy.onlyDirect.name) {
        proxyStrategy = ProxyStrategy.onlyDirect;
      } else if (proxystrategy == ProxyStrategy.preferDirect.name) {
        proxyStrategy = ProxyStrategy.preferDirect;
      } else {
        proxyStrategy = ProxyStrategy.preferProxy;
      }
    }

    if (map["updateDurationMinutes"] != null) {
      updateDuration = Duration(minutes: map["updateDurationMinutes"]);
      if (updateDuration!.inDays > 365) {
        updateDuration = const Duration(days: 365);
      }
      if (updateDuration!.inSeconds < 5) {
        updateDuration = const Duration(seconds: 5);
      }
    }

    traffic = SubscriptionTraffic.fromJsonStatic(map["traffic"]);
    isp = SubscriptionISP.fromJsonStatic(map["ispScheme"] ?? map["isp"]);

    var tempServers = map["servers"] ?? [];
    for (var i in tempServers) {
      ProxyConfig proxy = ProxyConfig();
      proxy.fromJson(i);
      proxy.groupid = groupid;
      servers.add(proxy);
    }
    var tempUrltests = map["urltests"] ?? [];
    for (var i in tempUrltests) {
      ProxyUrltest urltest = ProxyUrltest();
      urltest.fromJson(i);
      urltests.add(urltest);
    }
  }

  bool isRemote() {
    return urlOrPath.isNotEmpty && urlOrPath.contains("://");
  }

  ProxyConfig? getByTag(String tag) {
    for (var i in servers) {
      if (i.tag == tag) {
        return i;
      }
    }
    return null;
  }

  String getTypeShort() {
    if (type == SubscriptionLinkType.clash) {
      return "CL";
    } else if (type == SubscriptionLinkType.singbox) {
      return "SB";
    } else if (type == SubscriptionLinkType.v2ray) {
      return "V2";
    } else if (type == SubscriptionLinkType.ss) {
      return "SS";
    } else if (type == SubscriptionLinkType.wireguard) {
      return "WG";
    }
    return "";
  }

  bool removeLatencyError() {
    bool changed = false;
    Map<String, int> detours = {};
    for (int i = 0; i < servers.length; ++i) {
      String? detour = servers[i].raw["detour"];
      if (detour != null && detour.isNotEmpty) {
        if (detours.containsKey(detour)) {
          detours[detour] = detours[detour]! + 1;
        } else {
          detours[detour] = 1;
        }
      }
    }
    for (int i = 0; i < servers.length; ++i) {
      if (servers[i].latency.isNotEmpty) {
        if (int.tryParse(servers[i].latency) == null) {
          changed = true;
          String? detour = servers[i].raw["detour"];
          if (detour != null && detour.isNotEmpty) {
            if (detours.containsKey(detour)) {
              detours[detour] = detours[detour]! - 1;
            }
          }
          servers.removeAt(i);
          --i;
        }
      }
    }
    for (int i = 0; i < servers.length; ++i) {
      if (detours.containsKey(servers[i].tag) &&
          detours[servers[i].tag]! <= 0) {
        servers.removeAt(i);
        --i;
      }
    }
    return changed;
  }

  SubscriptionISP? getISP() {
    if (!isRemote()) {
      return null;
    }
    if (isp != null && isp!.id.isNotEmpty) {
      return isp;
    }

    return null;
  }
}

class ServerDiversionGroupRuleSetItem extends SingboxRouteRuleSetOptions {
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    tag = map["tag"] ?? "";
    type = map["type"] ?? "";
    format = map["format"] ?? "";
    url = map["url"] ?? "";
  }

  static String? getTagFromUrl(Uri uri) {
    List<String> pathSegs = uri.pathSegments;
    if (pathSegs.isEmpty) {
      return null;
    }
    List<String> paths = pathSegs[pathSegs.length - 1].split(".");
    if (paths.isEmpty) {
      return null;
    }
    String name = paths[0].toLowerCase();
    if (name.contains("geosite") || name.contains("geoip")) {
      return name;
    }
    String geo = "";
    for (var p in pathSegs) {
      p = p.toLowerCase();
      if (p.contains("geosite")) {
        geo = "[geosite]";
        break;
      }
      if (p.contains("geoip")) {
        geo = "[geoip]";
        break;
      }
    }
    return geo + paths[0].toLowerCase();
  }
}

class DiversionRulesGroup {
  int index = 0;
  String name = "";
  String groupid = "";
  String type = "";
  bool or = true;

  List<String> proxies = [];
  List<String> domainSuffix = []; // DOMAIN-SUFFIX
  List<String> domain = []; // DOMAIN
  List<String> domainKeyword = []; // DOMAIN-KEYWORD
  List<String> domainRegex = []; // DOMAIN-REGEX
  List<String> ipCidr = []; // IP-CIDR
  int? ipVersion;
  List<int> port = [];
  List<String> protocol = [];
  List<String> networkType = [];
  List<String> wifiSsid = [];
  List<String> wifiBssid = [];
  List<String> ruleSet = [];
  List<String> ruleSetBuildIn = [];
  List<String> package = []; //android
  List<String> _processNameWindows = [];
  List<String> _processPathWindows = [];
  List<String> _processDirWindows = [];
  List<String> _processNameMacos = [];
  List<String> _processPathMacos = [];
  List<String> _processDirMacos = [];
  List<String> _processNameLinux = [];
  List<String> _processPathLinux = [];
  List<String> _processDirLinux = [];

  Set<String> domainSuffixSet = {}; // DOMAIN-SUFFIX
  Set<String> domainSet = {}; // DOMAIN
  Set<String> domainKeywordSet = {}; // DOMAIN-KEYWORD
  Set<String> ipCidrSet = {}; // IP-CIDR
  Set<String> ipCidr6Set = {}; // IP-CIDR6

  List<String> get processName {
    if (Platform.isWindows) {
      return _processNameWindows;
    } else if (Platform.isMacOS) {
      return _processNameMacos;
    } else if (Platform.isLinux) {
      return _processNameLinux;
    }
    return [];
  }

  List<String> get processPath {
    if (Platform.isWindows) {
      return _processPathWindows;
    } else if (Platform.isMacOS) {
      return _processPathMacos;
    } else if (Platform.isLinux) {
      return _processPathLinux;
    }
    return [];
  }

  static List<String> appendProcessPathRegex(List<String> list) {
    List<String> ret = [];
    for (var i in list) {
      String regx = "^$i";
      if (Platform.isWindows) {
        regx = "$regx\\".replaceAll("\\", "\\\\");
      } else {
        regx = "$regx/";
      }

      ret.add(regx);
    }
    return ret;
  }

  List<String> get processDir {
    if (Platform.isWindows) {
      return _processDirWindows;
    } else if (Platform.isMacOS) {
      return _processDirMacos;
    } else if (Platform.isLinux) {
      return _processDirLinux;
    }
    return [];
  }

  set processName(List<String> list) {
    if (Platform.isWindows) {
      _processNameWindows = list;
    } else if (Platform.isMacOS) {
      _processNameMacos = list;
    } else if (Platform.isLinux) {
      _processNameLinux = list;
    }
  }

  set processPath(List<String> list) {
    if (Platform.isWindows) {
      _processPathWindows = list;
    } else if (Platform.isMacOS) {
      _processPathMacos = list;
    } else if (Platform.isLinux) {
      _processPathLinux = list;
    }
  }

  set processDir(List<String> list) {
    if (Platform.isWindows) {
      _processDirWindows = list;
    } else if (Platform.isMacOS) {
      _processDirMacos = list;
    } else if (Platform.isLinux) {
      _processDirLinux = list;
    }
  }

  DiversionRulesGroup clone() {
    DiversionRulesGroup item = DiversionRulesGroup();
    item.index = index;
    item.name = name;
    item.groupid = groupid;
    item.type = type;
    item.or = or;
    item.proxies = proxies;
    item.domainSuffix = domainSuffix;
    item.domain = domain;
    item.domainKeyword = domainKeyword;
    item.domainRegex = domainRegex;
    item.ipCidr = ipCidr;
    item.ipVersion = ipVersion;
    item.port = port;
    item.protocol = protocol;
    item.networkType = networkType;
    item.wifiSsid = wifiSsid;
    item.wifiBssid = wifiBssid;
    item.ruleSet = ruleSet;
    item.ruleSetBuildIn = ruleSetBuildIn;
    item.package = package;
    item._processNameWindows = _processNameWindows;
    item._processPathWindows = _processPathWindows;
    item._processDirWindows = _processDirWindows;
    item._processNameMacos = _processNameMacos;
    item._processPathMacos = _processPathMacos;
    item._processDirMacos = _processDirMacos;
    item._processNameLinux = _processNameLinux;
    item._processPathLinux = _processPathLinux;
    item._processDirLinux = _processDirLinux;
    return item;
  }

  Map<String, dynamic> toJson({bool? noGroupId}) {
    Map<String, dynamic> ret = {};
    if (noGroupId != true) {
      ret['groupid'] = groupid;
    }

    ret['name'] = name;
    ret['type'] = type;
    ret['or'] = or;
    if (proxies.isNotEmpty) {
      ret['proxies'] = proxies;
    }
    if (domainSuffix.isNotEmpty) {
      ret['domain_suffix'] = domainSuffix;
    }
    if (domain.isNotEmpty) {
      ret['domain'] = domain;
    }
    if (domainKeyword.isNotEmpty) {
      ret['domain_keyword'] = domainKeyword;
    }
    if (domainRegex.isNotEmpty) {
      ret['domain_regex'] = domainRegex;
    }
    if (ipCidr.isNotEmpty) {
      ret['ip_cidr'] = ipCidr;
    }
    if (ipVersion != null) {
      ret['ip_version'] = ipVersion;
    }
    if (port.isNotEmpty) {
      ret['port'] = port;
    }
    if (protocol.isNotEmpty) {
      ret['protocol'] = protocol;
    }
    if (networkType.isNotEmpty) {
      ret['network_type'] = networkType;
    }
    if (wifiSsid.isNotEmpty) {
      ret['wifi_ssid'] = wifiSsid;
    }
    if (wifiBssid.isNotEmpty) {
      ret['wifi_bssid'] = wifiBssid;
    }
    if (ruleSet.isNotEmpty) {
      ret['rule_set'] = ruleSet;
    }
    if (ruleSetBuildIn.isNotEmpty) {
      ret['rule_set_build_in'] = ruleSetBuildIn;
    }
    if (package.isNotEmpty) {
      ret['package'] = package;
    }
    if (_processNameWindows.isNotEmpty) {
      ret['process_name_windows'] = _processNameWindows;
    }
    if (_processPathWindows.isNotEmpty) {
      ret['process_path_windows'] = _processPathWindows;
    }
    if (_processDirWindows.isNotEmpty) {
      ret['process_dir_windows'] = _processDirWindows;
    }
    if (_processNameMacos.isNotEmpty) {
      ret['process_name_macos'] = _processNameMacos;
    }
    if (_processPathMacos.isNotEmpty) {
      ret['process_path_macos'] = _processPathMacos;
    }
    if (_processDirMacos.isNotEmpty) {
      ret['process_dir_macos'] = _processDirMacos;
    }
    if (_processNameLinux.isNotEmpty) {
      ret['process_name_linux'] = _processNameLinux;
    }
    if (_processPathLinux.isNotEmpty) {
      ret['process_path_linux'] = _processPathLinux;
    }
    if (_processDirLinux.isNotEmpty) {
      ret['process_dir_linux'] = _processDirLinux;
    }
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    groupid = map["groupid"] ?? "";
    name = map["name"] ?? "";
    type = map["type"] ?? "";
    or = map["or"] ?? true;
    proxies = ConvertUtils.getListStringFromDynamic(map["proxies"], false, [])!;
    domainSuffix =
        ConvertUtils.getListStringFromDynamic(map["domain_suffix"], false, [])!;
    domain = ConvertUtils.getListStringFromDynamic(map["domain"], false, [])!;
    domainKeyword = ConvertUtils.getListStringFromDynamic(
        map["domain_keyword"], false, [])!;
    domainRegex =
        ConvertUtils.getListStringFromDynamic(map["domain_regex"], false, [])!;
    ipCidr = ConvertUtils.getListStringFromDynamic(map["ip_cidr"], false, [])!;
    ipVersion = map["ip_version"];
    port = ConvertUtils.getListIntFromDynamic(map["port"], true, [])!;
    protocol =
        ConvertUtils.getListStringFromDynamic(map["protocol"], false, [])!;
    networkType =
        ConvertUtils.getListStringFromDynamic(map["network_type"], false, [])!;
    wifiSsid =
        ConvertUtils.getListStringFromDynamic(map["wifi_ssid"], false, [])!;
    wifiBssid =
        ConvertUtils.getListStringFromDynamic(map["wifi_bssid"], false, [])!;
    ruleSet =
        ConvertUtils.getListStringFromDynamic(map["rule_set"], false, [])!;
    ruleSetBuildIn = ConvertUtils.getListStringFromDynamic(
        map["rule_set_build_in"], false, [])!;
    package = ConvertUtils.getListStringFromDynamic(map["package"], false, [])!;
    _processNameWindows = ConvertUtils.getListStringFromDynamic(
        map["process_name_windows"], false, [])!;
    _processPathWindows = ConvertUtils.getListStringFromDynamic(
        map["process_path_windows"], false, [])!;
    _processDirWindows = ConvertUtils.getListStringFromDynamic(
        map["process_dir_windows"], false, [])!;
    _processNameMacos = ConvertUtils.getListStringFromDynamic(
        map["process_name_macos"], false, [])!;
    _processPathMacos = ConvertUtils.getListStringFromDynamic(
        map["process_path_macos"], false, [])!;
    _processDirMacos = ConvertUtils.getListStringFromDynamic(
        map["process_dir_macos"], false, [])!;
    _processNameLinux = ConvertUtils.getListStringFromDynamic(
        map["process_name_linux"], false, [])!;
    _processPathLinux = ConvertUtils.getListStringFromDynamic(
        map["process_path_linux"], false, [])!;
    _processDirLinux = ConvertUtils.getListStringFromDynamic(
        map["process_dir_linux"], false, [])!;

    if (_processNameWindows.isEmpty) {
      _processNameWindows = ConvertUtils.getListStringFromDynamic(
          map["process_name"], false, [])!;
    }
    if (_processPathWindows.isEmpty) {
      _processPathWindows = ConvertUtils.getListStringFromDynamic(
          map["process_path"], false, [])!;
    }
  }

  String getProxyTag(String proxy) {
    if (proxy == kProxyDirect) {
      return kOutboundTagDirect;
    }
    if (proxy == kProxyBlock) {
      return kOutboundTagBlock;
    }
    return "";
  }
}

class ServerDiversionGroupItem {
  String groupid = "";
  String urlOrPath = ""; //remote or local 可用
  String remark = "";
  bool editAble = false;
  List<DiversionRulesGroup> groups = [];

  ServerDiversionGroupItem clone() {
    ServerDiversionGroupItem item = ServerDiversionGroupItem();
    item.groupid = groupid;
    item.urlOrPath = urlOrPath;
    item.remark = remark;

    for (var i in groups) {
      item.groups.add(i.clone());
    }

    return item;
  }

  Map<String, dynamic> toJson() => {
        'groupid': groupid,
        'urlOrPath': urlOrPath,
        'remark': remark,
        'editAble': editAble,
        'groups': groups
      };
  void fromJson(Map<String, dynamic>? map, bool check, String customgroupid) {
    if (map == null) {
      return;
    }

    groupid = map["groupid"] ?? "";
    urlOrPath = map["urlOrPath"] ?? "";
    remark = map["remark"] ?? "";
    editAble = map["editAble"] ?? false;
    var temp = map["groups"] ?? map["routings"] ?? [];
    int index = 0;
    for (var i in temp) {
      DiversionRulesGroup group = DiversionRulesGroup();
      group.fromJson(i);
      if (groupid == customgroupid ||
          !check ||
          (group.domainSuffix.isNotEmpty ||
              group.domainKeyword.isNotEmpty ||
              group.domain.isNotEmpty ||
              group.ipCidr.isNotEmpty ||
              group.ruleSet.isNotEmpty ||
              group.package.isNotEmpty ||
              group.processName.isNotEmpty ||
              group.processPath.isNotEmpty)) {
        group.index = index++;
        groups.add(group);
      }
    }
  }

  DiversionRulesGroup? getByName(String name) {
    for (var i in groups) {
      if (i.name == name) {
        return i;
      }
    }
    return null;
  }
}

class ProxyConfUtils {
  static String convertTrafficToString(num? value, {num kb = 1024}) {
    if (value == null || value < 0) {
      return "";
    }
    num kKB = kb;
    num kMB = kb * kKB;
    num kGB = kb * kMB;
    num kTB = kb * kGB;
    num kPB = kb * kTB;

    if (value >= kPB) {
      return "${value ~/ kPB} PB";
    }
    if (value >= kTB) {
      return "${value ~/ kTB} TB";
    }
    if (value >= kGB) {
      return "${value ~/ kGB} GB";
    }
    if (value >= kMB) {
      return "${value ~/ kMB} MB";
    }
    if (value >= kKB) {
      return "${value ~/ kKB} KB";
    }
    return "$value B";
  }

  static String convertTrafficToStringDouble(num? value, {num kb = 1024}) {
    if (value == null || value < 0) {
      return "";
    }
    num kKB = kb;
    num kMB = kb * kKB;
    num kGB = kb * kMB;
    num kTB = kb * kGB;
    num kPB = kb * kTB;
    if (value >= kPB) {
      return "${(value / kPB).toStringAsFixed(1)} PB";
    }
    if (value >= kTB) {
      return "${(value / kTB).toStringAsFixed(1)} TB";
    }
    if (value >= kGB) {
      return "${(value / kGB).toStringAsFixed(1)} GB";
    }
    if (value >= kMB) {
      return "${(value / kMB).toStringAsFixed(1)} MB";
    }
    if (value >= kKB) {
      return "${(value / kKB).toStringAsFixed(1)} KB";
    }
    return "$value B";
  }

  static SubscriptionTraffic? getTraffic(HttpHeaders? head) {
    if (head == null) {
      return null;
    }
    //subscription-userinfo: upload=9579993656; download=92563554739; total=2684354560000; expire=1695781320
    List<String>? subscription = head["subscription-userinfo"];
    if (subscription == null || subscription.isEmpty) {
      return null;
    }
    List<String> items = subscription[0].split(';');
    if (items.isEmpty) {
      return null;
    }
    SubscriptionTraffic traffic = SubscriptionTraffic();
    traffic.updateTime = DateTime.now().toString();
    num upload = 0;
    num download = 0;
    num total = 0;
    for (var item in items) {
      List<String> subitems = item.split('=');
      if (subitems.length != 2) {
        continue;
      }
      String key = subitems[0].trim();
      num? value = num.tryParse(subitems[1].trim());
      if (value == null) {
        continue;
      }

      switch (key) {
        case "upload":
          upload = value;
          traffic.upload = convertTrafficToStringDouble(value);
          break;
        case "download":
          download = value;
          traffic.download = convertTrafficToStringDouble(value);
          break;
        case "total":
          total = value;
          traffic.total = convertTrafficToStringDouble(value);
          break;
        case "expire":
          traffic.expire =
              DateTimeUtils.millisecondSecondsToDate((value * 1000).toInt()) ??
                  "";
          break;
      }
    }
    traffic.overQuota = upload + download >= total;

    return traffic;
  }

  static String? getFileName(HttpHeaders? head) {
    if (head == null) {
      return null;
    }
    //Content-Disposition: attachment; filename=Clash_1694061514.yaml
    String? contentDisposition = head.value("Content-Disposition");
    if (contentDisposition == null) {
      return null;
    }
    List<String> items = contentDisposition.split(';');
    if (items.isEmpty) {
      return null;
    }
    for (var item in items) {
      List<String> subitems = item.split('=');
      if (subitems.length != 2) {
        continue;
      }
      String key = subitems[0].trim();
      String? value = subitems[1].trim();
      if (key == "filename") {
        return value;
      }
    }

    return null;
  }

  static ReturnResult<String> getUrlFromQRContent(String url) {
    url = url.replaceAll(
      " ",
      "",
    );
    try {
      Uri? ur = Uri.tryParse(url);
      if (ur == null) {
        return ReturnResult(error: ReturnResultError("Invalid Url: $url"));
      }
      if (ur.isScheme("http") || ur.isScheme("https")) {
        return ReturnResult(data: url);
      } else if (ur.isScheme("ulink")) {
        return ReturnResult(data: url);
      } else if (ur.isScheme("karing") || ur.isScheme("clash")) {
        var ur2 = ur.queryParameters["url"];
        if (ur2 == null) {
          return ReturnResult(
              error: ReturnResultError("Invalid Url: param 'url' not found"));
        }
        return ReturnResult(data: Uri.decodeFull(ur2));
      } else {
        return ReturnResult(
            error: ReturnResultError("unsupport scheme:${ur.scheme}"));
      }
    } catch (err, stacktrace) {
      return ReturnResult(
          error: ReturnResultError(err.toString(), stacktrace: stacktrace));
    }
  }
}
