// ignore_for_file: empty_catches

import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/convert_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/ruleset_codes_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';

class DiversionCustomRule {
  String outbound = "";
  String name = "";
  bool enable = true;
  bool or = true;
  List<String> domainSuffix = [];
  List<String> domain = [];
  List<String> domainKeyword = [];
  List<String> domainRegex = [];
  List<String> ipCidr = [];
  List<int> port = [];
  List<String> protocol = [];
  List<String> ruleSet = [];
  List<String> ruleSetBuildIn = [];
  List<String> package = [];
  List<String> processName = [];
  List<String> processPath = [];

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    outbound = map["outbound"] ?? "";
    name = map["name"] ?? "";
    enable = map["switch"] ?? false;
    or = map["or"] ?? true;
    domainSuffix =
        ConvertUtils.getListStringFromDynamic(map["domain_suffix"], false, [])!;
    domain = ConvertUtils.getListStringFromDynamic(map["domain"], false, [])!;
    domainKeyword = ConvertUtils.getListStringFromDynamic(
        map["domain_keyword"], false, [])!;
    domainRegex =
        ConvertUtils.getListStringFromDynamic(map["domain_regex"], false, [])!;
    ipCidr = ConvertUtils.getListStringFromDynamic(map["ip_cidr"], false, [])!;
    port = ConvertUtils.getListIntFromDynamic(map["port"], false, [])!;
    protocol =
        ConvertUtils.getListStringFromDynamic(map["protocol"], false, [])!;
    ruleSet =
        ConvertUtils.getListStringFromDynamic(map["rule_set"], false, [])!;
    ruleSetBuildIn = ConvertUtils.getListStringFromDynamic(
        map["rule_set_build_in"], false, [])!;
    package = ConvertUtils.getListStringFromDynamic(map["package"], false, [])!;
    processName =
        ConvertUtils.getListStringFromDynamic(map["process_name"], false, [])!;
    processPath =
        ConvertUtils.getListStringFromDynamic(map["process_path"], false, [])!;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};

    ret['outbound'] = outbound;
    ret['name'] = name;
    ret['switch'] = enable;
    ret['or'] = or;

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
    if (port.isNotEmpty) {
      ret['port'] = port;
    }
    if (protocol.isNotEmpty) {
      ret['protocol'] = protocol;
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
    if (processName.isNotEmpty) {
      ret['process_name'] = processName;
    }
    if (processPath.isNotEmpty) {
      ret['process_path'] = processPath;
    }
    return ret;
  }
}

