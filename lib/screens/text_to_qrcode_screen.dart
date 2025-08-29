import 'package:flutter/material.dart';
import 'package:karing/app/utils/qrcode_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';

class TextToQrCodeScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "TextToQrCodeScreen");
  }

  const TextToQrCodeScreen({super.key});

  @override
  State<TextToQrCodeScreen> createState() => _TextToQrCodeScreenState();
}

class _TextToQrCodeScreenState extends LasyRenderingState<TextToQrCodeScreen> {
  final _textController = TextEditingController();
  Image? _image;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();

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
                      tcontext.meta.textToQrcode,
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
                          child: TextFieldEx(
                            maxLines: 6,
                            textInputAction: TextInputAction.done,
                            controller: _textController,
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
                            child: ElevatedButton(
                                child: Text(tcontext.meta.convert),
                                onPressed: () async {
                                  String text = _textController.text.trim();
                                  if (text.isEmpty) {
                                    _image = null;
                                  } else {
                                    var result = QrcodeUtils.toImage(text);
                                    if (result.error != null) {
                                      DialogUtils.showAlertDialog(
                                          context, result.error!.message,
                                          showCopy: true,
                                          showFAQ: true,
                                          withVersion: true);
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
