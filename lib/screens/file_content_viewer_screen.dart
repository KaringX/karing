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
  final String _tip = t.FileContentViewerScreen.chooseFile;
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
      }
    }

    return _fileContent;
  }

  List<String> getFileList() {
    return [
      "",
      PathUtils.logFileName(),
      PathUtils.serviceLogFileName(),
      PathUtils.serviceStdErrorFileName(),
      PathUtils.serviceCoreConfigFileName(),
      PathUtils.serviceConfigFileName(),
      PathUtils.subscribeFileName(),
      PathUtils.diversionGroupFileName(),
      PathUtils.subscribeUseFileName(),
      PathUtils.settingFileName(),
      PathUtils.cloudflareWarpFileName(),
      PathUtils.remoteConfigFileName(),
      PathUtils.autoUpdateFileName(),
      PathUtils.noticeFileName(),
      PathUtils.storageFileName()
    ];
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
                  Text(
                    tcontext.FileContentViewerScreen.title,
                    style: const TextStyle(
                        fontWeight: ThemeConfig.kFontWeightTitle,
                        fontSize: ThemeConfig.kFontSizeTitle),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () async {
                            onTapMore();
                          },
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.more_vert_outlined,
                              size: 30,
                            ),
                          ),
                        ),
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
                                autofocus: false,
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
    List<PopupMenuItem> items = [
      PopupMenuItem(
          value: 1,
          child: const SizedBox(
            width: 30,
            height: 30,
            child: Icon(
              Icons.refresh_outlined,
              size: 30,
            ),
          ),
          onTap: () {
            setState(() {});
          }),
      PopupMenuItem(
          value: 1,
          child: const SizedBox(
            width: 30,
            height: 30,
            child: Icon(
              Icons.copy,
              size: 30,
            ),
          ),
          onTap: () async {
            try {
              await Clipboard.setData(ClipboardData(text: _fileContent));
            } catch (e) {}
          }),
    ];
    if (!Platform.isWindows ||
        (Platform.isWindows &&
            VersionHelper.instance.isWindows10RS5OrGreater)) {
      items.add(
        PopupMenuItem(
          value: 1,
          onTap: () {
            onTapShare();
          },
          child: const SizedBox(
            width: 30,
            height: 30,
            child: Icon(
              Icons.share_outlined,
              size: 30,
            ),
          ),
        ),
      );
    }
    items.add(
      PopupMenuItem(
        value: 1,
        child: const SizedBox(
          width: 30,
          height: 30,
          child: Icon(
            Icons.clear_outlined,
            size: 30,
          ),
        ),
        onTap: () {
          clearContent();
        },
      ),
    );
    showMenu(
        context: context,
        position: const RelativeRect.fromLTRB(0.1, 0, 0, 0),
        items: items);
  }

  void onTapShare() async {
    if (!mounted) {
      return;
    }
    final box = context.findRenderObject() as RenderBox?;
    String filePath = await PathUtils.profileDir();
    filePath = path.join(filePath, _fileName);
    try {
      Share.shareXFiles([XFile(filePath)],
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
    } catch (err) {}
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
