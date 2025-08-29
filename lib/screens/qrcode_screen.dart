// ignore_for_file: empty_catches

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/qrcode_utils.dart';
import 'package:karing/app/utils/windows_version_helper.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/webview_helper.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:path/path.dart' as path;
import 'package:share_plus/share_plus.dart';

class QrcodeScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "QrcodeScreen");
  }

  final String title;
  final String content;
  final void Function()? callback;
  const QrcodeScreen({
    super.key,
    this.title = "",
    required this.content,
    this.callback,
  });

  @override
  State<QrcodeScreen> createState() => _QrcodeScreenState();
}

class _QrcodeScreenState extends LasyRenderingState<QrcodeScreen> {
  String _content = "";
  Image? _image;
  Uri? _url;
  @override
  void initState() {
    super.initState();
    _content = widget.content;
    _image = QrcodeUtils.toImage(_content).data;

    if (_content.startsWith("http://") || _content.startsWith("https://")) {
      _url = Uri.tryParse(_content);
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    double height = PlatformUtils.isPC()
        ? windowSize.height - 270
        : windowSize.height - 320;
    if (height > windowSize.width) {
      height = windowSize.width;
    }

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
                      widget.title.isEmpty
                          ? tcontext.meta.qrcode
                          : widget.title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: ThemeConfig.kFontWeightTitle,
                          fontSize: ThemeConfig.kFontSizeTitle),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Column(children: [
                          Container(
                            height: height,
                            color: Colors.white,
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: _image ??
                                    Text(
                                      tcontext.meta.qrcodeTooLong,
                                      style: const TextStyle(
                                          fontWeight:
                                              ThemeConfig.kFontWeightTitle,
                                          fontSize: ThemeConfig.kFontSizeTitle,
                                          color: Colors.red),
                                    )),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: Text(
                              _content,
                              maxLines: 2,
                              style: const TextStyle(
                                fontSize: ThemeConfig.kFontSizeListSubItem,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                        ]),
                      ),
                      const Spacer(),
                      SizedBox(
                        child: Column(children: [
                          SizedBox(
                              height: 45.0,
                              child: ElevatedButton(
                                child: Text(tcontext.meta.copyUrl),
                                onPressed: () async {
                                  try {
                                    await Clipboard.setData(
                                        ClipboardData(text: _content));
                                  } catch (e) {}
                                },
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          if (_url != null) ...[
                            SizedBox(
                                height: 45.0,
                                child: ElevatedButton(
                                  child: Text(tcontext.meta.openUrl),
                                  onPressed: () async {
                                    if (widget.callback != null) {
                                      widget.callback!();
                                    } else {
                                      await WebviewHelper.loadUrl(
                                          context, _content, "qrcode");
                                    }
                                  },
                                ))
                          ],
                          const SizedBox(
                            height: 10,
                          ),
                          if (_image != null &&
                              (!Platform.isWindows ||
                                  (Platform.isWindows &&
                                      VersionHelper.instance
                                          .isWindows10RS5OrGreater))) ...[
                            SizedBox(
                                height: 45.0,
                                child: ElevatedButton(
                                  child: Text(t.meta.qrcodeShare),
                                  onPressed: () async {
                                    String savePath = path.join(
                                        await PathUtils.cacheDir(),
                                        'qrcode_share.png');
                                    await FileUtils.deletePath(savePath);
                                    await QrcodeUtils.saveAsImage(
                                        _content, savePath);
                                    if (!context.mounted) {
                                      return;
                                    }
                                    try {
                                      final box = context.findRenderObject()
                                          as RenderBox?;
                                      final rect = box != null
                                          ? box.localToGlobal(Offset.zero) &
                                              box.size
                                          : null;
                                      await Share.shareXFiles(
                                        [XFile(savePath)],
                                        sharePositionOrigin: rect,
                                      );
                                    } catch (err) {
                                      if (!context.mounted) {
                                        return;
                                      }
                                      DialogUtils.showAlertDialog(
                                          context, err.toString(),
                                          showCopy: true,
                                          showFAQ: true,
                                          withVersion: true);
                                    }
                                  },
                                ))
                          ],
                          const SizedBox(
                            height: 50,
                          ),
                        ]),
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
