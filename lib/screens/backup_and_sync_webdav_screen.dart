// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/backup_and_sync_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/webdav_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/group_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:path/path.dart' as path;
import 'package:webdav_client/webdav_client.dart';

class BackupAndSyncWebdavScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "BackupAndSyncWebdavScreen");
  }

  const BackupAndSyncWebdavScreen({super.key});

  @override
  State<BackupAndSyncWebdavScreen> createState() =>
      _BackupAndSyncWebdavScreenState();
}

class _BackupAndSyncWebdavScreenState
    extends LasyRenderingState<BackupAndSyncWebdavScreen>
    with AfterLayoutMixin {
  bool _connecting = true;
  bool _loading = true;
  bool _uploading = false;

  Client? _webdavClient;
  List<String> _fileList = [];
  final TextEditingController _urlController = TextEditingController();
  final TextEditingController _userController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    var settingConfig = SettingManager.getConfig();
    _urlController.value = _urlController.value.copyWith(
      text: settingConfig.webdav.url,
    );
    _userController.value = _userController.value.copyWith(
      text: settingConfig.webdav.user,
    );
    _passwordController.value = _passwordController.value.copyWith(
      text: settingConfig.webdav.password,
    );
  }

  @override
  void dispose() {
    _urlController.dispose();
    _userController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    var settingConfig = SettingManager.getConfig();
    if (settingConfig.webdav.url.isEmpty ||
        settingConfig.webdav.user.isEmpty ||
        settingConfig.webdav.password.isEmpty) {
      await onTapSetting();
    } else {
      await reconnect();
      await list();
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
                      width: windowSize.width - 50 * 3,
                      child: Text(
                        tcontext.meta.webdav,
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
                                onTap: _webdavClient == null
                                    ? null
                                    : () {
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
                        InkWell(
                          onTap: () {
                            onTapSetting();
                          },
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.settings,
                              size: 26,
                            ),
                          ),
                        )
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
    if (_connecting || _loading) {
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

  Future<void> reconnect() async {
    var settingConfig = SettingManager.getConfig();
    if (settingConfig.webdav.url.isEmpty ||
        settingConfig.webdav.user.isEmpty ||
        settingConfig.webdav.password.isEmpty) {
      Navigator.pop(context);
      return;
    }
    if (!mounted) {
      return;
    }

    _connecting = true;
    _webdavClient = null;
    _fileList.clear();
    setState(() {});
    List<int?> ports = await VPNService.getPortsByPrefer(false);
    late ReturnResult<Client> result;
    for (var port in ports) {
      result = await WebdavUtils.connect(port, settingConfig.webdav.url,
          settingConfig.webdav.user, settingConfig.webdav.password);
      if (!mounted) {
        return;
      }
      if (result.error == null) {
        break;
      }
    }
    if (!mounted) {
      return;
    }
    _connecting = false;
    setState(() {});
    if (result.error != null) {
      final tcontext = Translations.of(context);
      DialogUtils.showAlertDialog(
          context,
          tcontext.BackupAndSyncWebdavScreen.webdavLoginFailed +
              result.error!.message,
          showCopy: true,
          showFAQ: true,
          withVersion: true);
      return;
    }
    _webdavClient = result.data;
    setState(() {});
  }

  Future<void> list() async {
    if (!mounted) {
      return;
    }
    _loading = false;
    if (_webdavClient == null) {
      return;
    }
    _loading = true;
    setState(() {});
    var result = await WebdavUtils.list(_webdavClient!);
    if (!mounted) {
      return;
    }
    _loading = false;
    setState(() {});
    if (result.error != null) {
      final tcontext = Translations.of(context);
      DialogUtils.showAlertDialog(
          context,
          tcontext.BackupAndSyncWebdavScreen.webdavListFailed +
              result.error!.message,
          showCopy: true,
          showFAQ: true,
          withVersion: true);
      return;
    }
    _fileList = result.data!;
    _fileList.sort((a, b) => b.compareTo(a));

    setState(() {});
  }

  Future<void> onTapBackup() async {
    if (_webdavClient == null) {
      return;
    }
    if (!mounted) {
      return;
    }
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
      error = await WebdavUtils.upload(_webdavClient!,
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

  Future<void> onTapSetting() async {
    final tcontext = Translations.of(context);

    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
          name: tcontext.BackupAndSyncWebdavScreen.webdavServerUrl,
          keyboardType: TextInputType.url,
          hint: "${tcontext.meta.required}[https://xxxx/webdav]",
          textWidthPercent: 0.6,
          controller: _urlController,
          autoFocus: true,
          textInputAction: TextInputAction.next,
        )),
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
          name: tcontext.meta.account,
          hint: tcontext.meta.required,
          textWidthPercent: 0.6,
          controller: _userController,
          textInputAction: TextInputAction.next,
        )),
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: tcontext.meta.password,
                hint: tcontext.meta.required,
                textWidthPercent: 0.6,
                obscureText: true,
                controller: _passwordController,
                textInputAction: TextInputAction.done,
                onSubmitted: (String value) {
                  FocusScope.of(context).nextFocus();
                })),
      ];

      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.reset,
                onPush: () async {
                  SettingManager.getConfig().webdav.url = "";
                  SettingManager.getConfig().webdav.user = "";
                  SettingManager.getConfig().webdav.password = "";
                  SettingManager.saveConfig();
                  Navigator.pop(context, true);
                })),
      ];

      return [GroupItem(options: options), GroupItem(options: options1)];
    }

    bool? done = await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("webdav"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.webdav,
                  getOptions: getOptions,
                  onDone: (BuildContext context) async {
                    if (!mounted) {
                      return false;
                    }
                    if (_urlController.text.isEmpty ||
                        _userController.text.isEmpty ||
                        _passwordController.text.isEmpty) {
                      DialogUtils.showAlertDialog(context,
                          tcontext.BackupAndSyncWebdavScreen.webdavRequired);
                      return false;
                    }
                    Uri? uri = Uri.tryParse(_urlController.text);
                    if (uri == null ||
                        (uri.scheme != "http" && uri.scheme != "https")) {
                      DialogUtils.showAlertDialog(
                          context, tcontext.meta.urlInvalid);
                      return false;
                    }

                    SettingManager.getConfig().webdav.url =
                        _urlController.text.trim();
                    SettingManager.getConfig().webdav.user =
                        _userController.text.trim();
                    SettingManager.getConfig().webdav.password =
                        _passwordController.text.trim();
                    SettingManager.saveConfig();

                    return true;
                  },
                )));
    if (done == true) {
      await reconnect();
      await list();
    } else {
      var settingConfig = SettingManager.getConfig();
      if (settingConfig.webdav.url.isEmpty ||
          settingConfig.webdav.user.isEmpty ||
          settingConfig.webdav.password.isEmpty) {
        if (!mounted) {
          return;
        }
        Navigator.pop(context);
        return;
      }
    }
  }

  Future<void> onTapDownload(String filename) async {
    if (_webdavClient == null) {
      return;
    }
    final tcontext = Translations.of(context);
    bool? ok = await DialogUtils.showConfirmDialog(
        context, tcontext.SettingsScreen.rewriteConfirm);
    if (ok != true) {
      return;
    }
    String dir = await PathUtils.cacheDir();
    String filePath = path.join(dir, BackupAndSyncUtils.getZipFileName());
    var error = await WebdavUtils.download(_webdavClient!,
        relativePath: filename, localPath: filePath);
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
    if (_webdavClient == null) {
      return;
    }
    var error = await WebdavUtils.delete(_webdavClient!, filename);
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
