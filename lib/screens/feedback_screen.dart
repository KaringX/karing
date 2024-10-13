import 'dart:io';

import 'package:flutter/material.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';

class FeedbackScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "FeedbackScreen");
  }

  final String? content;
  const FeedbackScreen({super.key, this.content});

  @override
  State<FeedbackScreen> createState() => _SentryFeedbackScreenState();
}

class _SentryFeedbackScreenState extends LasyRenderingState<FeedbackScreen> {
  final _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.content != null) {
      _textController.text = widget.content!;
    }
    if (Platform.isIOS || Platform.isMacOS) {
      //SentrySDK.pauseAppHangTracking();
    }
  }

  @override
  void dispose() {
    if (Platform.isIOS || Platform.isMacOS) {
      //SentrySDK.resumeAppHangTracking();
    }
    _textController.dispose();

    super.dispose();
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
                    tcontext.feedback,
                    style: const TextStyle(
                        fontWeight: ThemeConfig.kFontWeightTitle,
                        fontSize: ThemeConfig.kFontSizeTitle),
                  ),
                  InkWell(
                    onTap: () async {
                      onTapFeedback();
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
                        child: TextField(
                          maxLines: PlatformUtils.isPC() ? 14 : 8,
                          maxLength: 500,
                          autofocus: false,
                          controller: _textController,
                          cursorColor: Colors.black,
                          //style: TextStyle(color: Colors.red),
                          decoration: InputDecoration(
                            labelText: tcontext.FeedbackScreen.content,
                            hintText: tcontext.FeedbackScreen.contentHit,
                          ),
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

  void onTapFeedback() {
    final tcontext = Translations.of(context);
    Text content = Text(_textController.text);

    if (content.data!.isEmpty) {
      DialogUtils.showAlertDialog(
          context, tcontext.FeedbackScreen.contentCannotEmpty);
      return;
    }

    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeApp,
        name: 'feedback',
        parameters: {
          "content": content.data!,
        });

    Navigator.pop(context);
  }
}
