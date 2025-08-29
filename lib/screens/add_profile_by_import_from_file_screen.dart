// ignore_for_file: use_build_context_synchronously, unused_catch_stack

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/auto_conf_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';
import 'package:path/path.dart' as path;

class AddProfileByImportFromFileScreen extends LasyRenderingStatefulWidget {
  final String title;
  final SubscriptionLinkType type;
  static RouteSettings routSettings() {
    return const RouteSettings(name: "AddProfileByImportFromFileScreen");
  }

  const AddProfileByImportFromFileScreen(
      {super.key, required this.title, required this.type});

  @override
  State<AddProfileByImportFromFileScreen> createState() =>
      _AddProfileByImportFromFileScreenState();
}

class _AddProfileByImportFromFileScreenState
    extends LasyRenderingState<AddProfileByImportFromFileScreen> {
  String _filePath = "";

  final _textControllerRemark = TextEditingController();
  bool _loading = false;
  bool _keepDiversionRules = false;
  bool _testLatencyAutoRemove = false;
  ProxyFilter _proxyFilter = ProxyFilter();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textControllerRemark.dispose();
    super.dispose();
  }

  Future<void> onAdd(BuildContext context) async {
    final tcontext = Translations.of(context);

    String text = _textControllerRemark.text.trim();
    if (text.isEmpty) {
      DialogUtils.showAlertDialog(context, tcontext.meta.remarkCannotEmpty);
      return;
    }
    if (text.length > kRemarkMaxLength) {
      DialogUtils.showAlertDialog(context, tcontext.meta.remarkTooLong);
      return;
    }
    if (ServerManager.hasGroupByRemark(text)) {
      DialogUtils.showAlertDialog(context, tcontext.meta.remarkExist);
      return;
    }
    if (ServerManager.hasGroupByUrlOrPath(_filePath)) {
      DialogUtils.showAlertDialog(context, tcontext.meta.profileExists);
      return;
    }
    _loading = true;
    setState(() {});

    ReturnResultError? error = await ServerManager.addLocalConfig(
      text,
      _filePath,
      widget.type,
      _proxyFilter,
      _keepDiversionRules,
      _testLatencyAutoRemove,
    );

    if (!mounted) {
      return;
    }
    _loading = false;
    setState(() {});

    if (error == null) {
      DialogUtils.showAlertDialog(context, tcontext.meta.addSuccess)
          .then((value) {
        if (!mounted) {
          return;
        }
        Navigator.pop(context);
      });
    } else {
      DialogUtils.showAlertDialog(
              context, tcontext.meta.addFailed(p: error.message),
              showCopy: true, showFAQ: true, withVersion: true)
          .then((value) {});
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
              Row(
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
                      widget.title.isNotEmpty
                          ? widget.title
                          : tcontext.meta.addProfile,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: ThemeConfig.kFontWeightTitle,
                          fontSize: ThemeConfig.kFontSizeTitle),
                    ),
                  ),
                  _loading
                      ? const Row(
                          children: [
                            SizedBox(
                              width: 12,
                            ),
                            SizedBox(
                              width: 26,
                              height: 26,
                              child: RepaintBoundary(
                                child:
                                    CircularProgressIndicator(strokeWidth: 2),
                              ),
                            ),
                            SizedBox(
                              width: 12,
                            )
                          ],
                        )
                      : InkWell(
                          onTap: () async {
                            await onAdd(context);
                          },
                          child: Tooltip(
                            message: tcontext.meta.save,
                            child: const SizedBox(
                              width: 50,
                              height: 30,
                              child: Icon(
                                Icons.done,
                                size: 26,
                              ),
                            ),
                          )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(children: [
                  FutureBuilder(
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
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
                    child: SizedBox(
                      height: 45.0,
                      child: ElevatedButton(
                          child: Text(tcontext.meta.fileChoose),
                          onPressed: () async {
                            await onPressChooseFile();
                          }),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
                    child: TextFieldEx(
                      controller: _textControllerRemark,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        labelText: tcontext.meta.remark,
                        hintText: tcontext.meta.required,
                        prefixIcon: const Icon(Icons.edit_note_outlined),
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onPressChooseFile() async {
    final tcontext = Translations.of(context);
    List<String> extensions = [];
    List<String> extensionsAll = ['yaml', 'yml', 'txt', 'json', 'conf'];
    if (widget.type == SubscriptionLinkType.clash) {
      extensions = [
        'yaml',
        'yml',
      ];
    } else if (widget.type == SubscriptionLinkType.singbox) {
      extensions = [
        'json',
      ];
    } else if (widget.type == SubscriptionLinkType.v2ray) {
      extensions = [
        'txt',
      ];
    } else if (widget.type == SubscriptionLinkType.ss) {
      extensions = [
        'json',
      ];
    } else if (widget.type == SubscriptionLinkType.wireguard) {
      extensions = [
        'conf',
      ];
    } else if (widget.type == SubscriptionLinkType.unknown) {
      extensions = extensionsAll;
    }
    try {
      FilePickerResult? fresult = await FilePicker.platform.pickFiles(
        type: Platform.isAndroid ? FileType.any : FileType.custom,
        allowedExtensions: Platform.isAndroid ? null : extensions,
      );
      if (fresult != null) {
        String ext = path
            .extension(fresult.files.first.name)
            .replaceAll('.', '')
            .toLowerCase();
        if (!extensionsAll.contains(ext)) {
          DialogUtils.showAlertDialog(
              context, tcontext.meta.fileTypeInvalid(p: ext));
          return;
        }
        _filePath = fresult.files.first.path!;

        if (_textControllerRemark.text.isEmpty) {
          _textControllerRemark.value = _textControllerRemark.value.copyWith(
            text: fresult.files.first.name,
          );
          setState(() {});
        }
      }
    } catch (err, stacktrace) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  Future<List<GroupItem>> getGroupOptions() async {
    final tcontext = Translations.of(context);
    List<GroupItem> groupOptions = [];
    List<GroupItemOptions> options = [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.meta.filter,
              onPush: () async {
                onTapFilter();
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.diversionRulesKeep,
              tips: tcontext.ispDiversionTips,
              switchValue: _keepDiversionRules,
              onSwitch: (bool value) async {
                _keepDiversionRules = value;
                setState(() {});
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.meta.profileEditTestLatencyAutoRemove,
              tips: tcontext.meta.profileEditTestLatencyAutoRemoveTips,
              switchValue: _testLatencyAutoRemove,
              onSwitch: (bool value) async {
                _testLatencyAutoRemove = value;
                setState(() {});
              })),
    ];
    groupOptions.add(GroupItem(options: options));
    return groupOptions;
  }

  void onTapFilter() async {
    _proxyFilter = await GroupHelper.showProxyFilter(context, _proxyFilter);
    setState(() {});
  }
}
