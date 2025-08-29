import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';

class HashStringScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "HashStringScreen");
  }

  final String? content;
  const HashStringScreen({super.key, this.content});

  @override
  State<HashStringScreen> createState() => _SentryHashStringScreenState();
}

class _SentryHashStringScreenState
    extends LasyRenderingState<HashStringScreen> {
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.content != null) {
      _textController.text = widget.content!;
    }
  }

  @override
  void dispose() {
    _textController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                      "Hash String",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: ThemeConfig.kFontWeightTitle,
                          fontSize: ThemeConfig.kFontSizeTitle),
                    ),
                  ),
                  InkWell(
                    onTap: () async {
                      onTapHashString();
                    },
                    child: const SizedBox(
                      width: 50,
                      height: 30,
                      child: Icon(
                        Icons.done_outlined,
                        size: 26,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 0),
                        child: TextFieldEx(
                          maxLines: PlatformUtils.isPC() ? 14 : 8,
                          maxLength: 500,
                          textInputAction: TextInputAction.done,
                          controller: _textController,
                          //style: TextStyle(color: Colors.red),
                        ),
                      ),
                    ]),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapHashString() async {
    if (_textController.text.isEmpty) {
      return;
    }
    try {
      await Clipboard.setData(
          ClipboardData(text: _textController.text.hashCode.toString()));
    } catch (e) {}
  }
}
