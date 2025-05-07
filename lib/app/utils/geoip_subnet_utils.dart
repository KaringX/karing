import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:path/path.dart' as path;

class GeoIPClientSubnet {
  String ipv4 = "";
  String ipv6 = "";
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'ipv4': ipv4,
      'ipv6': ipv6,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    ipv4 = map["ipv4"] ?? "";
    ipv6 = map["ipv6"] ?? "";
  }

  static GeoIPRulesetItem fromJsonStatic(Map<String, dynamic>? map) {
    GeoIPRulesetItem config = GeoIPRulesetItem();
    config.fromJson(map);
    return config;
  }
}

class GeoIPRulesetItem {
  List<String> ip_cidr = [];
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'ip_cidr': ip_cidr,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    var _ip_cidr = map["ip_cidr"] ?? [];
    for (var ipcidr in _ip_cidr) {
      ip_cidr.add(ipcidr as String);
    }
  }

  static GeoIPRulesetItem fromJsonStatic(Map<String, dynamic>? map) {
    GeoIPRulesetItem config = GeoIPRulesetItem();
    config.fromJson(map);
    return config;
  }
}

class GeoIPRuleset {
  List<GeoIPRulesetItem> rules = [];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {
      'rules': rules,
    };
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    var _rules = map["rules"] ?? [];
    for (var rule in _rules) {
      GeoIPRulesetItem item = GeoIPRulesetItem.fromJsonStatic(rule);
      rules.add(item);
    }
  }

  static GeoIPRuleset fromJsonStatic(Map<String, dynamic>? map) {
    GeoIPRuleset config = GeoIPRuleset();
    config.fromJson(map);
    return config;
  }
}

class GeoipSubnetUtils {
  static Map<String, String> _subnets = {};
  static Future<Map<String, GeoIPClientSubnet>> genClientSubnet(
      List<String> filePaths) async {
    Map<String, GeoIPClientSubnet> result = {};
    for (var filePath in filePaths) {
      String basename = path.basenameWithoutExtension(filePath);
      if (basename.length != 2) {
        continue;
      }

      var file = File(filePath);
      bool exists = await file.exists();
      if (!exists) {
        continue;
      }

      try {
        String content = await file.readAsString();
        if (content.isNotEmpty) {
          var config = jsonDecode(content);
          GeoIPRuleset rs = GeoIPRuleset.fromJsonStatic(config);
          for (var rule in rs.rules) {
            if (rule.ip_cidr.isNotEmpty) {
              GeoIPClientSubnet subnet = GeoIPClientSubnet();
              for (var ipcidr in rule.ip_cidr) {
                if (subnet.ipv4.isEmpty) {
                  if (NetworkUtils.isIpv4WithMask(ipcidr)) {
                    subnet.ipv4 = ipcidr;
                  }
                }
                if (subnet.ipv6.isEmpty) {
                  if (NetworkUtils.isIpv6WithMask(ipcidr)) {
                    subnet.ipv6 = ipcidr;
                  }
                }
                if (subnet.ipv4.isNotEmpty && subnet.ipv6.isNotEmpty) {
                  break;
                }
              }
              result[basename] = subnet;
              break;
            }
          }
        }
      } catch (err, stacktrace) {}
    }
    return result;
  }

  static Future<void> saveSubnets(
      Map<String, GeoIPClientSubnet> subnets, String filePath) async {
    const JsonEncoder encoder = JsonEncoder.withIndent(null);
    String content = encoder.convert(subnets);
    try {
      await File(filePath).writeAsString(content, flush: true);
    } catch (err, stacktrace) {}
  }

  static Future<String?> subnet(String region) async {
    if (_subnets.isNotEmpty) {
      return _subnets[region];
    }
    try {
      String content = await rootBundle
          .loadString("assets/datas/geoip_subnets.json", cache: false);
      if (content.isNotEmpty) {
        var config = jsonDecode(content);
        if (config is Map) {
          config.forEach((key, value) {
            _subnets[key] = value["ipv4"];
          });
        }
      }
    } catch (err) {}
    return _subnets[region];
  }
}
