// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:path/path.dart' as path;

class BackupAndSyncAutoBackupScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "BackupAndSyncAutoBackupScreen");
  }

  const BackupAndSyncAutoBackupScreen({super.key});

  @override
  State<BackupAndSyncAutoBackupScreen> createState() =>
      _BackupAndSyncAutoBackupScreenState();
}

class _BackupAndSyncAutoBackupScreenState
    extends LasyRenderingState<BackupAndSyncAutoBackupScreen>
    with AfterLayoutMixin {
  bool _loading = false;

  List<String> _fileList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    SettingManager.saveConfig();
    super.dispose();
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    await list();
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
                        tcontext.meta.autoBackup,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                      height: 30,
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
              const SizedBox(
                height: 40,
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
          shrinkWrap: true,
          itemCount: _fileList.length,
          itemBuilder: (BuildContext context, int index) {
            var current = _fileList[index];
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

  Widget createWidget(String current, Size windowSize) {
    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: double.infinity,
        //height: 66,
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
                        width: windowSize.width - 100,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                current,
                                style: TextStyle(
                                    fontSize: ThemeConfig.kFontSizeGroupItem),
                              ),
                            ]),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          onTapDownload(current);
                        },
                        child: const SizedBox(
                          width: 30,
                          height: ThemeConfig.kListItemHeight2,
                          child: Icon(
                            Icons.cloud_download_outlined,
                            size: 26,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          onTapDelete(current);
                        },
                        child: const SizedBox(
                          width: 30,
                          height: ThemeConfig.kListItemHeight2,
                          child: Icon(Icons.remove_circle_outlined,
                              size: 26, color: Colors.red),
                        ),
                      ),
                    ]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<void> list() async {
    if (!mounted) {
      return;
    }
    _loading = true;
    setState(() {});
    String dir = await PathUtils.backupDir();
    var files = FileUtils.recursionFile(dir, extensionFilter: {".zip"});
    if (!mounted) {
      return;
    }
    for (int i = 0; i < files.length; ++i) {
      files[i] = path.basename(files[i]);
    }
    _fileList = files;
    _fileList.sort((a, b) => b.compareTo(a));
    _loading = false;
    setState(() {});
  }

  Future<void> onTapDownload(String filename) async {
    String dir = await PathUtils.backupDir();
    String filePath = path.join(dir, filename);
    if (!mounted) {
      return;
    }
    await GroupHelper.backupRestoreFromZip(context, filePath, confirm: false);
  }

  Future<void> onTapDelete(String filename) async {
    String dir = await PathUtils.backupDir();
    String filePath = path.join(dir, filename);
    if (!mounted) {
      return;
    }
    await FileUtils.deletePath(filePath);
    await list();
  }

  Future<List<GroupItem>> getGroupOptions() async {
    final tcontext = Translations.of(context);
    var settingConfig = SettingManager.getConfig();
    List<GroupItemOptions> options = [
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.meta.autoBackupAddProfile,
              switchValue: settingConfig.autoBackup.addProfile,
              onSwitch: (bool value) async {
                settingConfig.autoBackup.addProfile = value;
                setState(() {});
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.meta.autoBackupRemoveProfile,
              switchValue: settingConfig.autoBackup.removeProfile,
              onSwitch: (bool value) async {
                settingConfig.autoBackup.removeProfile = value;
                setState(() {});
              })),
    ];
    List<String> strings = [];
    for (int i = 1; i <= SettingConfigItemAutobackup.kMaxCount; ++i) {
      strings.add(i.toString());
    }

    return [GroupItem(options: options)];
  }
}
