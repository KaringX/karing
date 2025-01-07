// ignore_for_file: unused_catch_stack, empty_catches

import 'package:flutter/material.dart';
import 'package:karing/app/modules/remote_config.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/group_item.dart';
import 'package:karing/screens/webview_helper.dart';

class GroupOptionsHelper {
  static List<GroupItemOptions> getOutlinkOptions(
      BuildContext context, String from) {
    final tcontext = Translations.of(context);
    var remoteConfig = RemoteConfigManager.getConfig();
    var remoteISPConfig = RemoteISPConfigManager.getConfig();
    String getTranffic = remoteConfig.getTranffic;

    if (remoteConfig.ispBind && remoteISPConfig.id.isNotEmpty) {
      if (remoteISPConfig.getTranffic.isNotEmpty) {
        getTranffic = remoteISPConfig.getTranffic;
      }
    }

    List<GroupItemOptions> options = [];
    options.addAll([
      //PathUtils.macosDir().isEmpty && remoteConfig.getTranffic.isNotEmpty
      getTranffic.isNotEmpty
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.getTranffic,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_getTranffic',
                        parameters: {
                          "from": from,
                          "isp_id": remoteConfig.ispBind &&
                                  remoteISPConfig.id.isNotEmpty
                              ? remoteISPConfig.id
                              : ""
                        },
                        repeatable: true);
                    String url = getTranffic;
                    if (RemoteConfig.isSelfHost(url, remoteConfig.host)) {
                      url = await UrlLauncherUtils.reorganizationUrlWithAnchor(
                          url);
                    }

                    if (!context.mounted) {
                      return;
                    }
                    await WebviewHelper.loadUrl(context, url,
                        title: tcontext.SettingsScreen.getTranffic);
                  }))
          : GroupItemOptions(),
      remoteConfig.tutorial.isNotEmpty
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.tutorial,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_tutorial',
                        parameters: {"from": from},
                        repeatable: true);
                    String url =
                        await UrlLauncherUtils.reorganizationUrlWithAnchor(
                            remoteConfig.tutorial);
                    if (!context.mounted) {
                      return;
                    }
                    await WebviewHelper.loadUrl(context, url,
                        title: tcontext.SettingsScreen.tutorial);
                  }))
          : GroupItemOptions(),
      remoteConfig.faq.isNotEmpty
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.faq,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_faq',
                        parameters: {"from": from},
                        repeatable: true);
                    String url =
                        await UrlLauncherUtils.reorganizationUrlWithAnchor(
                            remoteConfig.faq);
                    if (!context.mounted) {
                      return;
                    }
                    await WebviewHelper.loadUrl(context, url,
                        title: tcontext.faq);
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

                    String url =
                        await UrlLauncherUtils.reorganizationUrlWithAnchor(
                            remoteConfig.rulesets);
                    if (!context.mounted) {
                      return;
                    }
                    await WebviewHelper.loadUrl(context, url,
                        title: tcontext.SettingsScreen.commonlyUsedRulesets);
                  }))
          : GroupItemOptions(),
    ]);
    return options;
  }
}
