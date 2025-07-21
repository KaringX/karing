import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/diversion_group_custom_screen.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/file_view_screen.dart';
import 'package:karing/screens/server_select_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:tuple/tuple.dart';

class DiversionRulesScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "DiversionRulesScreen");
  }

  const DiversionRulesScreen({super.key});

  @override
  State<DiversionRulesScreen> createState() => DiversionRulesScreenState();
}

class DiversionRulesScreenState
    extends LasyRenderingState<DiversionRulesScreen> {
  final Set<String> _allOutboundsTags = {};
  @override
  void initState() {
    super.initState();
    ServerConfigGroupItem item = ServerManager.getCustomGroup();
    item.remark = t.meta.custom;

    ServerDiversionGroupItem itemDiversion =
        ServerManager.getDiversionCustomGroup();

    itemDiversion.remark = t.meta.custom;
    VPNService.getOutboundsWithoutUrltest(_allOutboundsTags, null, null);
  }

  @override
  void dispose() {
    super.dispose();
    ServerManager.saveServerConfig();
    ServerManager.saveDiversionGroupConfig();
    ServerManager.saveUse();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const SizedBox(
                        width: 50,
                        height: 30,
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 26,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: windowSize.width - 50 * 2,
                      child: Text(
                        tcontext.meta.diversionRules,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        onTapEdit();
                      },
                      child: const SizedBox(
                        width: 50,
                        height: 30,
                        child: Icon(
                          Icons.edit_outlined,
                          size: 26,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  tcontext.DiversionRulesScreen.diversionRulesMatchTips,
                  style: const TextStyle(
                    fontSize: ThemeConfig.kFontSizeListSubItem,
                    fontWeight: ThemeConfig.kFontWeightListSubItem,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    child: FutureBuilder(
                      future: getGroupOptions(),
                      builder: (BuildContext context,
                          AsyncSnapshot<List<GroupItem>> snapshot) {
                        List<GroupItem> data =
                            snapshot.hasData ? snapshot.data! : [];
                        return Column(
                            children:
                                GroupItemCreator.createGroups(context, data));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String getDiversionShortName(String name) {
    if (name.startsWith("http://") || name.startsWith("https://")) {
      Uri? uri = Uri.tryParse(name);
      if (uri != null) {
        String? tag = ServerDiversionGroupRuleSetItem.getTagFromUrl(uri);
        if (tag != null) {
          return tag;
        }
      }
    }
    return name;
  }

  Future<List<GroupItem>> getGroupOptions() async {
    var settingConfig = SettingManager.getConfig();
    var regionCode = settingConfig.regionCode.toLowerCase();

    DiversionGroupConfig diversionGroupConfig =
        ServerManager.getDiversionGroupConfig();

    final tcontext = Translations.of(context);
    List<GroupItem> groupOptions = [];
    {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.hideUnusedDiversionGroup,
                switchValue: settingConfig.uiScreen.hideUnusedDiversionGroup,
                onSwitch: (bool value) async {
                  settingConfig.uiScreen.hideUnusedDiversionGroup = value;
                  setState(() {});
                })),
      ];

      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.privateDirect,
                switchValue: settingConfig.privateDirect,
                onSwitch: (bool value) async {
                  settingConfig.privateDirect = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.disableISPDiversionGroup,
                switchValue: settingConfig.ruleSets.disableISPDiversionGroup,
                onSwitch: (bool value) async {
                  settingConfig.ruleSets.disableISPDiversionGroup = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
      ];
      groupOptions.add(GroupItem(options: options));
      groupOptions.add(GroupItem(options: options1));
    }

    for (var group in diversionGroupConfig.items) {
      ServerConfigGroupItem? srg = ServerManager.getByGroupId(group.groupid);
      if (srg == null || !srg.enable) {
        continue;
      }
      if (group.groupid != ServerManager.getCustomGroupId()) {
        if (settingConfig.ruleSets.disableISPDiversionGroup) {
          continue;
        }
      }

      List<GroupItemOptions> options = [];
      if (srg.enableDiversionRules) {
        for (var item in group.groups) {
          var selected = getSelected(item);
          if (selected.item1.groupid.isEmpty) {
            if (settingConfig.uiScreen.hideUnusedDiversionGroup) {
              continue;
            }
          }
          String text = "";
          bool invalid = false;
          if (selected.item2.isNotEmpty) {
            text = selected.item2;
          } else {
            text = selected.item1.tag;
            if (!_allOutboundsTags.contains(selected.item1.tag)) {
              invalid = true;
            }
          }

          options.add(GroupItemOptions(
              pushOptions: GroupItemPushOptions(
            name: getDiversionShortName(item.name),
            text: text,
            textColor: invalid ? Colors.red : null,
            textWidthPercent: 0.4,
            onPush: () async {
              onTapItem(item, selected.item1, invalid: invalid);
            },
            onLongPress: () async {
              onTapItemName(item);
            },
          )));
        }
      }

      options.insert(
          0,
          GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: srg.remark == tcontext.meta.custom
                    ? tcontext.meta.diversionCustomGroup
                    : srg.remark,
                switchValue: srg.enableDiversionRules,
                onSwitch: (value) async {
                  srg.enableDiversionRules = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                }),
          ));
      groupOptions.add(GroupItem(options: options));
    }
    var use = ServerManager.getUse();
    //geosite
    if (settingConfig.ruleSets.enableGeoSite) {
      List<GroupItemOptions> options = [];

      for (var item in use.geoSite) {
        DiversionRulesGroup group = DiversionRulesGroup();
        group.name = item;
        group.groupid = ServerManager.getGeoSiteGroupId();
        var selected = getSelected(group);
        if (selected.item2.isEmpty) {
          continue;
        }
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: item,
          text: selected.item2.isNotEmpty ? selected.item2 : selected.item1.tag,
          textWidthPercent: 0.4,
          onPush: () async {
            onTapItem(group, selected.item1, deleteIfSelectNone: true);
          },
          onLongPress: () async {
            onTapItemName(group);
          },
        )));
      }
      if (regionCode.isNotEmpty &&
          settingConfig.ruleSets.autoAppendRegionGeoSite) {
        if (SettingConfigItemRuleSets.hasGeoSiteData(regionCode)) {
          options.add(GroupItemOptions(
              pushOptions: GroupItemPushOptions(
            name: regionCode,
            text: tcontext.outboundRuleMode.direct,
            textWidthPercent: 0.4,
          )));
        }
      }
      groupOptions
          .add(GroupItem(name: tcontext.meta.rulesetGeoSite, options: options));
    }
    //geoip
    if (settingConfig.ruleSets.enableGeoIp) {
      List<GroupItemOptions> options = [];

      for (var item in use.geoIp) {
        DiversionRulesGroup group = DiversionRulesGroup();
        group.name = item;
        group.groupid = ServerManager.getGeoIpGroupId();
        var selected = getSelected(group);
        if (selected.item2.isEmpty) {
          continue;
        }
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: item,
          text: selected.item2.isNotEmpty ? selected.item2 : selected.item1.tag,
          textWidthPercent: 0.4,
          onPush: () async {
            onTapItem(group, selected.item1, deleteIfSelectNone: true);
          },
          onLongPress: () async {
            onTapItemName(group);
          },
        )));
      }
      if (regionCode.isNotEmpty &&
          settingConfig.ruleSets.autoAppendRegionGeoIp) {
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: regionCode,
          text: tcontext.outboundRuleMode.direct,
          textWidthPercent: 0.4,
        )));
      }
      groupOptions
          .add(GroupItem(name: tcontext.meta.rulesetGeoIp, options: options));
    }
    //acl
    if (settingConfig.ruleSets.enableAcl) {
      List<GroupItemOptions> options = [];
      for (var item in use.acl) {
        DiversionRulesGroup group = DiversionRulesGroup();
        group.name = item;
        group.groupid = ServerManager.getAclGroupId();
        var selected = getSelected(group);
        if (selected.item2.isEmpty) {
          continue;
        }
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: item,
          text: selected.item2.isNotEmpty ? selected.item2 : selected.item1.tag,
          textWidthPercent: 0.4,
          onPush: () async {
            onTapItem(group, selected.item1, deleteIfSelectNone: true);
          },
          onLongPress: () async {
            onTapItemName(group);
          },
        )));
      }
      groupOptions
          .add(GroupItem(name: tcontext.meta.rulesetAcl, options: options));
    }
    //final
    {
      List<GroupItemOptions> options = [];

      DiversionRulesGroup group = DiversionRulesGroup();
      group.name = tcontext.routeFinal;
      group.groupid = ServerManager.getFinalGroupId();
      var selected = getSelected(group);
      options.add(GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: group.name,
              text: selected.item2.isNotEmpty
                  ? selected.item2
                  : selected.item1.tag,
              textWidthPercent: 0.4,
              onPush: () async {
                onTapItem(group, selected.item1);
              })));

      groupOptions.add(GroupItem(name: tcontext.routeFinal, options: options));
    }

    return groupOptions;
  }

  void onTapEdit() async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: DiversionGroupCustomScreen.routSettings(),
            builder: (context) => const DiversionGroupCustomScreen()));
    setState(() {});
  }

  Future<void> onTapItemName(DiversionRulesGroup group) async {
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String? content = encoder.convert(group.toJson(noGroupId: true));

    Navigator.push(
        context,
        MaterialPageRoute(
            settings: FileViewScreen.routSettings(),
            builder: (context) => FileViewScreen(
                  title: group.name,
                  content: content,
                )));
  }

  Future<void> onTapItem(DiversionRulesGroup group, ProxyConfig selected,
      {bool deleteIfSelectNone = false, bool invalid = false}) async {
    ProxyConfig? result = await Navigator.push(
        context,
        MaterialPageRoute(
            settings: ServerSelectScreen.routSettings(),
            builder: (context) => ServerSelectScreen(
                  title: getDiversionShortName(group.name),
                  singleSelect: ServerSelectScreenSingleSelectedOption(
                    selectedServer: selected,
                    selectedServerInvalid: invalid,
                    showNone: group.groupid != ServerManager.getFinalGroupId(),
                    showCurrentSelect: true,
                    showAutoSelect: true,
                    showDirect: true,
                    showBlock: true,
                    showUrltestGroup: true,
                    showFav: false,
                    showRecommend: false,
                    showRecent: false,
                    showTranffic: false,
                    showUpdate: false,
                  ),
                  multiSelect: null,
                )));
    if (result != null && !selected.isSame(result)) {
      setSelected(group, result, deleteIfSelectNone: deleteIfSelectNone);
    }
  }

  void setSelected(DiversionRulesGroup group, ProxyConfig server,
      {bool deleteIfSelectNone = false}) {
    if (group.groupid.isNotEmpty) {
      bool setted = false;
      var diversionGroup = ServerManager.getUse().diversionGroup;
      for (var rts in diversionGroup) {
        if (rts.diversionGroupId == group.groupid &&
            (rts.diversionGroupId == ServerManager.getFinalGroupId() ||
                rts.diversionName == group.name)) {
          if (rts.serverGroupId != server.groupid ||
              rts.serverName != server.tag) {
            if (server.groupid.isEmpty && deleteIfSelectNone) {
              diversionGroup.remove(rts);
            } else {
              rts.serverGroupId = server.groupid;
              rts.serverName = server.tag;
            }
          } else {
            diversionGroup.remove(rts);
          }

          setted = true;
          break;
        }
      }
      if (!setted) {
        DiversionGroupSetting setting = DiversionGroupSetting();
        setting.diversionGroupId = group.groupid;
        setting.diversionName = group.name;
        setting.serverGroupId = server.groupid;
        setting.serverName = server.tag;
        diversionGroup.add(setting);
      }

      ServerManager.setDirty(true);
      setState(() {});
    }
  }

  Tuple2<ProxyConfig, String> getSelected(DiversionRulesGroup group) {
    final tcontext = Translations.of(context);
    var diversionGroup = ServerManager.getUse().diversionGroup;
    for (var rts in diversionGroup) {
      if (rts.diversionGroupId == group.groupid &&
          (rts.diversionGroupId == ServerManager.getFinalGroupId() ||
              rts.diversionName == group.name)) {
        if (rts.serverGroupId == ServerManager.getByCurrentSelected().groupid) {
          return Tuple2(ServerManager.getByCurrentSelected(),
              tcontext.outboundRuleMode.currentSelected);
        } else if (rts.serverGroupId == ServerManager.getUrltest().groupid) {
          return Tuple2(
              ServerManager.getUrltest(tag: rts.serverName),
              rts.serverName == kOutboundTagUrltest
                  ? tcontext.outboundRuleMode.urltest
                  : rts.serverName);
        } else if (rts.serverGroupId == ServerManager.getDirect().groupid) {
          return Tuple2(
              ServerManager.getDirect(), tcontext.outboundRuleMode.direct);
        } else if (rts.serverGroupId == ServerManager.getBlock().groupid) {
          return Tuple2(
              ServerManager.getBlock(), tcontext.outboundRuleMode.block);
        } else if (rts.serverGroupId == ServerManager.getUrltestGroupId()) {
          ServerConfigGroupItem item = ServerManager.getCustomGroup();
          for (var urltest in item.urltests) {
            if (urltest.remark == rts.serverName) {
              return Tuple2(ServerManager.getUrltest(tag: urltest.remark),
                  urltest.remark);
            }
          }
        } else {
          for (var item in ServerManager.getConfig().items) {
            if (!item.enable) {
              continue;
            }
            if (item.groupid == rts.serverGroupId) {
              for (var server in item.servers) {
                if (rts.serverName == server.tag) {
                  return Tuple2(server, "");
                }
              }
              break;
            }
          }
        }

        break;
      }
    }
    if (group.groupid == ServerManager.getFinalGroupId()) {
      return Tuple2(ServerManager.getByCurrentSelected(),
          tcontext.outboundRuleMode.currentSelected);
    }
    return Tuple2(ServerManager.getNone(), "");
  }
}
