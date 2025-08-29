// ignore_for_file: unused_catch_stack

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/antdesign.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/sheet.dart';
import 'package:karing/screens/widgets/text_field.dart';
import 'package:vpn_service/vpn_service.dart';

class PerAppMacosScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "PerAppMacosScreen");
  }

  const PerAppMacosScreen({super.key});

  @override
  State<PerAppMacosScreen> createState() => _PerAppMacosScreenState();
}

class ProcessInfo {
  String name = "";
  String identifier = "";
  String designatedRequirement = "";
  bool hasIcon = false;
  Image? icon;

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    name = map["name"] ?? "";
    identifier = map["identifier"] ?? "";
    designatedRequirement = map["designatedRequirement"] ?? "";
    hasIcon = map["hasIcon"] ?? false;
  }
}

class _PerAppMacosScreenState extends LasyRenderingState<PerAppMacosScreen> {
  bool _loading = true;
  final List<ProcessInfo> _processInfoList = [];
  final _searchController = TextEditingController();
  List<ProcessInfo> _searchedData = [];

  @override
  void initState() {
    _loading = true;
    getProcessList();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    SettingManager.saveConfig();
  }

  _loadSearch(String? textVal) {
    if ((textVal != null) && textVal.isNotEmpty) {
      String search = textVal.toLowerCase();
      final data = _processInfoList.where((app) {
        String name = app.name.toLowerCase();
        String identifier = app.identifier.toLowerCase();
        return name.contains(search) || identifier.contains(search);
      }).toList();
      _searchedData = data;
      setState(() {});
    } else {
      _searchedData = _processInfoList;
      setState(() {});
    }
  }

  _clearSearch() {
    _searchController.clear();
    _searchedData = _processInfoList;
    setState(() {});
  }

  Future<void> getProcessList() async {
    _processInfoList.clear();
    _searchedData.clear();
    String? plist = await FlutterVpnService.getProcessList();
    if (!mounted) {
      return;
    }
    _loading = false;
    setState(() {});
    if (plist == null || plist.isEmpty) {
      return;
    }
    List<ProcessInfo> value = [];
    var perapp = SettingManager.getConfig().perapp;
    try {
      var config = jsonDecode(plist);
      for (var i in config) {
        ProcessInfo info = ProcessInfo();
        info.fromJson(i);
        if (perapp.hideSystemApp) {
          if (info.identifier.startsWith("com.apple.")) {
            continue;
          }
        }
        if (info.identifier != AppUtils.getId()) {
          value.add(info);
        }
      }
    } catch (err, stacktrace) {
      return;
    }
    _processInfoList.addAll(value);
    _searchedData = _processInfoList;
    setState(() {});
  }

  Future<Image?> getProcessIcon(String identifier) async {
    if (SettingManager.getConfig().perapp.hideAppIcon) {
      return null;
    }
    for (var app in _processInfoList) {
      if (app.identifier == identifier) {
        if (app.icon != null) {
          return app.icon;
        }
        if (!app.hasIcon) {
          return null;
        }
        Uint8List? data = await FlutterVpnService.getProcessIcon(identifier);
        if (!mounted) {
          return null;
        }
        if (data != null) {
          app.icon = Image.memory(
            data,
            cacheHeight: 96,
            cacheWidth: 96,
          );
        }

        return app.icon;
      }
    }
    return null;
  }

