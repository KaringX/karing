// ignore_for_file: unused_catch_stack, empty_catches

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
//import 'package:class_to_string/class_to_string.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/auto_conf_utils.dart';
import 'package:karing/app/utils/backup_and_sync_utils.dart';
import 'package:karing/app/utils/clash_api.dart';
import 'package:karing/app/utils/convert_utils.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/ruleset_codes_utils.dart';
import 'package:karing/app/utils/sentry_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/singbox_dns.dart';
import 'package:karing/app/utils/tag_gen.dart';
import 'package:karing/app/utils/zip_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:path/path.dart' as path;
import 'package:tuple/tuple.dart';
import 'package:uuid/uuid.dart';
import 'package:vpn_service/state.dart';

const int kRemarkMaxLength = 32;

class ServerConfig {
  List<ServerConfigGroupItem> items = [];

  void clear() {
    items = [];
  }

  ServerConfig clone(bool includeDisable) {
    ServerConfig config = ServerConfig();
    for (var i in items) {
      if (!includeDisable) {
        if (!i.enable) {
          continue;
        }
      }

      config.items.add(i.clone());
    }
    return config;
  }

  Map<String, dynamic> toJson() => {
        'items': items,
      };

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    var tempItems = map["items"] ?? [];

    bool hasCustom = false;
    int index = 1;
    for (var item in tempItems) {
      ServerConfigGroupItem server = ServerConfigGroupItem();
      server.fromJson(item);
      server.index = index++;

      items.add(server);
      if (server.groupid == ServerManager.getCustomGroupId()) {
        hasCustom = true;
      }
    }
    if (!hasCustom) {
      ServerConfigGroupItem item = ServerConfigGroupItem();
      item.index = 0;
      item.groupid = ServerManager.getCustomGroupId();
      item.type = SubscriptionLinkType.singbox;
      items.insert(0, item);
    }
  }

  bool removeGroup(String groupid) {
    if (groupid.isEmpty) {
      return false;
    }
    if (groupid == ServerManager.getCustomGroupId()) {
      return false;
    }
    for (var item in items) {
      if (item.groupid == groupid) {
        items.remove(item);
        return true;
      }
    }

    return false;
  }

  bool isEnable(String groupid) {
    if (groupid.isEmpty) {
      return false;
    }
    for (var item in items) {
      if (item.groupid == groupid) {
        return item.enable;
      }
    }

    return false;
  }

  void updateGroupTranffic(String groupid, SubscriptionTraffic? traffic) {
    if (groupid.isEmpty) {
      return;
    }
    if (groupid == ServerManager.getCustomGroupId()) {
      return;
    }
    for (var item in items) {
      if (item.groupid == groupid) {
        item.traffic = traffic;
        return;
      }
    }
  }

  int getServersCount(bool includeDisabled) {
    int count = 0;
    for (var item in items) {
      if (!includeDisabled) {
        if (!item.enable) {
          continue;
        }
      }
      count = count + item.servers.length;
    }
    return count;
  }

  int getCount(bool includeDisabled, bool includeCustom) {
    int count = 0;
    for (var item in items) {
      if (!includeCustom) {
        if (item.groupid == ServerManager.getCustomGroupId()) {
          continue;
        }
      }

      if (!includeDisabled) {
        if (!item.enable) {
          continue;
        }
      }
      count = count + 1;
    }
    return count;
  }

  ProxyConfig? getByTag(String tag) {
    for (var item in items) {
      if (!item.enable) {
        continue;
      }
      ProxyConfig? config = item.getByTag(tag);
      if (config != null) {
        return config;
      }
    }
    return null;
  }
}

class DiversionGroupConfig {
  List<ServerDiversionGroupItem> items = [];
  List<ServerDiversionGroupRuleSetItem> ruleSetItems = [];

  void clear() {
    items = [];
    ruleSetItems = [];
  }

  DiversionGroupConfig clone() {
    DiversionGroupConfig config = DiversionGroupConfig();
    for (var i in items) {
      config.items.add(i.clone());
    }
    return config;
  }

  Map<String, dynamic> toJson() => {
        'items': items,
        'rule_set_items': ruleSetItems,
      };

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    bool hasCustom = false;
    var temp = map["items"] ?? [];
    var tempRuleSetItems = map["rule_set_items"] ?? [];
    for (var i in temp) {
      ServerDiversionGroupItem item = ServerDiversionGroupItem();
      item.fromJson(i, true, ServerManager.getCustomGroupId());
      items.add(item);
      if (item.groupid == ServerManager.getCustomGroupId()) {
        hasCustom = true;
        item.editAble = true;
      }
    }
    if (!hasCustom) {
      ServerDiversionGroupItem item = ServerDiversionGroupItem();
      item.groupid = ServerManager.getCustomGroupId();
      item.editAble = true;
      items.insert(0, item);
    }
    Set<String> exists = {};
    for (var item in tempRuleSetItems) {
      ServerDiversionGroupRuleSetItem ruleset =
          ServerDiversionGroupRuleSetItem();
      ruleset.fromJson(item);
      String key = ruleset.type + ruleset.tag + ruleset.format + ruleset.url!;
      if (exists.contains(key)) {
        continue;
      }
      exists.add(key);

      ruleSetItems.add(ruleset);
    }
  }

  bool removeGroup(String groupid) {
    if (groupid.isEmpty) {
      return false;
    }
    for (var item in items) {
      if (item.groupid == groupid) {
        items.remove(item);
        return true;
      }
    }
    return false;
  }

  int getGroupsCount() {
    int count = 0;
    for (var item in items) {
      count = count + item.groups.length;
    }
    return count;
  }
}

class DiversionGroupSetting {
  int groupIndex = 0;
  int serverIndex = 0;
  String diversionGroupId = "";
  String diversionName = "";
  String serverGroupId = "";
  String serverName = "";

  Map<String, dynamic> toJson() => {
        'diversion_groupid': diversionGroupId,
        'diversion_name': diversionName,
        'server_groupid': serverGroupId,
        'server_name': serverName,
      };

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    diversionGroupId = map["diversion_groupid"] ?? map["routing_groupid"] ?? "";
    diversionName = map["diversion_name"] ?? map["routing_name"] ?? "";
    serverGroupId = map["server_groupid"] ?? "";
    serverName = map["server_name"] ?? "";
  }
}

class ServerUse {
  List<String> disable = [];
  String selectDefault = "";
  List<ProxyConfig> recent = [];
  List<ProxyConfig> fav = [];
  List<String> geoSite = [];
  List<String> geoIp = [];
  List<String> acl = [];
  List<String> rulesetDirectDownload = [];
  List<DiversionGroupSetting> diversionGroup = [];
  List<String> serverSelectSearchSelect = [];
  List<String> addProfileSelect = [];

  void clear() {
    disable = [];
    selectDefault = "";
    recent = [];
    fav = [];
    geoSite = [];
    geoIp = [];
    acl = [];
    rulesetDirectDownload = [];
    diversionGroup = [];
    serverSelectSearchSelect = [];
    addProfileSelect = [];
  }

  Map<String, dynamic> toJson() => {
        'disable': disable,
        'select_default': selectDefault,
        'recent': recent,
        'fav': fav,
        'geosite': geoSite,
        'geoip': geoIp,
        'acl': acl,
        'ruleset_direct_download': rulesetDirectDownload,
        'diversion_group': diversionGroup,
        'server_select_search_select': serverSelectSearchSelect,
        'add_profile_select': addProfileSelect,
      };

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    disable = ConvertUtils.getListStringFromDynamic(map["disable"], true, [])!;

    selectDefault = map["select_default"] ?? "";
    var r = map["recent"] ?? [];
    for (var i in r) {
      ProxyConfig config = ProxyConfig();
      config.fromJson(i);
      if (config.type == kOutboundTypeSelector) {
        //兼容老数据
        config.type = kOutboundTypeUrltest;
        config.groupid = ServerManager.getUrltestGroupId();
        config.tag = kOutboundTagUrltest;
      }
      recent.add(config);
    }
    var f = map["fav"] ?? [];
    for (var i in f) {
      ProxyConfig config = ProxyConfig();
      config.fromJson(i);
      fav.add(config);
    }
    geoSite = ConvertUtils.getListStringFromDynamic(map["geosite"], true, [])!;
    geoIp = ConvertUtils.getListStringFromDynamic(map["geoip"], true, [])!;
    acl = ConvertUtils.getListStringFromDynamic(map["acl"], true, [])!;
    rulesetDirectDownload = ConvertUtils.getListStringFromDynamic(
        map["ruleset_direct_download"], true, [])!;

    var t = map["diversion_group"] ?? map["routing_group"] ?? [];
    for (var i in t) {
      DiversionGroupSetting config = DiversionGroupSetting();
      config.fromJson(i);
      if (config.serverGroupId == kOutboundTypeSelector) {
        //兼容老数据
        config.serverGroupId = kOutboundTypeUrltest;
        config.serverName = kOutboundTagUrltest;
      }
      diversionGroup.add(config);
    }
    serverSelectSearchSelect = ConvertUtils.getListStringFromDynamic(
        map["server_select_search_select"], true, [])!;
  }

  static String getDisableKey(ProxyConfig proxy) {
    return "${proxy.type};${proxy.server};${proxy.serverport}";
  }
}

class TestOutboundPair {
  String groupid = "";
  bool running = false;
}

class ServerManager {
  static final ServerConfigGroupItem _byCurrentGroup = ServerConfigGroupItem();
  static final ServerConfigGroupItem _urltestrGroup = ServerConfigGroupItem();
  static final ServerConfigGroupItem _directGroup = ServerConfigGroupItem();
  static final ServerConfigGroupItem _blockGroup = ServerConfigGroupItem();

