//import 'package:flutter/gestures.dart';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/sheet.dart';
import 'package:path/path.dart' as path;
import 'package:share_plus/share_plus.dart';

class RichtextViewScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "RichtextViewScreen");
  }

  final String title;
  final String file;
  final String content;
  final String contentFileExtension;
  final bool showAction;
  const RichtextViewScreen({
    super.key,
    required this.title,
    required this.file,
    required this.content,
    this.contentFileExtension = "",
    this.showAction = false,
  });

  @override
  State<RichtextViewScreen> createState() => _RichtextViewScreenState();
}

class _RichtextViewScreenState extends LasyRenderingState<RichtextViewScreen> {
  String? _content;
  //final TapGestureRecognizer _tgr1 = TapGestureRecognizer();
  //final TapGestureRecognizer _tgr2 = TapGestureRecognizer();
  @override
  void initState() {
    super.initState();
    if (widget.content.isNotEmpty) {
      _content = widget.content;
    } else if (widget.file.isNotEmpty) {
      Future.delayed(const Duration(milliseconds: 10), () async {
        try {
          _content = await rootBundle.loadString(widget.file, cache: false);
        } catch (err) {
          _content = "load ${widget.file} failed: ${err.toString()}";
        }
        if (!mounted) {
          return;
        }
        setState(() {});
      });
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
                      widget.title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: ThemeConfig.kFontWeightTitle,
                          fontSize: ThemeConfig.kFontSizeTitle),
                    ),
                  ),
                  if (widget.showAction) ...[
                    InkWell(
                      onTap: () {
                        onTapMore();
                      },
                      child: Tooltip(
                          message: tcontext.meta.more,
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.more_vert_outlined,
                              size: 26,
                            ),
                          )),
                    ),
                  ],
                  if (!widget.showAction) ...[
                    SizedBox(
                      width: 50,
                    ),
                  ]
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text.rich(
                            TextSpan(
                              text: _content ?? "",
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapMore() {
    final tcontext = Translations.of(context);
    List<Widget> widgets = [
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
            Clipboard.setData(ClipboardData(text: widget.content));
          } catch (e) {}
        },
      ),
      ListTile(
        title: Text(
          tcontext.meta.share,
        ),
        leading: Icon(
          Icons.share_outlined,
        ),
        onTap: () async {
          Navigator.pop(context);
          String fileName = "file_view_share.txt";
          if (widget.file.isNotEmpty) {
            fileName = path.basename(widget.file);
          }
          String savePath = path.join(await PathUtils.cacheDir(), fileName);
          await FileUtils.deletePath(savePath);
          try {
            await File(savePath).writeAsString(_content ?? "", flush: true);
          } catch (err) {}
          if (!mounted) {
            return;
          }
          try {
            final box = context.findRenderObject() as RenderBox?;
            final rect =
                box != null ? box.localToGlobal(Offset.zero) & box.size : null;
            await Share.shareXFiles(
              [XFile(savePath)],
              sharePositionOrigin: rect,
            );
          } catch (err) {
            if (!mounted) {
              return;
            }
            DialogUtils.showAlertDialog(context, err.toString(),
                showCopy: true, showFAQ: true, withVersion: true);
          }
        },
      ),
    ];
    showSheetWidgets(context: context, widgets: widgets);
  }
}
