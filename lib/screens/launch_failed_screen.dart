import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/webview_helper.dart';
import 'package:karing/screens/widgets/framework.dart';

enum StartFailedReason {
  exception(name: "exception"),
  invalidProcess(name: "invalidProcess"),
  invalidProfile(name: "invalidProfile"),
  invalidVersion(name: "invalidVersion"),
  systemVersionLow(name: "systemVersionLow"),
  invalidInstallPath(name: "invalidInstallPath");

  const StartFailedReason({required this.name});
  final String name;
}

class LaunchFailedScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "LaunchFailedScreen");
  }

  const LaunchFailedScreen(
      {super.key,
      required this.startFailedReason,
      required this.startFailedReasonDesc});

  final StartFailedReason startFailedReason;
  final String? startFailedReasonDesc;

  @override
  State<LaunchFailedScreen> createState() => _LaunchFailedScreenState();
}

class _LaunchFailedScreenState extends LasyRenderingState<LaunchFailedScreen> {
  @override
  void initState() {
    super.initState();
    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeErr,
        name: 'LFS',
        parameters: {
          "reason": widget.startFailedReason.name,
          "desc": widget.startFailedReason == StartFailedReason.exception
              ? widget.startFailedReasonDesc
              : null,
        });

    Future.delayed(const Duration(seconds: 1), () {
      String languageTag = "";

      String planguageTag = [
        PlatformDispatcher.instance.locale.languageCode,
        PlatformDispatcher.instance.locale.countryCode ?? ""
      ].join("-");
      for (var locale in AppLocale.values) {
        if (locale.languageTag == planguageTag) {
          languageTag = locale.languageTag;
          break;
        }
      }

      if (languageTag.isEmpty) {
        languageTag = "en";
      }

      for (var locale in AppLocale.values) {
        if (languageTag == locale.languageTag) {
          LocaleSettings.setLocale(locale);
          break;
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    String host = RemoteConfigManager.getConfig().host;
    String error = "";
    if (widget.startFailedReason == StartFailedReason.invalidProcess) {
      error = tcontext.LaunchFailedScreen.invalidProcess;
    } else if (widget.startFailedReason == StartFailedReason.invalidProfile) {
      error = tcontext.LaunchFailedScreen.invalidProfile;
    } else if (widget.startFailedReason == StartFailedReason.invalidVersion) {
      error = tcontext.LaunchFailedScreen.invalidVersion;
    } else if (widget.startFailedReason == StartFailedReason.systemVersionLow) {
      error = tcontext.LaunchFailedScreen.systemVersionLow;
    } else if (widget.startFailedReason ==
        StartFailedReason.invalidInstallPath) {
      error = tcontext.LaunchFailedScreen.invalidInstallPath;
    } else if (widget.startFailedReason == StartFailedReason.exception) {
      error = "Exception";
    }
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 45.0,
                        child: ElevatedButton.icon(
                          icon: const Icon(Icons.webhook_rounded),
                          label: Text(tcontext.meta.website),
                          onPressed: () async {
                            AnalyticsUtils.logEvent(
                                analyticsEventType: analyticsEventTypeUA,
                                name: 'LFS_website',
                                repeatable: true);
                            await WebviewHelper.loadUrl(
                                context, "https://$host", "LFS_website");
                          },
                        )),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: 45.0,
                        child: !Platform.isIOS
                            ? ElevatedButton(
                                child: Text(tcontext.meta.quit),
                                onPressed: () async {
                                  Biz.quit();
                                },
                              )
                            : null),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  error,
                  style: const TextStyle(
                    fontSize: ThemeConfig.kFontSizeListSubItem,
                    color: Colors.red,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.startFailedReasonDesc ?? "",
                  style: const TextStyle(
                    fontSize: ThemeConfig.kFontSizeListSubItem,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