  static final ProxyConfig _bycurrent = ProxyConfig();
  static final ProxyConfig _direct = ProxyConfig();
  static final ProxyConfig _block = ProxyConfig();
  static final ProxyConfig _none = ProxyConfig();
  static final Map<int, void Function(ServerConfigGroupItem)> _onAddConfigs =
      {};
  static final Map<int, Future<void> Function(List<ServerConfigGroupItem>)>
      _onUpdateConfigs = {};
  static final Map<int, void Function(Set<ServerConfigGroupItem>)>
      _onLatencyUpdateConfigs = {};

  static final Map<int, void Function(String, bool, bool)> _onRemoveConfigs =
      {};
  static final Map<int, Future<void> Function(String, bool)> _onEnableConfigs =
      {};
  static final Map<int, void Function(String)> _onRemoteTrafficReloadStart = {};
  static final Map<int, void Function(String)> _onRemoteTrafficReloadEnd = {};
  static final Map<int, Future<void> Function()> _onReloadFromZipConfigs = {};

  static final Map<int, void Function(String, String, bool, bool)>
      _onTestOutboundLatency = {};

  static final Map<int, void Function()> _onLatencyHistoryUpdated = {};

  static final Set<String> _remoteReloading = {};
  static final Set<String> _remoteTrafficReloading = {};

  static final Map<String, TestOutboundPair> _testOutboundServerLatencying = {};
  static final ServerConfig _serverConfig = ServerConfig();
  static final DiversionGroupConfig _diversionGroupConfig =
      DiversionGroupConfig();
  static final ServerUse _use = ServerUse();
  static bool _savingServerConfig = false;
  static bool _savingDiversionGroupConfig = false;
  static bool _savingUse = false;
  static bool _updatingSubscription = false;
  static bool _updateLatencyByHistory = false;
  static bool _dirty = false;

  static Future<void> init() async {
    await loadServerConfig();
    await loadDiversionGroupConfig();
    await loadUse();

    VPNService.onEventStateChanged
        .add((FlutterVpnServiceState state, Map<String, String> params) async {
      if (state == FlutterVpnServiceState.connected) {
        Future.delayed(const Duration(seconds: 3), () async {
          updateSubscription();
        });
      }
    });
    AppLifecycleStateNofity.onStateResumed(null, () {
      Future.delayed(const Duration(seconds: 3), () async {
        updateSubscription();
      });
    });
    Future.delayed(const Duration(seconds: 30), () async {
      updateSubscription();
    });
  }

  static Future<void> uninit() async {}

  static void onEventAddConfig(
      int hashcode, void Function(ServerConfigGroupItem) callback) {
    _onAddConfigs[hashcode] = callback;
  }

  static void onEventUpdateConfig(int hashcode,
      Future<void> Function(List<ServerConfigGroupItem>) callback) {
    _onUpdateConfigs[hashcode] = callback;
  }

  static void onEventLatencyUpdateConfig(
      int hashcode, void Function(Set<ServerConfigGroupItem>) callback) {
    _onLatencyUpdateConfigs[hashcode] = callback;
  }

  static void onEventRemoveConfig(
      int hashcode, void Function(String, bool, bool) callback) {
    _onRemoveConfigs[hashcode] = callback;
  }

  static void onEventEnableConfig(
      int hashcode, Future<void> Function(String, bool) callback) {
    _onEnableConfigs[hashcode] = callback;
  }

  static void onEventRemoteTrafficReload(
      int hashcode, void Function(String) start, void Function(String) end) {
    _onRemoteTrafficReloadStart[hashcode] = start;
    _onRemoteTrafficReloadEnd[hashcode] = end;
  }

  static void onReloadFromZipConfigs(
      int hashcode, Future<void> Function() callback) {
    _onReloadFromZipConfigs[hashcode] = callback;
  }

  static void onEventTestLatency(
      int hashcode, void Function(String, String, bool, bool) callback) {
    _onTestOutboundLatency[hashcode] = callback;
  }

  static void onLatencyHistoryUpdated(int hashcode, void Function() callback) {
    _onLatencyHistoryUpdated[hashcode] = callback;
  }

  static void removeListener(int hashcode) {
    _onAddConfigs.remove(hashcode);
    _onUpdateConfigs.remove(hashcode);
    _onRemoveConfigs.remove(hashcode);
    _onEnableConfigs.remove(hashcode);
    _onRemoteTrafficReloadStart.remove(hashcode);
    _onRemoteTrafficReloadEnd.remove(hashcode);
    _onReloadFromZipConfigs.remove(hashcode);
    _onLatencyUpdateConfigs.remove(hashcode);
    _onTestOutboundLatency.remove(hashcode);
    _onLatencyHistoryUpdated.remove(hashcode);
  }

  static Future<void> updateSubscription() async {
    if (_updatingSubscription) {
      return;
    }
    _updatingSubscription = true;
    Set<String> testOutboundLatencyGroups = {};

    DateTime now = DateTime.now();
    List<ServerConfigGroupItem> items = [];
    try {
      var config = _serverConfig.clone(true);
      for (var item in config.items) {
        if (item.isRemote() && item.enable && item.updateDuration != null) {
          DateTime? updateTime = DateTime.tryParse(item.updateTime);
          if (updateTime == null ||
              now.difference(updateTime).inSeconds >=
                  item.updateDuration!.inSeconds) {
            ReturnResultError? err = await addRemoteConfig(
                item.groupid,
                item.remark,
                item.urlOrPath,
                item.type,
                item.userAgentCompatible,
                item.proxyFilter,
                item.proxyFilterRemove,
                item.keepDiversionRules,
                item.enableDiversionRules,
                item.testLatencyAutoRemove,
                item.proxyStrategy,
                null);

            if (err != null) {
              Log.w(
                  "ServerManager.updateSubscription err ${item.urlOrPath} ${err.message}");
            } else {
              items.add(item);
              if (item.reloadAfterProfileUpdate &&
                  item.testLatencyAfterProfileUpdate) {
                testOutboundLatencyGroups.add(item.groupid);
              }
            }
          }
        }
      }
    } catch (err, _) {
      Log.w("ServerManager.updateSubscription exception ${err.toString()}");
    }

    if (items.isNotEmpty) {
      var list = _onUpdateConfigs.values.toList();
      for (var callback in list) {
        await callback(items);
      }
    }
    _updatingSubscription = false;
    Future.delayed(const Duration(milliseconds: 500), () {
      for (var groupid in testOutboundLatencyGroups) {
        testOutboundLatencyForGroup(groupid);
      }
    });
  }

  static List<String> getRemoteDomains() {
    List<String> domains = [];
    for (var item in _serverConfig.items) {
      if (item.isRemote()) {
        Uri? uri = Uri.tryParse(item.urlOrPath);
        if (uri != null) {
          if (uri.isScheme('http') || uri.isScheme('https')) {
            domains.add(Uri.decodeComponent(uri.host));
          }
        }
      }
      if (item.site.isNotEmpty) {
        Uri? uri = Uri.tryParse(item.site);
        if (uri != null) {
          if (uri.isScheme('http') || uri.isScheme('https')) {
            domains.add(Uri.decodeComponent(uri.host));
          }
        }
      }
    }
    return domains;
  }

  static ServerConfig getConfig() {
    return _serverConfig;
  }

  static DiversionGroupConfig getDiversionGroupConfig() {
    return _diversionGroupConfig;
  }

  static ServerUse getUse() {
    return _use;
  }

  static List<DiversionGroupSetting> diversionGroupSorted() {
    List<DiversionGroupSetting> newGroups = [];
    List<DiversionGroupSetting> geositeGroups = [];
    List<DiversionGroupSetting> geoipGroups = [];
    List<DiversionGroupSetting> aclGroups = [];
    List<DiversionGroupSetting> customGroups = [];
    List<DiversionGroupSetting> finalGroups = [];
    ServerConfigGroupItem? custom = getCustomGroup();

    for (var group in _use.diversionGroup) {
      if (group.serverGroupId == ServerManager.getUrltestGroupId()) {
        bool notEmpty = true;
        for (var ul in custom.urltests) {
          if (ul.remark == group.serverName) {
            notEmpty = ul.tags.isNotEmpty || ul.regexs.isNotEmpty;
            break;
          }
        }
        if (!notEmpty) {
          continue;
        }
      }
      if (group.diversionGroupId == ServerManager.getFinalGroupId()) {
        finalGroups.add(group);
      } else if (group.diversionGroupId == ServerManager.getGeoSiteGroupId()) {
        geositeGroups.add(group);
      } else if (group.diversionGroupId == ServerManager.getGeoIpGroupId()) {
        geoipGroups.add(group);
      } else if (group.diversionGroupId == ServerManager.getAclGroupId()) {
        aclGroups.add(group);
      } else if (group.diversionGroupId == ServerManager.getCustomGroupId()) {
        customGroups.add(group);
      } else {
        newGroups.add(group);
      }
    }

    ServerDiversionGroupItem? customDiversion = getDiversionCustomGroup();
    for (var group in customDiversion.groups) {
      for (var cg in customGroups) {
        if (cg.diversionName == group.name) {
          cg.groupIndex = group.index;
          cg.serverIndex = group.index;
          break;
        }
      }
    }

    customGroups.sort(sortCompare);

    List<DiversionGroupSetting> newGroups2 = [];
    for (var group in newGroups) {
      var idgroup = getByGroupId(group.diversionGroupId);
      if (idgroup == null) {
        continue;
      }
      if (group.serverGroupId == getUrltestGroupId()) {
        newGroups2.add(group);
      } else {
        var isgroup = getByGroupId(group.serverGroupId);
        if (isgroup == null) {
          continue;
        }
        for (var dgroup in _diversionGroupConfig.items) {
          if (group.diversionGroupId == dgroup.groupid) {
            for (var rule in dgroup.groups) {
              if (group.diversionName == rule.name) {
                group.groupIndex = idgroup.index;
                group.serverIndex = rule.index;
                newGroups2.add(group);
                break;
              }
            }
            break;
          }
        }
      }
    }
    newGroups2.sort(sortCompare);

    List<DiversionGroupSetting> geositeGroups2 = [];
    List<DiversionGroupSetting> geositeGroups3 = [];
    List<DiversionGroupSetting> geositeGroups4 = [];
    for (var name in _use.geoSite) {
      for (var group in geositeGroups) {
        if (group.diversionName == name) {
          geositeGroups2.add(group);
          break;
        }
      }
    }
    for (var name in _use.geoIp) {
      for (var group in geoipGroups) {
        if (group.diversionName == name) {
          geositeGroups3.add(group);
          break;
        }
      }
    }
    for (var name in _use.acl) {
      for (var group in aclGroups) {
        if (group.diversionName == name) {
          geositeGroups4.add(group);
          break;
        }
      }
    }
    List<DiversionGroupSetting> groups = [];

    groups.addAll(customGroups);
    groups.addAll(newGroups2);
    groups.addAll(geositeGroups2);
    groups.addAll(geositeGroups3);
    groups.addAll(geositeGroups4);
    groups.addAll(finalGroups);
    return groups;
  }

