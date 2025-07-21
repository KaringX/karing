// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/backup_and_sync_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/icloud_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:path/path.dart' as path;

class BackupAndSyncIcloudScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "BackupAndSyncIcloudScreen");
  }

  const BackupAndSyncIcloudScreen({super.key});

  @override
  State<BackupAndSyncIcloudScreen> createState() =>
      _BackupAndSyncIcloudScreenState();
}

class _BackupAndSyncIcloudScreenState
    extends LasyRenderingState<BackupAndSyncIcloudScreen>
    with AfterLayoutMixin {
  bool _loading = false;
  bool _uploading = false;
  List<String> _fileList = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
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
                        tcontext.meta.iCloud,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    Row(
                      children: [
                        _uploading
                            ? const Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: RepaintBoundary(
                                      child: CircularProgressIndicator(
                                          strokeWidth: 2),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  )
                                ],
                              )
                            : InkWell(
                                onTap: () {
                                  onTapBackup();
                                },
                                child: const SizedBox(
                                  width: 50,
                                  height: 30,
                                  child: Icon(
                                    Icons.cloud_upload_outlined,
                                    size: 26,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ],
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
    var result = await ICloudUtils.list();
    if (!mounted) {
      return;
    }
    _loading = false;
    setState(() {});

    if (result.error != null) {
      DialogUtils.showAlertDialog(context, result.error!.message,
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }
    _fileList = result.data!;
    _fileList.sort((a, b) => b.compareTo(a));

    setState(() {});
  }

  Future<void> onTapBackup() async {
    _uploading = true;
    setState(() {});
    try {
      String dir = await PathUtils.cacheDir();
      if (!mounted) {
        return;
      }
      String filePath = path.join(dir, BackupAndSyncUtils.getZipFileName());
      ReturnResultError? error =
          await ServerManager.backupToZip(context, filePath);
      if (!mounted) {
        FileUtils.deletePath(filePath);
        return;
      }
      if (error != null) {
        DialogUtils.showAlertDialog(context, error.message,
            showCopy: true, showFAQ: true, withVersion: true);
        return;
      }
      error = await ICloudUtils.upload(
          relativePath: path.basename(filePath), localPath: filePath);

      FileUtils.deletePath(filePath);
      if (!mounted) {
        return;
      }
      _uploading = false;
      setState(() {});
      if (error != null) {
        DialogUtils.showAlertDialog(context, error.message,
            showCopy: true, showFAQ: true, withVersion: true);
        return;
      }
      await list();
    } catch (err, stacktrace) {
      if (!mounted) {
        return;
      }
      _uploading = false;
      setState(() {});
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  Future<void> onTapDownload(String filename) async {
    final tcontext = Translations.of(context);
    bool? ok = await DialogUtils.showConfirmDialog(
        context, tcontext.SettingsScreen.rewriteConfirm);
    if (ok != true) {
      return;
    }
    String dir = await PathUtils.cacheDir();
    String filePath = path.join(dir, BackupAndSyncUtils.getZipFileName());
    ReturnResultError? error =
        await ICloudUtils.download(relativePath: filename, localPath: filePath);
    if (!mounted) {
      return;
    }
    if (error != null) {
      DialogUtils.showAlertDialog(context, error.message,
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }
    await GroupHelper.backupRestoreFromZip(context, filePath, confirm: false);
    await FileUtils.deletePath(filePath);
  }

  Future<void> onTapDelete(String filename) async {
    var error = await ICloudUtils.delete(filename);
    if (!mounted) {
      return;
    }
    if (error != null) {
      DialogUtils.showAlertDialog(context, error.message,
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }
    await list();
  }
}
