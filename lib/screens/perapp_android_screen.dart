// ignore_for_file: unused_catch_stack

import 'package:android_package_manager/android_package_manager.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/antdesign.dart';
import 'package:karing/screens/common_widget.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/sheet.dart';
import 'package:karing/screens/widgets/text_field.dart';

class PerAppAndroidScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "PerAppAndroidScreen");
  }

  const PerAppAndroidScreen({super.key});

  @override
  State<PerAppAndroidScreen> createState() => _PerAppAndroidScreenState();
}

class PackageInfoImpl extends PackageInfo {
  PackageInfoImpl(
    String packageName,
  ) : super(
            packageName: packageName,
            installLocation: AndroidInstallLocation.unspecified);
}

class PackageInfoEx {
  late PackageInfo info;
  String name = "";
  Image? icon;
}

class _PerAppAndroidScreenState
    extends LasyRenderingState<PerAppAndroidScreen> {
  //https://github.com/ekoputrapratama/flutter_android_native/blob/6dacb8a0bcc9c8c05159eb916b2f0bea9db60826/lib/content/pm/ApplicationInfo.dart#L14
  static const int FLAG_SYSTEM = 1;
  static const _removed = "[removed]";
  AndroidPackageManager? _pkgMgr;
  bool _loading = true;
  final List<PackageInfoEx> _applicationInfoList = [];
  final _searchController = TextEditingController();
  List<PackageInfoEx> _searchedData = [];
  bool _needPermission = false;

  @override
  void initState() {
    _loading = true;
    getInstalledPackages();
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
      final data = _applicationInfoList.where((app) {
        String name = app.name.toLowerCase();
        String pkgName = app.info.packageName!.toLowerCase();
        return name.contains(search) || pkgName.contains(search);
      }).toList();
      _searchedData = data;
      setState(() {});
    } else {
      _searchedData = _applicationInfoList;
      setState(() {});
    }
  }

  _clearSearch() {
    _searchController.clear();
    _searchedData = _applicationInfoList;
    setState(() {});
  }

  Future<void> getInstalledPackages() async {
    _applicationInfoList.clear();
    _searchedData.clear();
    _pkgMgr ??= AndroidPackageManager();
    _pkgMgr!
        .getInstalledPackages(
      flags: PackageInfoFlags(
        {
          PMFlag.getMetaData,
        },
      ),
    )
        .then((value) async {
      if (!mounted) {
        return;
      }
      _loading = false;
      if (value == null) {
        return;
      }

      if (value.length <= 1) {
        _needPermission = true;
        _loading = false;
        setState(() {});
        return;
      }
      List<PackageInfoEx> notExists = [];
      List<PackageInfoEx> added = [];
      List<PackageInfoEx> notAdded = [];
      Set<String> exists = {};
      Set<String> existsSystem = {};
      var perapp = SettingManager.getConfig().perapp;
      for (var app in value) {
        if (app.packageName == null || app.packageName == AppUtils.getId()) {
          continue;
        }

        if (perapp.hideSystemApp) {
          if ((app.applicationInfo != null) &&
              (app.applicationInfo!.flags & FLAG_SYSTEM != 0)) {
            existsSystem.add(app.packageName!);
            continue;
          }
        }

        exists.add(app.packageName!);
        PackageInfoEx info = PackageInfoEx();
        info.info = app;
        info.name = await getAppName(app.packageName!);
        if (info.name.contains("{") &&
            info.name.contains(":") &&
            info.name.contains("\"")) {
          continue;
        }
        if (!mounted) {
          return;
        }
        if (perapp.list.contains(info.info.packageName!)) {
          added.add(info);
        } else {
          notAdded.add(info);
        }
      }
      for (var papp in perapp.list) {
        if (!exists.contains(papp) && !existsSystem.contains(papp)) {
          PackageInfoEx info = PackageInfoEx();
          info.info = PackageInfoImpl(papp);
          info.name = _removed;
          info.icon = null;

          notExists.add(info);
        }
      }
      notExists.sort(sort);
      added.sort(sort);
      notAdded.sort(sort);
      _applicationInfoList.addAll(notExists);
      _applicationInfoList.addAll(added);
      _applicationInfoList.addAll(notAdded);

      _searchedData = _applicationInfoList;
      _loading = false;
      setState(() {});
    });
  }

  Future<Image?> getInstalledPackageIcon(String packageName) async {
    if (SettingManager.getConfig().perapp.hideAppIcon) {
      return null;
    }
    for (var app in _applicationInfoList) {
      if (app.info.packageName == packageName) {
        if (app.icon != null) {
          return app.icon;
        }
        if (app.name == _removed) {
          return null;
        }
        Image? image = await getAppIcon(app.info.packageName);
        if (!mounted) {
          return null;
        }
        app.icon = image;
        return app.icon;
      }
    }
    return null;
  }

  int sort(PackageInfoEx a, PackageInfoEx b) {
    return a.name.compareTo(b.name);
  }

  Future<String> getAppName(String? packageName) async {
    if (_pkgMgr == null || packageName == null) {
      return "";
    }
    try {
      return await _pkgMgr!.getApplicationLabel(packageName: packageName) ?? "";
    } catch (err, stacktrace) {
      return packageName;
    }
  }

  Future<Image?> getAppIcon(String? packageName) async {
    if (SettingManager.getConfig().perapp.hideAppIcon) {
      return null;
    }
    if (_pkgMgr == null || packageName == null) {
      return null;
    }
    try {
      var data = await _pkgMgr!.getApplicationIcon(
          packageName: packageName, format: BitmapCompressFormat.png);
      if (data == null) {
        return null;
      }
      return Image.memory(
        data,
        cacheHeight: 96,
        cacheWidth: 96,
      );
    } catch (err, stacktrace) {
      return null;
    }
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
                            )),
                      ),
                    ),
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
                child: _needPermission
                    ? CommonWidget.createNeedPermission(
                        context,
                        tcontext.permission
                            .request(p: tcontext.permission.appQuery), () {
                        AppSettings.openAppSettings(
                            type: AppSettingsType.settings);
                      }, () {
                        _needPermission = false;
                        _loading = true;
                        getInstalledPackages();
                        setState(() {});
                      })
                    : _loadListView(),
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
        thumbVisibility: false,
        child: ListView.separated(
          itemCount: _searchedData.length,
          itemBuilder: (BuildContext context, int index) {
            PackageInfoEx current = _searchedData[index];
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

  Widget createWidget(PackageInfoEx current, Size windowSize) {
    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: InkWell(
        onTap: () {
          bool value = SettingManager.getConfig()
              .perapp
              .list
              .contains(current.info.packageName!);
          if (value != true) {
            SettingManager.getConfig()
                .perapp
                .list
                .add(current.info.packageName!);
          } else {
            SettingManager.getConfig()
                .perapp
                .list
                .remove(current.info.packageName!);
          }
          SettingManager.setDirty(true);
          setState(() {});
        },
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
                          child: FutureBuilder(
                            future: getInstalledPackageIcon(
                                current.info.packageName!),
                            builder: (BuildContext context,
                                AsyncSnapshot<Image?> snapshot) {
                              if (!snapshot.hasData || snapshot.data == null) {
                                return const SizedBox.shrink();
                              }
                              return SizedBox(
                                  width: 48, height: 48, child: snapshot.data);
                            },
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
                                if (current.name !=
                                    current.info.packageName) ...[
                                  Text(
                                    current.info.packageName!,
                                    style: const TextStyle(fontSize: 12),
                                  )
                                ],
                              ]),
                        ),
                        Checkbox(
                          tristate: true,
                          value: SettingManager.getConfig()
                              .perapp
                              .list
                              .contains(current.info.packageName!),
                          onChanged: (bool? value) {
                            if (value == true) {
                              SettingManager.getConfig()
                                  .perapp
                                  .list
                                  .add(current.info.packageName!);
                            } else {
                              SettingManager.getConfig()
                                  .perapp
                                  .list
                                  .remove(current.info.packageName!);
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
              name: tcontext.PerAppAndroidScreen.whiteListMode,
              switchValue: SettingManager.getConfig().perapp.isInclude,
              tips: tcontext.PerAppAndroidScreen.whiteListModeTip,
              onSwitch: (bool value) async {
                SettingManager.getConfig().perapp.isInclude = value;
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
                getInstalledPackages();
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

  void onTapImport() async {
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

  void onTapExport() async {
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
