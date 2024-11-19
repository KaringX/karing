// ignore_for_file: unused_catch_stack, empty_catches

import 'package:flutter/material.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/group_item.dart';

class GroupOptionsHelper {
  static List<GroupItemOptions> getOutlinkOptions(
      BuildContext context, String from) {
    final tcontext = Translations.of(context);
    var remoteConfig = RemoteConfigManager.getConfig();
    var remoteISPConfig = RemoteISPConfigManager.getConfig();
    var getTranffic = remoteISPConfig.getTranffic.isNotEmpty
        ? remoteISPConfig.getTranffic
        : remoteConfig.getTranffic;
    var tutorial = remoteISPConfig.tutorial.isNotEmpty
        ? remoteISPConfig.tutorial
        : remoteConfig.tutorial;
    var faq =
        remoteISPConfig.faq.isNotEmpty ? remoteISPConfig.faq : remoteConfig.faq;
    List<GroupItemOptions> options = [];
    options.addAll([
      //PathUtils.macosDir().isEmpty && remoteConfig.getTranffic.isNotEmpty
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.SettingsScreen.getTranffic,
              onPush: () async {
                AnalyticsUtils.logEvent(
                    analyticsEventType: analyticsEventTypeUA,
                    name: 'SSS_getTranffic',
                    parameters: {"from": from},
                    repeatable: true);
                UrlLauncherUtils.reorganizationAndLoadUrl(getTranffic);
              })),
      tutorial.isNotEmpty
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.tutorial,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_tutorial',
                        parameters: {"from": from},
                        repeatable: true);
                    UrlLauncherUtils.reorganizationAndLoadUrl(tutorial);
                  }))
          : GroupItemOptions(),
      faq.isNotEmpty
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.faq,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_faq',
                        parameters: {"from": from},
                        repeatable: true);
                    UrlLauncherUtils.reorganizationAndLoadUrl(faq);
                  }))
          : GroupItemOptions(),
      remoteConfig.rulesets.isNotEmpty
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.commonlyUsedRulesets,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_commonlyUsedRulesets',
                        parameters: {"from": from},
                        repeatable: true);

                    UrlLauncherUtils.loadUrl(remoteConfig.rulesets);
                  }))
          : GroupItemOptions(),
    ]);
    return options;
  }
}
