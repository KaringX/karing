import 'dart:io';

import 'package:flutter/material.dart';

import 'package:karing/app/utils/qrcode_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';

class TextToQrCodeScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "TextToQrCodeScreen");
  }

  const TextToQrCodeScreen({super.key});

  @override
  State<TextToQrCodeScreen> createState() => _SentryTextToQrCodeScreenState();
}

class _SentryTextToQrCodeScreenState
    extends LasyRenderingState<TextToQrCodeScreen> {
  final _textController = TextEditingController();
  Image? _image;
  @override
  void initState() {
    super.initState();
    if (Platform.isIOS || Platform.isMacOS) {
      //SentrySDK.pauseAppHangTracking();
    }
  }

  @override
  void dispose() {
    _textController.dispose();

    super.dispose();
    if (Platform.isIOS || Platform.isMacOS) {
      //SentrySDK.resumeAppHangTracking();
    }
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
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
                    tcontext.TextToQrCodeScreen.title,
                    style: const TextStyle(
                        fontWeight: ThemeConfig.kFontWeightTitle,
                        fontSize: ThemeConfig.kFontSizeTitle),
                  ),
                  const SizedBox(
                    width: 50,
                    height: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 0),
                          child: TextField(
                            maxLines: 6,
                            textInputAction: TextInputAction.done,
                            autofocus: false,
                            controller: _textController,
                            cursorColor: Colors.black,
                            decoration: const InputDecoration(
                                //  labelText: tcontext.TextToQrCodeScreen.content,
                                //  hintText: tcontext.TextToQrCodeScreen.contentHit,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(18, 20, 18, 20),
                          child: SizedBox(
                            height: 45.0,
                            child: ElevatedButton.icon(
                                icon: const Icon(Icons.qr_code_outlined),
                                label:
                                    Text(tcontext.TextToQrCodeScreen.convert),
                                onPressed: () async {
                                  String text = _textController.text.trim();
                                  if (text.isEmpty) {
                                    _image = null;
                                  } else {
                                    var result = QrcodeUtils.toImage(text);
                                    if (result.error != null) {
                                      DialogUtils.showAlertDialog(
                                          context, result.error!.message);
                                    } else {
                                      _image = result.data;
                                    }
                                  }

                                  setState(() {});
                                }),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          color: Colors.white,
                          child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                              child: _image),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                      ]),
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
}
