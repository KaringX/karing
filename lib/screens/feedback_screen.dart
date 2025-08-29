import 'package:flutter/material.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/sentry_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';

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
  static bool _feedbacked = false;

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
                      tcontext.meta.feedback,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: ThemeConfig.kFontWeightTitle,
                          fontSize: ThemeConfig.kFontSizeTitle),
                    ),
                  ),
                  !_feedbacked
                      ? InkWell(
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
                        )
                      : const SizedBox(
                          width: 50,
                          height: 30,
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
                          decoration: InputDecoration(
                            labelText: tcontext.meta.feedbackContent,
                            hintText: tcontext.meta.feedbackContentHit,
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

    if (_textController.text.isEmpty) {
      DialogUtils.showAlertDialog(
          context, tcontext.meta.feedbackContentCannotEmpty);
      return;
    }
    _feedbacked = true;
    SentryUtils.feedback(_textController.text);
    /*AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeApp,
        name: 'feedback',
        parameters: {
          "content": content.data!,
        },
        repeatable: false);*/

    Navigator.pop(context);
  }
}