  int sort(ProcessInfo a, ProcessInfo b) {
    return a.name.compareTo(b.name);
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
                        tcontext.PerAppAndroidScreen.title,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    InkWell(
                        onTap: () async {
                          onTapMore();
                        },
                        child: Tooltip(
                          message: tcontext.meta.more,
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.more_vert_outlined,
                              size: 30,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FutureBuilder(
                future: getGroupOptions(),
                builder: (BuildContext context,
                    AsyncSnapshot<List<GroupItem>> snapshot) {
                  List<GroupItem> data = snapshot.hasData ? snapshot.data! : [];
                  return Column(
                      children: GroupItemCreator.createGroups(context, data));
                },
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                padding: const EdgeInsets.only(left: 15, right: 15),
                height: 44,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: ThemeDefine.kBorderRadius,
                ),
                child: TextFieldEx(
                  controller: _searchController,
                  textInputAction: TextInputAction.done,
                  onChanged: _loadSearch,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: Icon(
                      Icons.search_outlined,
                    ),
                    hintText: tcontext.meta.search,
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear_outlined),
                            onPressed: _clearSearch,
                          )
                        : null,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: _loadListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loadListView() {
    if (_loading) {
      return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 26,
              height: 26,
              child: RepaintBoundary(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            )
          ]);
    }
    Size windowSize = MediaQuery.of(context).size;
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.separated(
          itemCount: _searchedData.length,
          itemBuilder: (BuildContext context, int index) {
            ProcessInfo current = _searchedData[index];
            return createWidget(current, windowSize);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 1,
              thickness: 0.3,
            );
          },
        ));
  }

  Widget createWidget(ProcessInfo current, Size windowSize) {
    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          width: double.infinity,
          height: 66,
          child: Row(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        SizedBox(
                          width: 48,
                          height: 48,
                          child: current.hasIcon
                              ? FutureBuilder(
                                  future: getProcessIcon(current.identifier),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<Image?> snapshot) {
                                    if (!snapshot.hasData ||
                                        snapshot.data == null) {
                                      return const SizedBox.shrink();
                                    }
                                    return SizedBox(
                                        width: 48,
                                        height: 48,
                                        child: snapshot.data);
                                  },
                                )
                              : SizedBox(
                                  width: 48,
                                  height: 48,
                                ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: windowSize.width - 140,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  current.name,
                                  style: TextStyle(
                                      fontSize: ThemeConfig.kFontSizeGroupItem),
                                ),
                                Text(
                                  current.identifier,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ]),
                        ),
                        Checkbox(
                          tristate: true,
                          value: SettingManager.getConfig()
                              .perapp
                              .list
                              .contains(current.identifier),
                          onChanged: (bool? value) {
                            if (value == true) {
                              SettingManager.getConfig()
                                  .perapp
                                  .list
                                  .add(current.identifier);
                            } else {
                              SettingManager.getConfig()
                                  .perapp
                                  .list
                                  .remove(current.identifier);
                            }
                            SettingManager.setDirty(true);
                            setState(() {});
                          },
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<List<GroupItem>> getGroupOptions() async {
    final tcontext = Translations.of(context);

    List<GroupItemOptions> options = [
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.meta.enable,
              switchValue: SettingManager.getConfig().perapp.enable,
              onSwitch: (bool value) async {
                SettingManager.getConfig().perapp.enable = value;
                SettingManager.setDirty(true);
                setState(() {});
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.meta.hideSystemApp,
              switchValue: SettingManager.getConfig().perapp.hideSystemApp,
              onSwitch: (bool value) async {
                SettingManager.getConfig().perapp.hideSystemApp = value;
                _loading = true;
                getProcessList();
                setState(() {});
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.meta.hideAppIcon,
              switchValue: SettingManager.getConfig().perapp.hideAppIcon,
              onSwitch: (bool value) async {
                SettingManager.getConfig().perapp.hideAppIcon = value;
                setState(() {});
              })),
    ];

    return [GroupItem(options: options)];
  }

  void onTapMore() {
    final tcontext = Translations.of(context);
    List<Widget> widgets = [
      ListTile(
        title: Text(
          tcontext.meta.importFromClipboard,
        ),
        leading: Icon(
          AntDesign.import_outline,
        ),
        onTap: () async {
          Navigator.pop(context);
          onTapImport();
        },
      ),
      ListTile(
        title: Text(
          tcontext.meta.exportToClipboard,
        ),
        leading: Icon(
          AntDesign.export_outline,
        ),
        onTap: () async {
          Navigator.pop(context);
          onTapExport();
        },
      ),
    ];

    showSheetWidgets(context: context, widgets: widgets);
  }

  Future<void> onTapImport() async {
    try {
      ClipboardData? data = await Clipboard.getData("text/plain");
      if (data == null || data.text == null || data.text!.isEmpty) {
        return;
      }
      List<String> list = data.text!.split("\n");
      if (list.isEmpty) {
        return;
      }
      for (var app in list) {
        app = app.trim();
        if (SettingManager.getConfig().perapp.list.contains(app)) {
          continue;
        }
        SettingManager.getConfig().perapp.list.add(app);
      }
      setState(() {});
    } catch (err) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  Future<void> onTapExport() async {
    try {
      if (SettingManager.getConfig().perapp.list.isEmpty) {
        return;
      }
      String content = SettingManager.getConfig().perapp.list.join("\n");
      await Clipboard.setData(ClipboardData(text: content));
      if (!mounted) {
        return;
      }
    } catch (err) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }
}