  static int sortCompare(DiversionGroupSetting a, DiversionGroupSetting b) {
    if (a.groupIndex != b.groupIndex) {
      return (a.groupIndex - b.groupIndex);
    }
    return (a.serverIndex - b.serverIndex);
  }

  static List<Tuple2<DiversionRulesGroup, ProxyConfig>> getDiversionGroups() {
    List<Tuple2<DiversionRulesGroup, ProxyConfig>> diversionGroups = [];
    ServerConfigGroupItem? custom = getCustomGroup();
    //ServerDiversionGroupItem? customDiversion = getDiversionCustomGroup();
    Set<String> exists = {};
    var diversionGroup = diversionGroupSorted();
    for (var use in diversionGroup) {
      if (use.diversionGroupId != getFinalGroupId() &&
          use.diversionGroupId != getUrltestGroupId() &&
          use.diversionGroupId != getGeoSiteGroupId() &&
          use.diversionGroupId != getGeoIpGroupId() &&
          use.diversionGroupId != getAclGroupId()) {
        ServerConfigGroupItem? srg = getByGroupId(use.diversionGroupId);
        if (srg == null || !srg.enable) {
          continue;
        }
      }
      String key = use.diversionGroupId + use.diversionName;
      if (exists.contains(key)) {
        continue;
      }
      exists.add(key);

      ServerDiversionGroupItem? src =
          getDiversionGroupByGroupId(use.diversionGroupId);
      if (src == null) {
        continue;
      }

      DiversionRulesGroup? rg;
      if (use.diversionGroupId == getFinalGroupId()) {
        rg = DiversionRulesGroup();
        rg.groupid = use.diversionGroupId;
        rg.name = use.diversionName;
      } else if (use.diversionGroupId == getGeoSiteGroupId()) {
        if (!getUse().geoSite.contains(use.diversionName)) {
          continue;
        }
        rg = DiversionRulesGroup();
        rg.groupid = use.diversionGroupId;
        rg.name = use.diversionName;
      } else if (use.diversionGroupId == getGeoIpGroupId()) {
        if (!getUse().geoIp.contains(use.diversionName)) {
          continue;
        }
        rg = DiversionRulesGroup();
        rg.groupid = use.diversionGroupId;
        rg.name = use.diversionName;
      } else if (use.diversionGroupId == getAclGroupId()) {
        if (!getUse().acl.contains(use.diversionName)) {
          continue;
        }
        rg = DiversionRulesGroup();
        rg.groupid = use.diversionGroupId;
        rg.name = use.diversionName;
      } else {
        rg = src.getByName(use.diversionName);
        if (rg == null) {
          continue;
        }
      }
      if (use.serverGroupId == getUrltestGroupId()) {
        if (kOutboundTagUrltest == use.serverName) {
          ProxyConfig pc = getUrltest();
          diversionGroups.add(Tuple2(rg, pc));
        } else {
          for (var urltest in custom.urltests) {
            if (urltest.remark == use.serverName) {
              ProxyConfig pc = getUrltest(tag: urltest.remark);
              diversionGroups.add(Tuple2(rg, pc));
              break;
            }
          }
        }
      } else {
        ServerConfigGroupItem? scg = getByGroupId(use.serverGroupId);
        if (scg == null) {
          continue;
        }
        ProxyConfig? pc = scg.getByTag(use.serverName);
        if (pc == null) {
          continue;
        }
        diversionGroups.add(Tuple2(rg, pc));
      }
    }
    return diversionGroups;
  }

  static Future<void> loadServerConfig() async {
    String filePath = await PathUtils.subscribeFilePath();
    bool exists = await File(filePath).exists();
    if (!exists) {
      ServerConfigGroupItem item = ServerConfigGroupItem();
      item.index = 0;
      item.groupid = ServerManager.getCustomGroupId();
      item.type = SubscriptionLinkType.singbox;
      _serverConfig.items.insert(0, item);
      return;
    }
    String content = "";
    try {
      content = await File(filePath).readAsString();
      if (content.isNotEmpty) {
        var config = jsonDecode(content);
        _serverConfig.fromJson(config);
        int index = 0;
        for (var item in _serverConfig.items) {
          item.index = index++;
        }
      }
    } catch (err, stacktrace) {
      SentryUtils.captureException(
          'ServerManager.loadServerConfig.exception', [], err, stacktrace,
          attachments: {filePath: content});
      Log.w(
          "ServerManager.loadServerConfig exception $filePath ${err.toString()}");
    }
  }

  static Future<void> saveServerConfig() async {
    if (_savingServerConfig) {
      return;
    }
    _savingServerConfig = true;
    String filePath = await PathUtils.subscribeFilePath();
    //String content = jsonEncode(_serverConfig.toJson());
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(_serverConfig.toJson());

    try {
      await File(filePath).writeAsString(content, flush: true);
      if (!await FileUtils.validJsonFile(filePath)) {
        await File(filePath).writeAsString(content, flush: true);
      }
    } catch (err) {
      ErrorReporterUtils.tryReportNoSpace(err.toString());
    }

    _savingServerConfig = false;
  }

  static Future<void> loadDiversionGroupConfig() async {
    String filePath = await PathUtils.diversionGroupFilePath();
    bool exists = await File(filePath).exists();
    if (!exists) {
      ServerDiversionGroupItem item = ServerDiversionGroupItem();
      item.groupid = ServerManager.getCustomGroupId();
      item.editAble = true;
      _diversionGroupConfig.items.insert(0, item);
      return;
    }
    String content = "";
    try {
      content = await File(filePath).readAsString();
      if (content.isNotEmpty) {
        var config = jsonDecode(content);
        _diversionGroupConfig.fromJson(config);
      }
    } catch (err, stacktrace) {
      SentryUtils.captureException(
          'ServerManager.loadDiversionGroupConfig.exception',
          [],
          err,
          stacktrace,
          attachments: {filePath: content});
      Log.w(
          "ServerManager.loadDiversionGroupConfig exception $filePath ${err.toString()}");
    }
    for (var i = 0; i < _diversionGroupConfig.items.length; ++i) {
      bool find = false;
      for (var item in _serverConfig.items) {
        if (item.groupid == _diversionGroupConfig.items[i].groupid) {
          find = true;
        }
      }
      if (!find) {
        _diversionGroupConfig.items.removeAt(i);
        --i;
      }
    }
  }

  static Future<void> saveDiversionGroupConfig() async {
    if (_savingDiversionGroupConfig) {
      return;
    }
    _savingDiversionGroupConfig = true;
    String filePath = await PathUtils.diversionGroupFilePath();
    //String content = jsonEncode(_diversionGroupConfig.toJson());
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(_diversionGroupConfig.toJson());

    try {
      await File(filePath).writeAsString(content, flush: true);
      if (!await FileUtils.validJsonFile(filePath)) {
        await File(filePath).writeAsString(content, flush: true);
      }
    } catch (err) {
      ErrorReporterUtils.tryReportNoSpace(err.toString());
    }

    _savingDiversionGroupConfig = false;
  }

  static Future<void> reorderGroup(List<String> groupid) async {
    int index = 1; //跳过自定义组
    for (var gid in groupid) {
      for (var item in _serverConfig.items) {
        if (gid == item.groupid) {
          item.index = index++;
          break;
        }
      }
    }
    _serverConfig.items.sort((a, b) {
      return (a.index - b.index);
    });

    await saveServerConfig();
    await reorderDiversionGroup(groupid);
  }

  static Future<void> reorderDiversionGroup(List<String> groupid) async {
    List<ServerDiversionGroupItem> items = [];
    for (var gid in groupid) {
      for (var item in _diversionGroupConfig.items) {
        if (gid == item.groupid) {
          items.add(item);
          break;
        }
      }
    }
    if (items.length == _diversionGroupConfig.items.length) {
      _diversionGroupConfig.items = items;
      await saveDiversionGroupConfig();
    }
  }

