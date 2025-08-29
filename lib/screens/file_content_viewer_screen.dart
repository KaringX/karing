// ignore_for_file: empty_catches

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/windows_version_helper.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/sheet.dart';
import 'package:path/path.dart' as path;
import 'package:share_plus/share_plus.dart';
import 'package:tuple/tuple.dart';

class FileContentViewerScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "FileContentViewerScreen");
  }

  const FileContentViewerScreen({super.key});

  @override
  State<FileContentViewerScreen> createState() =>
      FileContentViewerScreenState();
}

class FileContentViewerScreenState
    extends LasyRenderingState<FileContentViewerScreen> {
  final String _tip = t.meta.fileChoose;
  String _fileName = "";
  String _fileContent = "";
  final _editController = TextEditingController();
  final _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
  }

  Future<String> loadContent() async {
    if (_fileName == "") {
      return "";
    }
    String filePath = await PathUtils.profileDir();
    filePath = path.join(filePath, _fileName);
    String ext = path.extension(_fileName);

    if (ext == ".log") {
      Tuple2<String, bool>? result =
          await FileUtils.readAsStringReverse(filePath, 20 * 1024, true);
      _fileContent = result == null ? "" : result.item1;
    } else {
      var file = File(filePath);
      if (await file.exists()) {
        _fileContent = await file.readAsString();
      } else {
        _fileContent = "";
      }
    }

    return _fileContent;
  }

  Map<String, bool> getFileTupleList() {
    return {
      "": true,
      PathUtils.logFileName(): true,
      PathUtils.serviceLogFileName(): true,
      PathUtils.serviceStdErrorFileName(): true,
      PathUtils.serviceCoreConfigFileName(): true,
      PathUtils.serviceConfigFileName(): true,
      PathUtils.subscribeFileName(): false,
      PathUtils.diversionGroupFileName(): false,
      PathUtils.subscribeUseFileName(): true,
      PathUtils.settingFileName(): true,
      PathUtils.cloudflareWarpFileName(): true,
      PathUtils.remoteConfigFileName(): true,
      PathUtils.remoteISPConfigFileName(): true,
      PathUtils.ispNoticeFileName(): true,
      PathUtils.autoUpdateFileName(): true,
      PathUtils.noticeFileName(): true,
      PathUtils.storageFileName(): true,
    };
  }

  List<String> getFileList() {
    List<String> list = [];
    var files = getFileTupleList();
    files.forEach((key, value) {
      list.add(key);
    });

    return list;
  }

  @override
  void dispose() {
    super.dispose();
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
                      tcontext.FileContentViewerScreen.title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: ThemeConfig.kFontWeightTitle,
                          fontSize: ThemeConfig.kFontSizeTitle),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
                      ]),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    children: [
                      DropdownButton(
                        menuWidth: 200,
                        hint: Text(_tip),
                        value: _fileName,
                        items: _buildDropButtonList(getFileList()),
                        onChanged: (String? sel) {
                          _fileName = sel ?? getFileList().first;
                          jumpToTop();
                          setState(() {});
                        },
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () async {
                          jumpToTop();
                        },
                        child: const SizedBox(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Icons.arrow_upward_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () async {
                          jumpToBottom();
                        },
                        child: const SizedBox(
                          width: 30,
                          height: 30,
                          child: Icon(
                            Icons.arrow_downward_outlined,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: FutureBuilder(
                        future: loadContent(),
                        builder: (BuildContext context,
                            AsyncSnapshot<String> snapshot) {
                          _editController.value =
                              _editController.value.copyWith(
                            text: snapshot.hasData ? snapshot.data! : "",
                          );
                          return SizedBox(
                              height: PlatformUtils.isPC()
                                  ? windowSize.height - 120
                                  : windowSize.height - 180,
                              child: TextField(
                                readOnly: true,
                                expands: true,
                                maxLines: null,
                                minLines: null,
                                controller: _editController,
                                scrollController: _scrollController,
                                style: TextStyle(
                                    fontSize: ThemeConfig.kFontSizeGroupItem),
                              ));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void jumpToTop() {
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeOut,
    );
  }

  void jumpToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 50),
      curve: Curves.easeOut,
    );
  }

  void onTapMore() {
    if (_fileName == _tip) {
      return;
    }
    bool canClear = getFileTupleList()[_fileName] == true;
    final tcontext = Translations.of(context);
    List<Widget> widgets = [
      ListTile(
        title: Text(
          tcontext.meta.refresh,
        ),
        leading: Icon(
          Icons.refresh_outlined,
        ),
        onTap: () async {
          Navigator.pop(context);
          setState(() {});
        },
      ),
      ListTile(
        title: Text(
          tcontext.meta.copy,
        ),
        leading: Icon(
          Icons.copy,
        ),
        onTap: () async {
          Navigator.pop(context);
          try {
            await Clipboard.setData(ClipboardData(text: _fileContent));
          } catch (e) {}
        },
      ),
      if (!Platform.isWindows ||
          (Platform.isWindows &&
              VersionHelper.instance.isWindows10RS5OrGreater)) ...[
        ListTile(
          title: Text(
            tcontext.meta.share,
          ),
          leading: Icon(
            Icons.share_outlined,
          ),
          onTap: () async {
            Navigator.pop(context);
            onTapShare();
          },
        ),
      ],
      if (canClear) ...[
        ListTile(
          title: Text(
            tcontext.meta.remove,
          ),
          leading: Icon(
            Icons.clear_outlined,
          ),
          onTap: () async {
            Navigator.pop(context);
            clearContent();
          },
        ),
      ],
    ];

    showSheetWidgets(context: context, widgets: widgets);
  }

  void onTapShare() async {
    String filePath = await PathUtils.profileDir();
    if (!mounted) {
      return;
    }
    filePath = path.join(filePath, _fileName);
    try {
      final box = context.findRenderObject() as RenderBox?;
      final rect =
          box != null ? box.localToGlobal(Offset.zero) & box.size : null;
      await Share.shareXFiles(
        [XFile(filePath)],
        sharePositionOrigin: rect,
      );
    } catch (err) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  void clearContent() async {
    final tcontext = Translations.of(context);

    bool? del = await DialogUtils.showConfirmDialog(
        context,
        _fileName.contains(".log")
            ? tcontext.FileContentViewerScreen.clearFileContent
            : tcontext.FileContentViewerScreen.clearFileContentTips);
    if (del == true) {
      String filePath = await PathUtils.profileDir();
      filePath = path.join(filePath, _fileName);
      var file = File(filePath);
      if (await file.exists()) {
        await file.writeAsString("", flush: true);
        setState(() {});
      }
    }
  }

  static List<DropdownMenuItem<String>> _buildDropButtonList(
      List<String> data) {
    return data.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }
}