class DiversionCustomRules {
  static const String kNone = "";
  static const String kDirect = "direct";
  static const String kBlock = "block";
  static const String kUrltest = "urltest";
  static const String kCurrentSelected = "currentSelected";
  List<DiversionCustomRule> rules = [];

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    var rule = map["rules"] ?? [];
    if (rule is List) {
      for (var r in rule) {
        DiversionCustomRule rs = DiversionCustomRule();
        rs.fromJson(r);
        if (rs.name.isEmpty) {
          continue;
        }
        if (rs.domainSuffix.isEmpty &&
            rs.domain.isEmpty &&
            rs.domainKeyword.isEmpty &&
            rs.domainRegex.isEmpty &&
            rs.ipCidr.isEmpty &&
            rs.port.isEmpty &&
            rs.protocol.isEmpty &&
            rs.ruleSet.isEmpty &&
            rs.ruleSetBuildIn.isEmpty &&
            rs.package.isEmpty &&
            rs.processName.isEmpty &&
            rs.processPath.isEmpty) {
          continue;
        }
        rules.add(rs);
      }
    }
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret['rules'] = rules;
    return ret;
  }

  static Future<DiversionCustomRules?> getFromAssets(String path) async {
    try {
      String content = await rootBundle.loadString(path, cache: false);
      if (content.isNotEmpty) {
        var config = jsonDecode(content);
        DiversionCustomRules preset = DiversionCustomRules();
        preset.fromJson(config);
        return preset;
      }
    } catch (err) {}
    return null;
  }

  static Future<ReturnResult<DiversionCustomRules>> getFromFile(
      String path) async {
    try {
      var file = File(path);
      if (!await file.exists()) {
        return ReturnResult(error: ReturnResultError("$path not exists"));
      }
      String content = await file.readAsString();
      if (content.isEmpty) {
        return ReturnResult(error: ReturnResultError("$path content is empty"));
      }
      var config = jsonDecode(content);
      DiversionCustomRules preset = DiversionCustomRules();
      preset.fromJson(config);
      return ReturnResult(data: preset);
    } catch (err) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<void> importRules(DiversionCustomRules customRules) async {
    if (customRules.rules.isEmpty) {
      return;
    }
    ServerDiversionGroupItem diversionItem =
        ServerManager.getDiversionCustomGroup();

    var use = ServerManager.getUse();
    var sitecodesHashCode = await RulesetCodesUtils.siteCodesHashCode();
    var ipcodesHashCode = await RulesetCodesUtils.ipCodesHashCode();
    var aclcodesHashCode = await RulesetCodesUtils.aclCodesHashCode();
    int index = diversionItem.groups.length;
    for (var rule in customRules.rules) {
      if (!rule.enable) {
        continue;
      }
      String serverName = "";
      switch (rule.outbound) {
        case kDirect:
          serverName = kOutboundTagDirect;
          break;
        case kBlock:
          serverName = kOutboundTagBlock;
          break;
        case kUrltest:
          serverName = kOutboundTagUrltest;
          break;
        case kCurrentSelected:
          serverName = "";
          break;
      }
      for (int i = 0; i < rule.ruleSetBuildIn.length; ++i) {
        List<String> parts = rule.ruleSetBuildIn[i].split(":");
        if (parts.length != 2) {
          continue;
        }
        String value = parts[1].trim();
        switch (parts[0].trim()) {
          case "geosite":
            if (!sitecodesHashCode.contains(value.hashCode)) {
              rule.ruleSetBuildIn.removeAt(i);
              --i;
            }
            break;
          case "geoip":
            if (!ipcodesHashCode.contains(value.hashCode)) {
              rule.ruleSetBuildIn.removeAt(i);
              --i;
            }
            break;
          case "acl":
            if (!aclcodesHashCode.contains(value.hashCode)) {
              rule.ruleSetBuildIn.removeAt(i);
              --i;
            }
            break;
        }
      }
      if (rule.domainSuffix.isEmpty &&
          rule.domain.isEmpty &&
          rule.domainKeyword.isEmpty &&
          rule.domainRegex.isEmpty &&
          rule.ipCidr.isEmpty &&
          rule.port.isEmpty &&
          rule.protocol.isEmpty &&
          rule.ruleSet.isEmpty &&
          rule.ruleSetBuildIn.isEmpty &&
          rule.package.isEmpty &&
          rule.processName.isEmpty &&
          rule.processPath.isEmpty) {
        continue;
      }

      DiversionRulesGroup drg = DiversionRulesGroup();
      drg.index = index++;
      drg.name = rule.name;
      drg.groupid = ServerManager.getCustomGroupId();
      drg.or = rule.or;
      drg.domainSuffix = rule.domainSuffix;
      drg.domain = rule.domain;
      drg.domainKeyword = rule.domainKeyword;
      drg.domainRegex = rule.domainRegex;
      drg.ipCidr = rule.ipCidr;
      drg.port = rule.port;
      drg.protocol = rule.protocol;
      drg.ruleSet = rule.ruleSet;
      drg.ruleSetBuildIn = rule.ruleSetBuildIn;
      drg.package = rule.package;
      drg.processName = rule.processName;
      drg.processPath = rule.processPath;

      bool diversionSetted = false;
      for (int i = 0; i < diversionItem.groups.length; i++) {
        if (diversionItem.groups[i].name == rule.name) {
          drg.index = diversionItem.groups[i].index;
          diversionItem.groups[i] = drg;
          diversionSetted = true;
          break;
        }
      }
      if (!diversionSetted) {
        diversionItem.groups.add(drg);
      }

      DiversionGroupSetting setting = DiversionGroupSetting();
      setting.diversionGroupId = drg.groupid;
      setting.diversionName = drg.name;
      setting.serverGroupId = rule.outbound;
      setting.serverName = serverName;

      bool settingSetted = false;
      for (int i = 0; i < use.diversionGroup.length; i++) {
        if (use.diversionGroup[i].diversionGroupId == drg.groupid &&
            use.diversionGroup[i].diversionName == drg.name) {
          use.diversionGroup[i] = setting;
          settingSetted = true;
          break;
        }
      }
      if (!settingSetted) {
        use.diversionGroup.add(setting);
      }
    }

    ServerManager.saveDiversionGroupConfig();
    ServerManager.saveUse();
    ServerManager.setDirty(true);
  }

  static DiversionCustomRules exportRules() {
    DiversionCustomRules rules = DiversionCustomRules();
    ServerDiversionGroupItem diversionItem =
        ServerManager.getDiversionCustomGroup();
    var use = ServerManager.getUse();
    for (int i = 0; i < diversionItem.groups.length; i++) {
      for (int j = 0; j < use.diversionGroup.length; j++) {
        var drg = diversionItem.groups[i];
        var udrg = use.diversionGroup[j];
        if (udrg.diversionGroupId == drg.groupid &&
            udrg.diversionName == drg.name) {
          DiversionCustomRule rule = DiversionCustomRule();
          rule.name = drg.name;
          rule.or = drg.or;
          rule.domainSuffix = drg.domainSuffix;
          rule.domain = drg.domain;
          rule.domainKeyword = drg.domainKeyword;
          rule.domainRegex = drg.domainRegex;
          rule.ipCidr = drg.ipCidr;
          rule.port = drg.port;
          rule.protocol = drg.protocol;
          rule.ruleSet = drg.ruleSet;
          rule.ruleSetBuildIn = drg.ruleSetBuildIn;
          rule.package = drg.package;
          rule.processName = drg.processName;
          rule.processPath = drg.processPath;
          if (udrg.serverGroupId.isEmpty) {
            rule.outbound = kNone;
          } else if (udrg.serverGroupId ==
                  ServerManager.getCurrentSelectedGroupId() ||
              udrg.serverGroupId == ServerManager.getUrltestGroupId() ||
              udrg.serverGroupId == ServerManager.getBlockGroupId() ||
              udrg.serverGroupId == ServerManager.getDirectGroupId()) {
            if (udrg.serverGroupId == ServerManager.getDirectGroupId()) {
              rule.outbound = kDirect;
            } else if (udrg.serverGroupId == ServerManager.getBlockGroupId()) {
              rule.outbound = kBlock;
            } else if (udrg.serverGroupId ==
                ServerManager.getUrltestGroupId()) {
              rule.outbound = kUrltest;
            } else if (udrg.serverGroupId ==
                ServerManager.getCurrentSelectedGroupId()) {
              rule.outbound = kCurrentSelected;
            } else {
              rule.outbound = kCurrentSelected;
            }
          } else {
            rule.outbound = kCurrentSelected;
          }
          rules.rules.add(rule);
          break;
        }
      }
    }

    return rules;
  }
}

abstract final class DiversionCustomRulesPreset {
  static Future<DiversionCustomRules?> getPreset(String regionCode) async {
    regionCode = regionCode.toLowerCase();
    String fileName = "";
    switch (regionCode) {
      case "cn":
      case "ir":
      case "ru":
        fileName = regionCode;
      default:
        fileName = "default";
        break;
    }

    return DiversionCustomRules.getFromAssets(
        "assets/datas/preset/$fileName.json");
  }
}