  static Future<bool> removeGroup(String groupid, bool save) async {
    List<DiversionGroupSetting> rts = [];
    for (var rt in _use.diversionGroup) {
      if (rt.diversionGroupId != groupid && rt.serverGroupId != groupid) {
        rts.add(rt);
      }
    }
    _use.diversionGroup = rts;
    bool hasDiversionGroup = false;
    if (_diversionGroupConfig.removeGroup(groupid)) {
      hasDiversionGroup = true;
      if (save) {
        await saveDiversionGroupConfig();
      }
    }
    bool enable = _serverConfig.isEnable(groupid);
    if (_serverConfig.removeGroup(groupid)) {
      for (var i = 0; i < _use.fav.length; ++i) {
        if (_use.fav[i].groupid == groupid) {
          _use.fav.removeAt(i);
          --i;
        }
      }
      for (var i = 0; i < _use.recent.length; ++i) {
        if (_use.recent[i].groupid == groupid) {
          _use.recent.removeAt(i);
          --i;
        }
      }
      for (var i = 0; i < _use.diversionGroup.length; ++i) {
        if (_use.diversionGroup[i].diversionGroupId == groupid ||
            _use.diversionGroup[i].serverGroupId == groupid) {
          _use.diversionGroup.removeAt(i);
          --i;
        }
      }
      if (_serverConfig.items.isEmpty) {
        _use.fav = [];
        _use.recent = [];
        _use.diversionGroup = [];
      }
      if (save) {
        await saveServerConfig();
        await saveUse();
      }
      Future.delayed(const Duration(milliseconds: 10), () {
        final list = _onRemoveConfigs.values.toList();
        for (var callback in list) {
          callback(groupid, enable, hasDiversionGroup);
        }
      });

      return true;
    }
    return false;
  }

  static Future<bool> mergeGroup(List<String> sources, String target) async {
    bool hasEnable = false;
    List<ServerConfigGroupItem> sourceGroups = [];
    ServerConfigGroupItem? targetGroup = getByGroupId(target);
    if (targetGroup == null) {
      return hasEnable;
    }
    if (targetGroup.enable) {
      hasEnable = true;
    }
    for (var groupid in sources) {
      ServerConfigGroupItem? group = getByGroupId(groupid);
      if (group == null || group.isRemote()) {
        continue;
      }
      if (group.groupid == target) {
        continue;
      }
      sourceGroups.add(group);
    }

    Map<String, int> tagSets = {};
    for (var server in targetGroup.servers) {
      tagSets[server.tag] = 1;
    }
    var tagGen = TagGen(tags: tagSets);
    for (var group in sourceGroups) {
      if (group.enable) {
        hasEnable = true;
      }
      for (var server in group.servers) {
        server.tag = tagGen.gen(server.tag);
        server.groupid = targetGroup.groupid;
        server.index = targetGroup.servers.length;
        targetGroup.servers.add(server);
      }
    }
    for (var group in sourceGroups) {
      removeGroup(group.groupid, false);
    }
    for (int i = 0; i < _use.fav.length; ++i) {
      if (sources.contains(_use.fav[i].groupid)) {
        _use.fav[i].groupid = target;
      }
    }
    await saveServerConfig();
    await saveUse();
    await saveDiversionGroupConfig();

    return hasEnable;
  }

  static Future<ReturnResult<int>> testDNSConnectLatency(
      List<String> dnsUrl, String detour, String? testDomain) async {
    bool started = await VPNService.getStarted();
    if (!started) {
      return ReturnResult(error: ReturnResultError("service is not running"));
    }
    var settingConfig = SettingManager.getConfig();
    String regionCode = settingConfig.regionCode.toLowerCase();
    bool tunMode = await VPNService.getTunMode();
    List<String> resolver =
        settingConfig.dns.getResolverDns(regionCode, tunMode);

    Set<String> allUrls = {};
    allUrls.addAll(resolver);
    allUrls.addAll(dnsUrl);
    String tag = "dns_latency_test_tag";
    String tagResolver = "dns_latency_test_resolver_tag";
    final servers = SingboxDNSTryParseList(allUrls.toList(), tagResolver, null);
    if (servers.error != null) {
      return ReturnResult(error: servers.error);
    }

    DNSQueryRequest req = DNSQueryRequest();
    req.servers = servers.data!;
    if (detour != kOutboundTagDirect) {
      final serversDetour = SingboxDNSTryParseList(dnsUrl, tagResolver, detour);
      if (serversDetour.error != null) {
        return ReturnResult(error: serversDetour.error);
      }
      req.servers.addAll(serversDetour.data!);
      List<String> detourTags = [];
      for (var server in serversDetour.data!) {
        detourTags.add(server.tag);
      }
      req.servers.add(SingboxDNSServerBatchOptions(tag, servers: detourTags));
    } else {
      req.servers.add(SingboxDNSServerBatchOptions(tag, servers: dnsUrl));
    }

    req.servers
        .add(SingboxDNSServerBatchOptions(tagResolver, servers: resolver));

    req.tag = tag;
    req.domain = testDomain ?? settingConfig.dns.testDomain;
    req.strategy = settingConfig.ipStrategy.name;

    ReturnResult<String> data = await ClashApi.dnsQuery(
        SettingManager.getConfig().proxy.controlPort, req);
    started = await VPNService.getStarted();
    if (!started) {
      return ReturnResult(error: ReturnResultError("service stoped"));
    }
    if (data.error != null) {
      return ReturnResult(error: ReturnResultError(data.error!.message));
    }
    try {
      var config = jsonDecode(data.data!);
      DNSQueryResponse response = DNSQueryResponse();
      response.fromJson(config);
      if (response.err == null) {
        return ReturnResult(data: response.latency);
      } else {
        return ReturnResult(error: ReturnResultError(response.err!));
      }
    } catch (err, stacktrace) {
      return ReturnResult(error: ReturnResultError(data.data!));
    }
  }

  static Future<ReturnResultError?> testOutboundLatencyForGroup(
      String groupid) async {
    bool started = await VPNService.getStarted();
    if (!started) {
      return ReturnResultError("service is not running");
    }

    ServerConfigGroupItem? item = getByGroupId(groupid);
    if (item == null) {
      return ReturnResultError("invalid group");
    }
    if (!item.enable) {
      return ReturnResultError("disable");
    }
    if (item.servers.isEmpty) {
      return ReturnResultError("no server to test");
    }
    if (item.testLatency.isNotEmpty) {
      return ReturnResultError("already testing");
    }
    /*Set<String> detours = {};
    for (var server in item.servers) {
      String? detour = server.raw["detour"];
      if (detour != null && detour.isNotEmpty) {
        detours.add(detour);
      }
    }*/
    for (var server in item.servers) {
      if (item.testLatency.contains(server.tag)) {
        continue;
      }
      //if (detours.contains(server.tag)) {
      //  continue;
      //}
      item.testLatency.add(server.tag);
    }
    _onTestOutboundLatency.forEach((key, valueCallback) {
      valueCallback("", "", true, false);
    });
    Future.delayed(const Duration(milliseconds: 50), () {
      schedulerTestLatency();
    });

    return null;
  }

  static Future<ReturnResultError?> testOutboundLatencyForServer(
      String tag, String groupid) async {
    bool started = await VPNService.getStarted();
    if (!started) {
      return ReturnResultError("service is not running");
    }

    ServerConfigGroupItem? item = getByGroupId(groupid);
    if (item == null) {
      return ReturnResultError("invalid group");
    }
    if (!item.enable) {
      return ReturnResultError("group disabled");
    }
    if (item.servers.isEmpty) {
      return ReturnResultError("no server to test");
    }
    if (item.testLatencyIndepends.contains(tag)) {
      return ReturnResultError("already testing");
    }
    for (var server in item.servers) {
      if (server.tag != tag) {
        continue;
      }

      item.testLatencyIndepends.add(server.tag);
    }
    _onTestOutboundLatency.forEach((key, valueCallback) {
      valueCallback("", "", true, false);
    });
    Future.delayed(const Duration(milliseconds: 50), () {
      schedulerTestLatency();
    });

    return null;
  }

  static Future<void> schedulerTestLatency() async {
    bool started = await VPNService.getStarted();
    if (!started) {
      _testOutboundServerLatencying.clear();
      for (var item in _serverConfig.items) {
        item.testLatency.clear();
        item.testLatencyIndepends.clear();
      }
      return;
    }
    int kMaxTestLatency = PlatformUtils.isPC() ? 20 : 10;
    if (_testOutboundServerLatencying.length < kMaxTestLatency) {
      for (var item in _serverConfig.items) {
        if (!item.enable) {
          item.testLatency.clear();
          item.testLatencyIndepends.clear();
          continue;
        }
        if (item.testLatency.isEmpty && item.testLatencyIndepends.isEmpty) {
          continue;
        }
        for (int i = 0; i < item.testLatency.length; ++i) {
          TestOutboundPair pair = TestOutboundPair();
          pair.groupid = item.groupid;
          pair.running = false;
          _testOutboundServerLatencying[item.testLatency[i]] = pair;
          item.testLatency.removeAt(i);
          --i;
          if (_testOutboundServerLatencying.length >= kMaxTestLatency) {
            break;
          }
        }
        for (int i = 0; i < item.testLatencyIndepends.length; ++i) {
          TestOutboundPair pair = TestOutboundPair();
          pair.groupid = item.groupid;
          pair.running = false;
          _testOutboundServerLatencying[item.testLatencyIndepends[i]] = pair;
          item.testLatencyIndepends.removeAt(i);
          --i;
          if (_testOutboundServerLatencying.length >= kMaxTestLatency) {
            break;
          }
        }

        if (_testOutboundServerLatencying.length >= kMaxTestLatency) {
          break;
        }
      }
    }
    if (_testOutboundServerLatencying.isEmpty) {
      Set<ServerConfigGroupItem> groups = {};

      for (var item in _serverConfig.items) {
        if (item.testLatencyAutoRemove) {
          bool change = item.removeLatencyError();
          if (change) {
            groups.add(item);
          }
        }
      }
      if (groups.isNotEmpty) {
        Future.delayed(const Duration(milliseconds: 10), () {
          var list = _onLatencyUpdateConfigs.values.toList();
          for (var callback in list) {
            callback(groups);
          }
        });
      }

      _onTestOutboundLatency.forEach((key, valueCallback) {
        valueCallback("", "", false, true);
      });
      saveServerConfig();
    }
    var testOutboundServerLatencying = {};
    testOutboundServerLatencying.addAll(_testOutboundServerLatencying);

    testOutboundServerLatencying.forEach((tag, value) {
      if (value.running) {
        return;
      }
      value.running = true;
      _testOutboundLatencyForServer(tag, value.groupid);
    });
  }

  static bool hasTestOutboundServer() {
    return _testOutboundServerLatencying.isNotEmpty;
  }

  static bool isTestOutboundServerLatencying(String tag) {
    return _testOutboundServerLatencying.containsKey(tag);
  }

  static int getTestOutboundServerLatencyTestingCount(String groupid) {
    int count = 0;
    for (var value in _testOutboundServerLatencying.values) {
      if (value.groupid == groupid) {
        count++;
      }
    }
    return count;
  }

  static Future<ReturnResultError?> _testOutboundLatencyForServer(
      String tag, String groupid) async {
    ServerConfigGroupItem? item = getByGroupId(groupid);
    if (item == null) {
      _testOutboundServerLatencying.remove(tag);
      _onTestOutboundLatency.forEach((key, valueCallback) {
        valueCallback(groupid, tag, false, false);
      });
      schedulerTestLatency();
      return ReturnResultError("invalid group");
    }
    ProxyConfig? config = item.getByTag(tag);
    if (config == null) {
      _testOutboundServerLatencying.remove(tag);
      _onTestOutboundLatency.forEach((key, valueCallback) {
        valueCallback(groupid, tag, false, false);
      });
      schedulerTestLatency();
      return ReturnResultError("invalid tag");
    }

    String disableKey = ServerUse.getDisableKey(config);
    if (_use.disable.contains(disableKey)) {
      _testOutboundServerLatencying.remove(tag);
      _onTestOutboundLatency.forEach((key, valueCallback) {
        valueCallback(groupid, tag, false, false);
      });
      schedulerTestLatency();
      return ReturnResultError("disabled");
    }
    var settings = SettingManager.getConfig();
    late ReturnResult<String> result;
    int tryTimes = item.testLatencyAutoRemove ? 3 : 1;
    for (int times = 0; times < tryTimes; ++times) {
      result = await ClashApi.getDelay(
          settings.proxy.controlPort, tag, settings.urlTestTimeout,
          url: settings.urlTest);
      if (result.error == null) {
        if (settings.latencyCheckResoveIP) {
          ReturnResult<HttpRequestResponse> httpresult =
              await ClashApi.getHttpRequestByProxy(settings.proxy.controlPort,
                  tag, "https://checkip.amazonaws.com");
          if (httpresult.error == null) {
            config.outletip = httpresult.data!.body.trim();
          }
        }

        break;
      }
    }

    if (result.error != null) {
      updateByDelayResult({"err": result.error!.message}, config);
      _testOutboundServerLatencying.remove(tag);
      _onTestOutboundLatency.forEach((key, valueCallback) {
        valueCallback(groupid, tag, false, false);
      });
      schedulerTestLatency();
      Log.w(
          "_testOutboundLatencyForServer error $groupid $tag ${config.server} ${result.error!.message}");
      return ReturnResultError(result.error!.message);
    }
    try {
      updateByDelay(result.data!, config);
    } catch (err) {
      Log.w(
          "_testOutboundLatencyForServer exception $groupid $tag ${config.server} ${err.toString()} ");
    }
    _testOutboundServerLatencying.remove(tag);
    _onTestOutboundLatency.forEach((key, valueCallback) {
      valueCallback(groupid, tag, false, false);
    });
    schedulerTestLatency();
    return null;
  }

  static void updateByDelay(String delay, ProxyConfig config) {
    config.latency = delay;
    if (config.raw != null) {
      config.raw["groupid"] = config.groupid;
      config.raw["latency"] = config.latency;
      config.raw["attach"] = config.attach;
      config.raw["outlet_ip"] = config.outletip;
      config.raw["outlet_region"] = config.outletregion;
    }
  }

  static void updateByDelayResult(dynamic value, ProxyConfig config) {
    if ((value['delay'] != null) && (value['delay'] != 0)) {
      config.latency = value['delay'].toString();
    } else {
      config.latency = value['err'] ?? "";
      if (config.latency.contains("exceeded") ||
          config.latency.contains("timeout")) {
        config.latency = t.meta.connectTimeout;
      }

      config.latency.replaceAll("https://checkip.amazonaws.com", "").trim();
      config.latency.replaceAll(SettingManager.getConfig().urlTest, "").trim();
    }

    if (config.raw != null) {
      config.raw["groupid"] = config.groupid;
      config.raw["latency"] = config.latency;
      config.raw["attach"] = config.attach;
      config.raw["outlet_ip"] = config.outletip;
      config.raw["outlet_region"] = config.outletregion;
    }
  }

  static bool hasGroupByRemark(String remark) {
    for (var item in _serverConfig.items) {
      if (item.remark == remark) {
        return true;
      }
    }

    return false;
  }

  static bool hasGroupByUrlOrPath(String urlOrPath) {
    if (urlOrPath.isNotEmpty) {
      for (var item in _serverConfig.items) {
        if (item.urlOrPath.isNotEmpty && item.urlOrPath == urlOrPath) {
          return true;
        }
      }
    }

    return false;
  }

  static ServerConfigGroupItem? getGroupByUrlOrPath(String urlOrPath) {
    if (urlOrPath.isNotEmpty) {
      for (var item in _serverConfig.items) {
        if (item.urlOrPath.isNotEmpty && item.urlOrPath == urlOrPath) {
          return item;
        }
      }
    }

    return null;
  }

  static Future<ReturnResult<ServerConfigGroupItem>> loadFrom(
    SubscriptionLinkType type,
    String groupid,
    String remark,
    String urlOrPath,
    bool local,
    String userAgentCompatible,
    ProxyFilter filter,
    List<String> proxyFilterRemove,
    bool keepDiversionRules,
    bool enableDiversionRules,
    bool testLatencyAutoRemove,
    ProxyStrategy proxyStrategy,
    Duration? duration, {
    String? ispId,
    String? ispUser,
  }) async {
    ServerConfigGroupItem item = ServerConfigGroupItem();
    ServerDiversionGroupItem diversionGroupItem = ServerDiversionGroupItem();
    item.index = getNewMaxIndex();
    item.groupid = groupid.isEmpty ? const Uuid().v4() : groupid;
    item.remark = remark;
    item.type = type;
    item.updateTime = DateTime.now().toString();
    item.proxyFilter = filter;
    item.proxyFilterRemove = proxyFilterRemove;
    item.userAgentCompatible = userAgentCompatible;
    item.keepDiversionRules = keepDiversionRules;
    item.enableDiversionRules = enableDiversionRules;
    item.testLatencyAutoRemove = testLatencyAutoRemove;
    item.proxyStrategy = proxyStrategy;
    if (ispId != null && ispId.isNotEmpty) {
      item.isp = SubscriptionISP();
      item.isp!.user = ispUser ?? "";
      item.isp!.id = ispId;
    }
    if (duration != null) {
      item.updateDuration = duration;
    }

    diversionGroupItem.groupid = item.groupid;
    ReturnResultError? error = await AutoConfUtils.tryConvert(
        urlOrPath,
        local,
        groupid.isNotEmpty,
        item,
        _diversionGroupConfig.ruleSetItems,
        keepDiversionRules ? diversionGroupItem : null);
    if (error != null) {
      if (groupid.isNotEmpty) {
        //更新出错
        ServerConfigGroupItem? exist = getByGroupId(groupid);
        if (exist != null) {
          exist.updateTime = item.updateTime;
        }
      }

      return ReturnResult(error: error);
    }
    if (item.servers.isEmpty) {
      return ReturnResult(
          error: ReturnResultError(t.meta.profileAddNoServerAvaliable));
    }
    diversionGroupItem.urlOrPath = item.urlOrPath;
    diversionGroupItem.remark = item.remark;

    //将老的延时已ip信息复制到新的
    bool replaceServerConfig = false;
    Map<String, ProxyConfig> latencys = {};
    for (var exist in _serverConfig.items) {
      if (exist.urlOrPath == urlOrPath || exist.groupid == item.groupid) {
        replaceServerConfig = true;
        for (var server in exist.servers) {
          latencys[server.tag] = server;
        }
        for (var server in item.servers) {
          ProxyConfig? value = latencys[server.tag];
          if (value != null) {
            server.latency = value.latency;
          }
        }
        item.enable = exist.enable;

        exist.groupid = item.groupid;
        exist.type = item.type;
        exist.site = item.site;
        exist.remark = item.remark;
        exist.urlOrPath = item.urlOrPath;
        exist.userAgentCompatible = item.userAgentCompatible;
        exist.keepDiversionRules = item.keepDiversionRules;
        exist.enableDiversionRules = item.enableDiversionRules;
        exist.proxyStrategy = item.proxyStrategy;
        exist.updateTime = item.updateTime;
        exist.isp = item.isp;
        if (duration != null) {
          exist.updateDuration = duration;
        }
        exist.traffic = item.traffic;
        exist.servers = item.servers;
        break;
      }
    }
    if (!replaceServerConfig) {
      _serverConfig.items.add(item);
    }
    if (keepDiversionRules) {
      for (var exist in diversionGroupItem.groups) {
        DiversionGroupSetting diversionSetting = DiversionGroupSetting();
        diversionSetting.diversionGroupId = exist.groupid;
        diversionSetting.diversionName = exist.name;

        if (exist.proxies.isEmpty) {
          diversionSetting.serverGroupId = getByCurrentSelected().groupid;
          diversionSetting.serverName = getByCurrentSelected().tag;
        } else {
          if (exist.proxies[0] == kProxyDirect) {
            diversionSetting.serverGroupId = getDirect().groupid;
            diversionSetting.serverName = getDirect().tag;
          } else if (exist.proxies[0] == kProxyBlock) {
            diversionSetting.serverGroupId = getBlock().groupid;
            diversionSetting.serverName = getBlock().tag;
          } else {
            diversionSetting.serverGroupId = getByCurrentSelected().groupid;
            diversionSetting.serverName = getByCurrentSelected().tag;
          }
        }
        bool hasDiversionGroup = false;
        for (var uexit in _use.diversionGroup) {
          if ((uexit.diversionGroupId == diversionSetting.diversionGroupId) &&
              (uexit.diversionName == diversionSetting.diversionName)) {
            hasDiversionGroup = true;
            break;
          }
        }
        if (!hasDiversionGroup) {
          _use.diversionGroup.add(diversionSetting);
        }
      }
    }
    if (keepDiversionRules) {
      bool replaceDiversionGroupConfig = false;
      for (var exist in _diversionGroupConfig.items) {
        if (exist.urlOrPath == urlOrPath ||
            exist.groupid == diversionGroupItem.groupid) {
          replaceDiversionGroupConfig = true;
          exist.groups = diversionGroupItem.groups;
          break;
        }
      }
      if (!replaceDiversionGroupConfig) {
        _diversionGroupConfig.items.add(diversionGroupItem);
      }
    } else {
      for (int i = 0; i < _diversionGroupConfig.items.length; ++i) {
        if (_diversionGroupConfig.items[i].urlOrPath == urlOrPath ||
            _diversionGroupConfig.items[i].groupid ==
                diversionGroupItem.groupid) {
          _diversionGroupConfig.items.removeAt(i);
          break;
        }
      }
    }

    await saveServerConfig();
    await saveDiversionGroupConfig();
    await saveUse();

    Future.delayed(const Duration(milliseconds: 10), () {
      if (groupid.isEmpty) {
        var list = _onAddConfigs.values.toList();
        for (var callback in list) {
          callback(item);
        }
      }
    });

    return ReturnResult(data: item);
  }

  static bool addLocalCustomConfig(String remark) {
    if (ServerManager.hasGroupByRemark(remark)) {
      return false;
    }
    ServerConfigGroupItem item = ServerConfigGroupItem();
    item.index = getNewMaxIndex();
    item.groupid = const Uuid().v4();
    item.remark = remark;
    item.type = SubscriptionLinkType.singbox;
    item.keepDiversionRules = false;
    item.enableDiversionRules = false;
    item.enable = true;
    item.editAble = true;

    _serverConfig.items.add(item);
    return true;
  }

  static Future<ReturnResultError?> addLocalConfig(
      String remark,
      String filePath,
      SubscriptionLinkType type,
      ProxyFilter filter,
      bool keepDiversionRules,
      bool testLatencyAutoRemove) async {
    if (filePath.isEmpty) {
      return ReturnResultError(t.meta.filePathCannotEmpty);
    }
    bool exists = await File(filePath).exists();
    if (!exists) {
      return ReturnResultError(t.meta.fileNotExist(p: filePath));
    }

    ReturnResult<ServerConfigGroupItem> result = await loadFrom(
        type,
        "",
        remark,
        filePath,
        true,
        "",
        filter,
        [],
        keepDiversionRules,
        false,
        testLatencyAutoRemove,
        ProxyStrategy.preferProxy,
        null);

    return result.error;
  }

  static Future<ReturnResultError?> addRemoteConfig(
      String groupid,
      String remark,
      String url,
      SubscriptionLinkType type,
      String userAgentCompatible,
      ProxyFilter filter,
      List<String> proxyFilterRemove,
      bool keepDiversionRules,
      bool enableDiversionRules,
      bool testLatencyAutoRemove,
      ProxyStrategy proxyStrategy,
      Duration? duration,
      {String? ispId,
      String? ispUser}) async {
    ReturnResult<ServerConfigGroupItem> result = await loadFrom(
      type,
      groupid,
      remark,
      url,
      false,
      userAgentCompatible,
      filter,
      proxyFilterRemove,
      keepDiversionRules,
      enableDiversionRules,
      testLatencyAutoRemove,
      proxyStrategy,
      duration,
      ispId: ispId,
      ispUser: ispUser,
    );

    return result.error;
  }

  static Future<void> loadUse() async {
    String filePath = await PathUtils.subscribeUseFilePath();
    var file = File(filePath);
    bool exists = await file.exists();
    if (!exists) {
      return;
    }
    var geositeCodes = await RulesetCodesUtils.siteCodes();
    var geoipCodes = await RulesetCodesUtils.ipCodes();
    bool hasFinal = false;
    ServerConfigGroupItem? custom = getCustomGroup();
    ServerDiversionGroupItem? customDiversion = getDiversionCustomGroup();
    String content = "";
    try {
      content = await file.readAsString();
      if (content.isNotEmpty) {
        var config = jsonDecode(content);
        _use.fromJson(config);
      }
      for (var item in _use.recent) {
        if (item.groupid.isEmpty) {
          item.groupid = getUrltest().groupid;
          item.tag = getUrltest().tag;
        }
      }
      if (geositeCodes.isNotEmpty) {
        for (int i = 0; i < _use.geoSite.length; ++i) {
          if (!geositeCodes.contains(_use.geoSite[i])) {
            _use.geoSite.removeAt(i);
            --i;
          }
        }
      }
      if (geoipCodes.isNotEmpty) {
        for (int i = 0; i < _use.geoIp.length; ++i) {
          if (!geositeCodes.contains(_use.geoIp[i])) {
            _use.geoIp.removeAt(i);
            --i;
          }
        }
      }

      List<DiversionGroupSetting> diversionGroup = [];
      Set<String> exists = {};
      for (var item in _use.diversionGroup) {
        String key = item.diversionGroupId +
            item.diversionName +
            item.serverGroupId +
            item.serverName;
        if (exists.contains(key)) {
          continue;
        }
        exists.add(key);
        if (item.diversionGroupId == ServerManager.getFinalGroupId()) {
          hasFinal = true;
        } else if (item.diversionGroupId == ServerManager.getGeoSiteGroupId()) {
          if (!_use.geoSite.contains(item.diversionName)) {
            continue;
          }
        } else if (item.diversionGroupId == ServerManager.getGeoIpGroupId()) {
          if (!_use.geoIp.contains(item.diversionName)) {
            continue;
          }
        } else if (item.diversionGroupId == ServerManager.getAclGroupId()) {
          if (!_use.acl.contains(item.diversionName)) {
            continue;
          }
        } else if (item.diversionGroupId == ServerManager.getCustomGroupId()) {
          bool find = false;
          for (var group in customDiversion.groups) {
            if (group.name == item.diversionName) {
              find = true;
              break;
            }
          }
          if (!find) {
            continue;
          }
        } else {
          ServerConfigGroupItem? scg =
              ServerManager.getByGroupId(item.diversionGroupId);
          if (scg == null) {
            continue;
          }
          ServerConfigGroupItem? scg2 =
              ServerManager.getByGroupId(item.serverGroupId);
          if (scg2 == null) {
            continue;
          }
          ProxyConfig? pc = scg2.getByTag(item.serverName);
          if (pc == null) {
            continue;
          }
        }

        if (item.diversionGroupId != getFinalGroupId() &&
            item.diversionGroupId != getGeoSiteGroupId() &&
            item.diversionGroupId != getGeoIpGroupId() &&
            item.diversionGroupId != getAclGroupId()) {
          ServerDiversionGroupItem rt = _diversionGroupConfig.items.firstWhere(
            (e) => e.groupid == item.diversionGroupId,
            orElse: () => ServerDiversionGroupItem(),
          );
          if (rt.groupid.isEmpty) {
            continue;
          }
        }

        if (item.serverGroupId == getDirectGroupId() ||
            item.serverGroupId == getBlockGroupId() ||
            item.serverGroupId == getUrltestGroupId() ||
            item.serverGroupId == getCurrentSelectedGroupId()) {
          diversionGroup.add(item);
        } else if (item.serverGroupId == getUrltestGroupId()) {
          for (var urltest in custom.urltests) {
            if (urltest.remark == item.serverName) {
              diversionGroup.add(item);
            }
          }
        } else {
          ServerConfigGroupItem sc = _serverConfig.items.firstWhere(
            (e) => e.groupid == item.serverGroupId,
            orElse: () => ServerConfigGroupItem(),
          );
          if (sc.groupid.isNotEmpty) {
            diversionGroup.add(item);
          }
        }
      }
      if (!hasFinal) {
        DiversionGroupSetting config = DiversionGroupSetting();
        config.diversionGroupId = ServerManager.getFinalGroupId();
        config.serverGroupId = ServerManager.getCurrentSelectedGroupId();
        diversionGroup.add(config);
      }
      _use.diversionGroup = diversionGroup;
    } catch (err, stacktrace) {
      SentryUtils.captureException(
          'ServerManager.loadUse.exception', [], err, stacktrace,
          attachments: {filePath: content});
      Log.w("ServerManager.loadUse exception $filePath ${err.toString()}");
    }
  }

  static Future<void> saveUse() async {
    if (_savingUse) {
      return;
    }

    _savingUse = true;
    String filePath = await PathUtils.subscribeUseFilePath();
    //String content = jsonEncode(_use.toJson());
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(_use.toJson());
    try {
      await File(filePath).writeAsString(content, flush: true);
      if (!await FileUtils.validJsonFile(filePath)) {
        await File(filePath).writeAsString(content, flush: true);
      }
    } catch (err) {
      ErrorReporterUtils.tryReportNoSpace(err.toString());
    }

    _savingUse = false;
  }

  static void addRecent(ProxyConfig config) {
    for (var i in _use.recent) {
      if (i.isSame(config)) {
        _use.recent.remove(i);
        break;
      }
    }

    _use.recent.insert(0, config);

    if (_use.recent.length > 5) {
      _use.recent.removeRange(5, _use.recent.length);
    }
  }

  static void clearRecent() {
    _use.recent.clear();
  }

  static ProxyConfig? getMostRecent() {
    if (_use.recent.isEmpty) {
      return null;
    }
    return _use.recent.first;
  }

  static void toggleFav(ProxyConfig config) {
    bool remove = false;
    for (int i = 0; i < _use.fav.length; ++i) {
      if ((_use.fav[i].groupid == config.groupid) &&
          (_use.fav[i].tag == config.tag)) {
        _use.fav.removeAt(i);
        --i;
        remove = true;
      }
    }
    if (remove) {
      return;
    }
    _use.fav.insert(0, config);
    if (_use.fav.length > 10) {
      _use.fav.removeRange(10, _use.fav.length);
    }
  }

  static getNewMaxIndex() {
    int index = 0;
    for (var item in _serverConfig.items) {
      if (item.index >= index) {
        index = item.index + 1;
      }
    }
    return index;
  }

  static ServerConfigGroupItem? getByGroupId(String groupId) {
    if (getCurrentSelectedGroupId() == groupId) {
      return getByCurrentGroup();
    }
    if (getUrltestGroupId() == groupId) {
      return getUrltestGroup();
    }
    if (getDirectGroupId() == groupId) {
      return getDirectGroup();
    }
    if (getBlockGroupId() == groupId) {
      return getBlockGroup();
    }

    for (var item in _serverConfig.items) {
      if (item.groupid == groupId) {
        return item;
      }
    }
    return null;
  }

  static ServerConfigGroupItem getCustomGroup() {
    for (var item in _serverConfig.items) {
      if (item.groupid == getCustomGroupId()) {
        return item;
      }
    }
    ServerConfigGroupItem item = ServerConfigGroupItem();
    item.index = 0;
    item.groupid = ServerManager.getCustomGroupId();
    item.type = SubscriptionLinkType.singbox;
    _serverConfig.items.insert(0, item);
    return _serverConfig.items[0];
  }

  static Future<bool> enableGroup(String groupId, bool enable) async {
    ServerConfigGroupItem? item = getByGroupId(groupId);
    if (item == null) {
      return false;
    }
    item.enable = enable;
    if (!item.enable) {
      item.testLatency.clear();
      item.testLatencyIndepends.clear();
    }
    var list = _onEnableConfigs.values.toList();
    for (var callback in list) {
      await callback(groupId, enable);
    }

    return true;
  }

  static ServerDiversionGroupItem? getDiversionGroupByGroupId(String groupId) {
    if (getFinalGroupId() == groupId) {
      return getFinalGroup();
    }
    if (getGeoSiteGroupId() == groupId) {
      return getGeoSiteGroup();
    }
    if (getGeoIpGroupId() == groupId) {
      return getGeoIpGroup();
    }
    if (getAclGroupId() == groupId) {
      return getAclGroup();
    }
    for (var i in ServerManager.getDiversionGroupConfig().items) {
      if (i.groupid == groupId) {
        return i;
      }
    }
    return null;
  }

  static ServerDiversionGroupItem getDiversionCustomGroup() {
    var items = ServerManager.getDiversionGroupConfig().items;
    for (var item in items) {
      if (item.groupid == getCustomGroupId()) {
        item.groups.sort((a, b) => a.index.compareTo(b.index));
        for (int i = 0; i < item.groups.length; ++i) {
          item.groups[i].index = i;
        }
        return item;
      }
    }
    ServerDiversionGroupItem item = ServerDiversionGroupItem();
    item.groupid = ServerManager.getCustomGroupId();
    item.editAble = true;
    _diversionGroupConfig.items.insert(0, item);
    return _diversionGroupConfig.items[0];
  }

  static bool isReloading(String groupid) {
    return _remoteReloading.contains(groupid);
  }

  static bool isReloadingTraffic(String groupid) {
    return _remoteTrafficReloading.contains(groupid);
  }

  static bool isTestLatency(String groupid) {
    ServerConfigGroupItem? item = getByGroupId(groupid);
    if (item == null) {
      return false;
    }
    if (item.testLatency.isNotEmpty || item.testLatencyIndepends.isNotEmpty) {
      return true;
    }
    for (var value in _testOutboundServerLatencying.values) {
      if (value.groupid == groupid) {
        return true;
      }
    }
    return false;
  }

  static Future<ReturnResultError?> reload(String groupid) async {
    if (isReloading(groupid)) {
      return ReturnResultError("reloading");
    }
    ServerConfigGroupItem? item = getByGroupId(groupid);
    if (item == null || !item.isRemote()) {
      return ReturnResultError(t.meta.urlInvalid);
    }

    List<ServerConfigGroupItem> items = [];
    _remoteReloading.add(groupid);
    ReturnResultError? err = await addRemoteConfig(
        groupid,
        item.remark,
        item.urlOrPath,
        item.type,
        item.userAgentCompatible,
        item.proxyFilter,
        item.proxyFilterRemove,
        item.keepDiversionRules,
        item.enableDiversionRules,
        item.testLatencyAutoRemove,
        item.proxyStrategy,
        null);
    _remoteReloading.remove(groupid);
    if (err != null) {
      Log.w("ServerManager.reload err ${item.urlOrPath} ${err.message}");
    } else {
      if (item.enable && item.reloadAfterProfileUpdate) {
        setDirty(true);
      }
      items.add(item);
    }

    if (items.isNotEmpty) {
      var list = _onUpdateConfigs.values.toList();
      for (var callback in list) {
        await callback(items);
      }
    }

    return err;
  }

  static Future<void> reloadAll() async {
    List<ServerConfigGroupItem> items = [];
    for (var item in _serverConfig.items) {
      if (!item.isRemote()) {
        continue;
      }
      if (isReloading(item.groupid)) {
        continue;
      }
      _remoteReloading.add(item.groupid);
    }

    for (;;) {
      if (_remoteReloading.isEmpty) {
        break;
      }
      var groupid = _remoteReloading.first;
      ServerConfigGroupItem? item = getByGroupId(groupid);
      if (item == null || !item.isRemote()) {
        _remoteReloading.remove(groupid);
        continue;
      }
      ReturnResultError? err = await addRemoteConfig(
          groupid,
          item.remark,
          item.urlOrPath,
          item.type,
          item.userAgentCompatible,
          item.proxyFilter,
          item.proxyFilterRemove,
          item.keepDiversionRules,
          item.enableDiversionRules,
          item.testLatencyAutoRemove,
          item.proxyStrategy,
          null);
      _remoteReloading.remove(groupid);
      if (err != null) {
        Log.w("ServerManager.reloadAll err ${item.urlOrPath} ${err.message}");
      } else {
        items.add(item);
      }
    }
    if (items.isNotEmpty) {
      var list = _onUpdateConfigs.values.toList();
      for (var callback in list) {
        await callback(items);
      }
    }
  }

  static Future<ReturnResult<SubscriptionTraffic>> reloadTraffic(
      String groupid) async {
    ServerConfigGroupItem? item = getByGroupId(groupid);
    if (item == null || !item.isRemote()) {
      return ReturnResult(error: ReturnResultError(t.meta.urlInvalid));
    }
    _remoteTrafficReloading.add(groupid);
    Future.delayed(const Duration(milliseconds: 10), () {
      var list = _onRemoteTrafficReloadStart.values.toList();
      for (var callback in list) {
        callback(groupid);
      }
    });
    late ReturnResult<Tuple2<int, HttpHeaders>> result;
    List<int?> ports = await VPNService.getPortsBySetting(item.proxyStrategy);
    for (var port in ports) {
      result = await HttpUtils.httpHeadRequest(
          Uri.parse(item.urlOrPath), port, const Duration(seconds: 5));
      if (result.error == null) {
        break;
      }
    }
    if (result.error != null) {
      _remoteTrafficReloading.remove(groupid);
      Future.delayed(const Duration(milliseconds: 10), () {
        var list = _onRemoteTrafficReloadEnd.values.toList();
        for (var callback in list) {
          callback(groupid);
        }
      });
      return ReturnResult(error: result.error);
    }
    if (result.data!.item1 != 200) {
      _remoteTrafficReloading.remove(groupid);
      Future.delayed(const Duration(milliseconds: 10), () {
        var list = _onRemoteTrafficReloadEnd.values.toList();
        for (var callback in list) {
          callback(groupid);
        }
      });
      return ReturnResult(
          error: ReturnResultError("http statusCode:${result.data!.item1}"));
    }
    SubscriptionTraffic? traffic =
        ProxyConfUtils.getTraffic(result.data!.item2);

    if (traffic == null) {
      _remoteTrafficReloading.remove(groupid);
      Future.delayed(const Duration(milliseconds: 10), () {
        var list = _onRemoteTrafficReloadEnd.values.toList();
        for (var callback in list) {
          callback(groupid);
        }
      });
      return ReturnResult(
          error: ReturnResultError(t.meta.profileAddParseFailed));
    }
    _remoteTrafficReloading.remove(groupid);
    item.traffic = traffic;
    Future.delayed(const Duration(milliseconds: 10), () {
      var list = _onRemoteTrafficReloadEnd.values.toList();
      for (var callback in list) {
        callback(groupid);
      }
    });
    saveServerConfig();
    return ReturnResult(data: item.traffic);
  }

  static Future<void> updateLatencyByHistory() async {
    bool started = await VPNService.getStarted();
    if (!started) {
      return;
    }
    if (_updateLatencyByHistory) {
      return;
    }
    _updateLatencyByHistory = true;
    ReturnResult<String> result = await ClashApi.getGroupDelayHistory(
        SettingManager.getConfig().proxy.controlPort);
    if (result.data != null) {
      var decodedResponse = jsonDecode(result.data!) as Map<String, dynamic>;
      var history = decodedResponse["history"] as Map<String, dynamic>;
      if (history.isNotEmpty) {
        for (var item in _serverConfig.items) {
          if (!item.enable) {
            continue;
          }
          for (var config in item.servers) {
            var value = history[config.tag];
            if (value != null) {
              updateByDelayResult(value, config);
            }
          }
        }

        _onLatencyHistoryUpdated.forEach((key, valueCallback) {
          valueCallback();
        });
      }
    }
    _updateLatencyByHistory = false;
  }

  static Future<void> deleteUseConfigFile() async {
    String filePath = await PathUtils.subscribeUseFilePath();
    await FileUtils.deletePath(filePath);
  }

  static ServerDiversionGroupItem getFinalGroup() {
    ServerDiversionGroupItem item = ServerDiversionGroupItem();
    item.groupid = getFinalGroupId();
    return item;
  }

  static ServerDiversionGroupItem getGeoSiteGroup() {
    ServerDiversionGroupItem item = ServerDiversionGroupItem();
    item.groupid = getGeoSiteGroupId();
    return item;
  }

  static ServerDiversionGroupItem getGeoIpGroup() {
    ServerDiversionGroupItem item = ServerDiversionGroupItem();
    item.groupid = getGeoIpGroupId();
    return item;
  }

  static ServerDiversionGroupItem getAclGroup() {
    ServerDiversionGroupItem item = ServerDiversionGroupItem();
    item.groupid = getAclGroupId();
    return item;
  }

  static ServerConfigGroupItem getByCurrentGroup() {
    _byCurrentGroup.groupid = getCurrentSelectedGroupId();
    _byCurrentGroup.remark = t.outboundRuleMode.currentSelected;
    _byCurrentGroup.servers.clear();
    _byCurrentGroup.servers.add(getByCurrentSelected());
    return _byCurrentGroup;
  }

  static ServerConfigGroupItem getUrltestGroup() {
    _urltestrGroup.groupid = getUrltestGroupId();
    _urltestrGroup.remark = t.outboundRuleMode.urltest;
    _urltestrGroup.servers.clear();
    _urltestrGroup.servers.add(getUrltest(tag: kOutboundTagUrltest));
    return _urltestrGroup;
  }

  static ServerConfigGroupItem getDirectGroup() {
    _directGroup.groupid = getDirectGroupId();
    _directGroup.remark = t.outboundRuleMode.direct;
    _directGroup.servers.clear();
    _directGroup.servers.add(getDirect());
    return _directGroup;
  }

  static ServerConfigGroupItem getBlockGroup() {
    _blockGroup.groupid = getBlockGroupId();
    _blockGroup.remark = t.outboundRuleMode.block;
    _blockGroup.servers.clear();
    _blockGroup.servers.add(getBlock());
    return _blockGroup;
  }

  static ProxyConfig getByCurrentSelected() {
    _bycurrent.type = getCurrentSelectedGroupId();
    _bycurrent.groupid = getCurrentSelectedGroupId();
    return _bycurrent;
  }

  static ProxyConfig getUrltest({String? tag}) {
    ProxyConfig pc = ProxyConfig();
    pc.type = getUrltestGroupId();
    pc.groupid = getUrltestGroupId();
    pc.tag = tag ?? kOutboundTagUrltest;
    return pc;
  }

  static ProxyConfig getDirect() {
    _direct.type = getDirectGroupId();
    _direct.groupid = getDirectGroupId();
    _direct.tag = kOutboundTagDirect;
    return _direct;
  }

  static ProxyConfig getBlock() {
    _block.type = getBlockGroupId();
    _block.groupid = getBlockGroupId();
    _block.tag = kOutboundTagBlock;
    return _block;
  }

  static ProxyConfig getNone() {
    return _none;
  }

  static String getFinalGroupId() {
    return "final";
  }

  static String getGeoSiteGroupId() {
    return "geosite";
  }

  static String getGeoIpGroupId() {
    return "geoip";
  }

  static String getAclGroupId() {
    return "acl";
  }

  static String getCurrentSelectedGroupId() {
    return "currentSelected";
  }

  static String getUrltestGroupId() {
    return kOutboundTypeUrltest;
  }

  static String getCustomGroupId() {
    return "custom";
  }

  static String getDirectGroupId() {
    return kOutboundTypeDirect;
  }

  static String getBlockGroupId() {
    return kOutboundTypeBlock;
  }

  static bool isUrltestTagForCustom(String tag) {
    String prefix = "$kOutboundTagUrltest-";
    return tag.startsWith(prefix);
  }

  static String getUrltestTagForCustom(String tag) {
    if (tag == kOutboundTagUrltest) {
      return tag;
    }
    String prefix = "$kOutboundTagUrltest-";
    return "$prefix$tag";
  }

  static String removeUrltestTagPrefixForCustom(String tag) {
    String prefix = "$kOutboundTagUrltest-";
    if (tag.startsWith(prefix)) {
      return tag.substring(prefix.length);
    }
    return tag;
  }

  static void setDirty(bool dirty) {
    _dirty = dirty;
  }

  static bool getDirty() {
    return _dirty;
  }

  static void modifyRemark(String groupid, String remark) {
    ServerConfigGroupItem? item = getByGroupId(groupid);
    ServerDiversionGroupItem? itemDiversion =
        getDiversionGroupByGroupId(groupid);
    if (item != null) {
      item.remark = remark;
    }
    if (itemDiversion != null) {
      itemDiversion.remark = remark;
    }
  }

  static void modifyUrl(String groupid, String url) {
    ServerConfigGroupItem? item = getByGroupId(groupid);
    if (item == null) {
      return;
    }
    item.urlOrPath = url;
  }

  static List<String> searchTagsIn(Set<String> tags, String text) {
    if (text.isEmpty) {
      return [];
    }
    RegExp? reg;
    try {
      if (text.isNotEmpty) {
        reg = RegExp(text, caseSensitive: false);
      }
    } catch (err, stacktrace) {
      reg = null;
    }

    List<String> searchTags = [];
    try {
      for (var tag in tags) {
        if (tag.toLowerCase().contains(text) ||
            (reg != null && reg.hasMatch(tag))) {
          searchTags.add(tag);
        }
      }
    } catch (err, stacktrace) {}

    return searchTags;
  }

  static List<ProxyConfig> searchIn(
      List<ProxyConfig> servers, String text, bool includeType) {
    RegExp? reg;
    try {
      if (text.isNotEmpty) {
        reg = RegExp(text, caseSensitive: false);
      }
    } catch (err, stacktrace) {}

    List<ProxyConfig> searchServers = [];
    try {
      for (int i = 0; i < servers.length; ++i) {
        if (((includeType && servers[i].type.toLowerCase().contains(text)) ||
            servers[i].tag.toLowerCase().contains(text) ||
            (reg != null && reg.hasMatch(servers[i].tag)))) {
          searchServers.add(servers[i]);
        }
      }
    } catch (err, stacktrace) {}
    return searchServers;
  }

  static List<ProxyConfig> searchInGroup(
      String groupid, String text, bool includeType) {
    ServerConfigGroupItem? item = getByGroupId(groupid);
    if (item == null) {
      return [];
    }
    if (text.isEmpty) {
      return item.servers;
    }
    return searchIn(item.servers, text, includeType);
  }

  static Future<ReturnResultError?> backupToZip(
      BuildContext context, String zipPath) async {
    var dir = await PathUtils.profileDir();
    var fileList = BackupAndSyncUtils.getZipFileNameList();
    List<String> zipFileList = [];
    try {
      for (var file in fileList) {
        var filePath = path.join(dir, file.item1);
        if (file.item2) {
          var f = File(filePath);
          bool exist = await f.exists();
          if (!exist) {
            if (!context.mounted) {
              return ReturnResultError("$filePath not exist");
            }
            final tcontext = Translations.of(context);
            return ReturnResultError(tcontext.meta.fileNotExist(p: filePath));
          }
          zipFileList.add(filePath);
        }
      }
      var error = await ZipUtils.zip(zipFileList, zipPath);
      return error;
    } catch (err) {
      return ReturnResultError(err.toString());
    }
  }

  static Future<ReturnResultError?> reloadFromZip(String zipPath,
      {Set<String> whiteList = const {}}) async {
    var result = await BackupAndSyncUtils.validZip(zipPath);
    if (result != null) {
      return result;
    }
    var dir = await PathUtils.profileDir();
    var error = await ZipUtils.unzip(zipPath, dir, whiteList: whiteList);
    if (error != null) {
      return error;
    }
    _serverConfig.clear();
    _diversionGroupConfig.clear();
    _use.clear();
    await loadServerConfig();
    await loadDiversionGroupConfig();
    await loadUse();
    await SettingManager.init(fromBackupRestore: true);
    await RemoteISPConfigManager.init();
    var list = _onReloadFromZipConfigs.values.toList();
    for (var callback in list) {
      await callback();
    }
    SettingManager.setDirty(true);
    setDirty(true);
    return null;
  }
}
