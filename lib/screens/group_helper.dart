// ignore_for_file: unused_catch_stack, empty_catches

import 'dart:async';
import 'dart:io';

import 'package:country/country.dart' as country;
import 'package:file_picker/file_picker.dart';
import 'package:karing/app/modules/remote_config.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/modules/zashboard.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_scheme_actions.dart';
import 'package:karing/app/utils/assets_utils.dart';
import 'package:karing/app/utils/auto_conf_utils.dart';
import 'package:karing/app/utils/backup_and_sync_utils.dart';
import 'package:karing/app/utils/did.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/app/utils/version_compare_utils.dart';
import 'package:karing/app/utils/zip_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/add_profile_by_import_from_file_screen.dart';
import 'package:karing/screens/add_profile_by_link_or_content_screen.dart';
import 'package:karing/screens/add_profile_by_scan_qrcode_screen.dart';
import 'package:karing/screens/backup_and_sync_auto_backup_screen.dart';
import 'package:karing/screens/backup_and_sync_icloud_screen.dart';
import 'package:karing/screens/backup_and_sync_lan_sync_screen.dart';
import 'package:karing/screens/backup_and_sync_webdav_screen.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/diversion_rule_detect_screen.dart';
import 'package:karing/screens/diversion_rules_screen.dart';
import 'package:karing/screens/dns_auto_setup_screen.dart';
import 'package:karing/screens/dns_settings_screen.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/group_screen.dart';
import 'package:karing/screens/home_tvos_screen.dart';
import 'package:karing/screens/inapp_webview_screen.dart';
import 'package:karing/screens/list_add_screen.dart';
import 'package:karing/screens/map_string_and_list_add_screen.dart';
import 'package:karing/screens/perapp_android_screen.dart';
import 'package:karing/screens/perapp_macos_screen.dart';
import 'package:karing/screens/qrcode_scan_screen.dart';
import 'package:karing/screens/region_settings_screen.dart';
import 'package:karing/screens/richtext_viewer.screen.dart';
import 'package:karing/screens/server_select_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/urltest_group_custom_screen.dart';
import 'package:karing/screens/webview_helper.dart';
import 'package:path/path.dart' as path;
import 'package:share_plus/share_plus.dart';
import 'package:tuple/tuple.dart';
import 'package:karing/app/utils/tag_gen.dart';

class GroupHelper {
  static List<GroupItemOptions> getOutlinkOptions(
      BuildContext context, String from) {
    final tcontext = Translations.of(context);
    var remoteConfig = RemoteConfigManager.getConfig();
    var remoteISPConfig = RemoteISPConfigManager.getConfig();
    String getTranffic = remoteConfig.getTranffic;

    bool isp = false;
    if (remoteISPConfig.id.isNotEmpty) {
      if (remoteISPConfig.getTranffic.isNotEmpty) {
        isp = true;
        getTranffic = remoteISPConfig.getTranffic;
      }
    }

    List<GroupItemOptions> options = [];
    options.addAll([
      if (getTranffic.isNotEmpty) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.getTranffic,
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'SSS_getTranffic',
                      parameters: {
                        "from": from,
                        "isp_id": remoteISPConfig.id.isNotEmpty
                            ? remoteISPConfig.id
                            : ""
                      },
                      repeatable: true);
                  String url = getTranffic;
                  if (!isp) {
                    url =
                        await UrlLauncherUtils.reorganizationUrlWithAnchor(url);
                  }

                  if (!context.mounted) {
                    return;
                  }
                  await WebviewHelper.loadUrl(context, url, "SSS_getTranffic",
                      title: tcontext.SettingsScreen.getTranffic);
                }))
      ],
      if (remoteConfig.tutorial.isNotEmpty) ...[
        GroupItemOptions(
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
                  await WebviewHelper.loadUrl(context, url, "SSS_tutorial",
                      title: tcontext.SettingsScreen.tutorial);
                }))
      ],
      if (remoteConfig.faq.isNotEmpty) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.faq,
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
                  await WebviewHelper.loadUrl(context, url, "SSS_faq",
                      title: tcontext.meta.faq);
                }))
      ],
      if (remoteConfig.rulesets.isNotEmpty) ...[
        GroupItemOptions(
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
                  await WebviewHelper.loadUrl(
                      context, url, "SSS_commonlyUsedRulesets",
                      title: tcontext.SettingsScreen.commonlyUsedRulesets);
                }))
      ],
    ]);
    return options;
  }

  static void showPrivacyPolicy(BuildContext context) {
    final tcontext = Translations.of(context);
    Navigator.push(
        context,
        MaterialPageRoute(
            settings: RichtextViewScreen.routSettings(),
            builder: (context) => RichtextViewScreen(
                title: tcontext.meta.privacyPolicy,
                file: AssetsUtils.privacyPolicyPath(),
                content: "")));
  }

  static Future<String> showUserAgent(
      BuildContext context, String compatible) async {
    final tcontext = Translations.of(context);
    List<String> userAgents = HttpUtils.getUserAgents();
    List<String> userAgent = compatible.split(";");
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      GroupItem options = GroupItem(options: []);
      for (var ua in userAgents) {
        options.options.add(GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: ua.trim(),
                switchValue: userAgent.contains(ua),
                onSwitch: (bool value) async {
                  if (value) {
                    if (!userAgent.contains(ua)) {
                      userAgent.add(ua);
                    }
                  } else {
                    if (userAgent.length == 1) {
                      return;
                    }
                    userAgent.remove(ua);
                  }
                })));
      }

      return [options];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("UserAgent"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.userAgent,
                  getOptions: getOptions,
                )));
    List<String> userAgentSorted = [];
    for (var ua in userAgents) {
      if (userAgent.contains(ua)) {
        userAgent.remove(ua);
        userAgentSorted.add(ua);
      }
    }
    userAgentSorted.addAll(userAgent);
    return userAgentSorted.join(";");
  }

  static Future<void> showTun(BuildContext context, String from) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      bool tunMode = await VPNService.getTunMode();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.SettingsScreen.tunMode,
          tips: tcontext.SettingsScreen.tunModeTips,
          switchValue: tunMode,
          onSwitch: (bool value) async {
            if (value && Platform.isWindows) {
              bool admin = VPNService.isRunAsAdmin();
              if (!admin) {
                await DialogUtils.showAlertDialog(
                    context, tcontext.SettingsScreen.tunModeRunAsAdmin);
                return;
              }
            }
            settingConfig.tun.enable = value;
            SettingManager.setDirty(true);
          },
        )),
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: "IP",
                text: settingConfig.tun.i4Address,
                textWidthPercent: 0.5,
                enabled: tunMode,
                onChanged: (String value) {
                  settingConfig.tun.i4Address = value;
                  SettingManager.setDirty(true);
                })),
        if (!settingConfig.novice) ...[
          GroupItemOptions(
              timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
                  name: "UDP ${tcontext.meta.timeout}",
                  duration: settingConfig.tun.udpTimeout,
                  showDays: false,
                  showHours: false,
                  showDisable: false,
                  onPicker: !tunMode
                      ? null
                      : (bool canceled, Duration? duration) async {
                          if (canceled) {
                            return;
                          }
                          if (duration != null) {
                            if (duration.inMinutes > 5) {
                              duration = const Duration(minutes: 5);
                            } else if (duration.inSeconds < 5) {
                              duration = const Duration(seconds: 5);
                            }
                          }
                          if (duration == settingConfig.tun.udpTimeout) {
                            return;
                          }

                          settingConfig.tun.udpTimeout =
                              duration ?? const Duration(seconds: 15);
                          SettingManager.setDirty(true);
                        })),
          GroupItemOptions(
              textFormFieldOptions: GroupItemTextFieldOptions(
                  name: "MTU",
                  text: settingConfig.tun.mtu.toString(),
                  textWidthPercent: 0.5,
                  enabled: tunMode,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  onChanged: (String value) {
                    settingConfig.tun.mtu = int.tryParse(value) ?? 4064;
                    SettingManager.setDirty(true);
                  })),
          GroupItemOptions(
              stringPickerOptions: GroupItemStringPickerOptions(
                  name: tcontext.SettingsScreen.tunStack,
                  selected: settingConfig.tun.stack,
                  strings: ["mixed", "system", "gvisor"],
                  onPicker: !tunMode
                      ? null
                      : (String? selected) async {
                          if (selected == null) {
                            return;
                          }
                          settingConfig.tun.stack = selected;
                          SettingManager.setDirty(true);
                        }))
        ],
        if (!settingConfig.novice && Platform.isWindows) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
            name: tcontext.SettingsScreen.tunAutoRoute,
            tips: tcontext.SettingsScreen.tunStrictRouteTips,
            switchValue: settingConfig.tun.autoRoute,
            onSwitch: !tunMode
                ? null
                : (bool value) async {
                    settingConfig.tun.autoRoute = value;
                    SettingManager.setDirty(true);
                  },
          ))
        ],
        if (!settingConfig.novice) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
            name: tcontext.SettingsScreen.tunStrictRoute,
            tips: tcontext.SettingsScreen.tunStrictRouteTips,
            switchValue: settingConfig.tun.strictRoute,
            onSwitch:
                !tunMode || (Platform.isWindows && !settingConfig.tun.autoRoute)
                    ? null
                    : (bool value) async {
                        settingConfig.tun.strictRoute = value;
                        SettingManager.setDirty(true);
                      },
          ))
        ],
        if (!settingConfig.novice && Platform.isAndroid) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.SettingsScreen.allowBypass,
                  switchValue: settingConfig.tun.allowBypass,
                  onSwitch: !tunMode
                      ? null
                      : (bool value) async {
                          settingConfig.tun.allowBypass = value;
                          SettingManager.setDirty(true);
                        }))
        ],
        if (Platform.isAndroid /*|| Platform.isMacOS*/) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.PerAppAndroidScreen.title,
                  onPush: !tunMode
                      ? null
                      : () async {
                          if (Platform.isAndroid) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    settings:
                                        PerAppAndroidScreen.routSettings(),
                                    builder: (context) =>
                                        const PerAppAndroidScreen()));
                          } else if (Platform.isMacOS) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    settings: PerAppMacosScreen.routSettings(),
                                    builder: (context) =>
                                        const PerAppMacosScreen()));
                          }
                        }))
        ],
        if (!settingConfig.novice && PlatformUtils.isMobile()) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.SettingsScreen.tunAppendHttpProxy,
                  tips: tcontext.SettingsScreen.tunAppendHttpProxyTips +
                      (Platform.isAndroid ? "(Android 10+)" : ""),
                  switchValue: settingConfig.tun.appendHttpProxy,
                  onSwitch: !tunMode
                      ? null
                      : (bool value) async {
                          settingConfig.tun.appendHttpProxy = value;
                          SettingManager.setDirty(true);
                        })),
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.tunAllowBypassHttpProxyDomain,
                  onPush: !tunMode
                      ? null
                      : () async {
                          String oldData = settingConfig
                              .tun.allowBypassHttpProxyDomains
                              .join(",");
                          List<String> chain = settingConfig
                              .tun.allowBypassHttpProxyDomains
                              .toList();
                          await Navigator.push(
                              context,
                              MaterialPageRoute(
                                  settings: ListAddScreen.routSettings(
                                      "tunAllowBypassHttpProxyDomain"),
                                  builder: (context) => ListAddScreen(
                                        title: tcontext.SettingsScreen
                                            .tunAllowBypassHttpProxyDomain,
                                        data: chain,
                                      )));
                          String newData = chain.join(",");
                          if (oldData != newData) {
                            settingConfig.tun.allowBypassHttpProxyDomains =
                                chain;
                            SettingManager.setDirty(true);
                          }
                        }))
        ],
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("TUN"),
            builder: (context) => GroupScreen(
                  title: "TUN",
                  getOptions: getOptions,
                )));
  }

  static Future<void> showHtmlBoard(BuildContext context, String from) async {
    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeUA, name: from, repeatable: true);
    ReturnResult<String> result = await Zashboard.start();
    if (result.error != null) {
      if (!context.mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, result.error!.message);
      return;
    }
    if (!context.mounted) {
      return;
    }
    final tcontext = Translations.of(context);
    await WebviewHelper.loadUrl(context, result.data!, from,
        title: tcontext.SettingsScreen.htmlBoard,
        inappWebViewOpenExternal: false);
    if (PlatformUtils.isMobile()) {
      await Zashboard.stop();
    }
  }

  static Future<ProxyFilter> showProxyFilter(
      BuildContext context, ProxyFilter filter) async {
    final tcontext = Translations.of(context);
    ProxyFilter pf = ProxyFilter();
    pf.method = filter.method;
    pf.keywordOrRegx = filter.keywordOrRegx;
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<Tuple2<String, String>> tupleStrings = [
        Tuple2(ProxyFilterMethod.all.name, tcontext.meta.all),
        Tuple2(ProxyFilterMethod.include.name, tcontext.meta.include),
        Tuple2(ProxyFilterMethod.exclude.name, tcontext.meta.exclude),
      ];
      GroupItem options = GroupItem(options: [
        GroupItemOptions(
            stringPickerOptions: GroupItemStringPickerOptions(
                name: tcontext.meta.filterMethod,
                selected: pf.method.name,
                tupleStrings: tupleStrings,
                onPicker: (String? selected) async {
                  if (selected == ProxyFilterMethod.all.name) {
                    pf.method = ProxyFilterMethod.all;
                  } else if (selected == ProxyFilterMethod.include.name) {
                    pf.method = ProxyFilterMethod.include;
                  } else if (selected == ProxyFilterMethod.exclude.name) {
                    pf.method = ProxyFilterMethod.exclude;
                  }
                })),
        if (pf.method != ProxyFilterMethod.all) ...[
          GroupItemOptions(
              textFormFieldOptions: GroupItemTextFieldOptions(
                  name: tcontext.meta.keywordOrRegx,
                  text: pf.method != ProxyFilterMethod.all
                      ? pf.keywordOrRegx
                      : "",
                  textWidthPercent: 0.6,
                  enabled: pf.method != ProxyFilterMethod.all,
                  onChanged: (String value) {
                    pf.keywordOrRegx = value.trim();
                  }))
        ],
      ]);

      return [options];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("ProxyFilter"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.filter,
                  getOptions: getOptions,
                )));

    return pf;
  }

  static Future<void> showAddProfile(
      BuildContext context, bool popGetProfile) async {
    var settingConfig = SettingManager.getConfig();
    var remoteConfig = RemoteConfigManager.getConfig();
    var remoteISPConfig = RemoteISPConfigManager.getConfig();
    Map<String, int> tagSets = {};
    for (var item in ServerManager.getConfig().items) {
      tagSets[item.remark] = 0;
    }
    var tagGen = TagGen(tags: tagSets);
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.profileAddUrlOrContent,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings:
                              AddProfileByLinkOrContentScreen.routSettings(),
                          builder: (context) =>
                              const AddProfileByLinkOrContentScreen(
                                name: null,
                                urlOrContent: "",
                              )));
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.importFromClipboard,
                onPush: () async {
                  ClipboardData? data;
                  try {
                    data = await Clipboard.getData("text/plain");
                  } catch (err) {
                    if (!context.mounted) {
                      return;
                    }
                    DialogUtils.showAlertDialog(context, err.toString(),
                        showCopy: true, showFAQ: true, withVersion: true);
                    return;
                  }
                  if (!context.mounted) {
                    return;
                  }
                  if (data == null || data.text == null || data.text!.isEmpty) {
                    return;
                  }
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings:
                              AddProfileByLinkOrContentScreen.routSettings(),
                          builder: (context) => AddProfileByLinkOrContentScreen(
                              name: null, urlOrContent: data!.text!)));
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.profileImport,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings:
                              AddProfileByImportFromFileScreen.routSettings(),
                          builder: (context) =>
                              const AddProfileByImportFromFileScreen(
                                  title: "",
                                  type: SubscriptionLinkType.unknown)));
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.qrcodeScan,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings:
                              AddProfileByScanQrcodeScanScreen.routSettings(),
                          builder: (context) =>
                              const AddProfileByScanQrcodeScanScreen())).then(
                      (value) {
                    if ((value != null) && (value.qrcode != null)) {
                      if (!context.mounted) {
                        return;
                      }
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: AddProfileByLinkOrContentScreen
                                  .routSettings(),
                              builder: (context) =>
                                  AddProfileByLinkOrContentScreen(
                                      name: null,
                                      urlOrContent: value.qrcode!)));
                    }
                  });
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.custom,
                onPush: () async {
                  String? text = await DialogUtils.showTextInputDialog(
                      context, tcontext.meta.custom, "", null, null, null,
                      (text) {
                    text = text.trim();
                    if (text.isEmpty) {
                      DialogUtils.showAlertDialog(
                          context, tcontext.meta.remarkCannotEmpty);
                      return false;
                    }
                    if (text.length > kRemarkMaxLength) {
                      DialogUtils.showAlertDialog(
                          context, tcontext.meta.remarkTooLong);
                      return false;
                    }
                    if (ServerManager.hasGroupByRemark(text)) {
                      DialogUtils.showAlertDialog(
                          context, tcontext.meta.remarkExist);
                      return false;
                    }
                    return true;
                  });
                  if (text == null) {
                    return;
                  }
                  if (!context.mounted) {
                    return;
                  }

                  ServerManager.addLocalCustomConfig(text);
                })),
        if (!Platform.isIOS &&
            !Platform.isMacOS &&
            !RemoteConfigManager.getConfig().nowarp.contains(
                SettingManager.getConfig().regionCode.toLowerCase())) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "WARP",
                  onPush: () async {
                    DialogUtils.showLoadingDialog(context, text: "");
                    List<String> urls = [];
                    for (int i = 0; i < 5; ++i) {
                      urls.add(
                          "warp://auto?ifp=8-15&ifps=40-100&ifpd=20-250#Warp_$i");
                    }
                    var err = await ServerManager.addRemoteConfig(
                        "",
                        tagGen.gen("WARP"),
                        urls.join("\n"),
                        SubscriptionLinkType.v2ray,
                        "",
                        ProxyFilter(),
                        [],
                        false,
                        false,
                        false,
                        ProxyStrategy.preferProxy,
                        null);
                    if (!context.mounted) {
                      return;
                    }
                    Navigator.pop(context);
                    if (err != null) {
                      DialogUtils.showAlertDialog(context, err.message,
                          showCopy: true, showFAQ: true, withVersion: true);
                    } else {
                      DialogUtils.showAlertDialog(
                          context, tcontext.meta.profileAddWrapSuccess);
                    }
                  }))
        ],
      ];
      var backup = GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: tcontext.meta.backupAndSync,
          onPush: () async {
            GroupHelper.showBackupAndSync(context);
          },
        )),
      ]);
      List<GroupItem> items = [
        GroupItem(
            options: GroupHelper.getOutlinkOptions(context, "showAddProfile"))
      ];

      RemoteConfigGetProfile? profile =
          remoteConfig.getProfileByRegionCode(settingConfig.regionCode);
      if (profile != null) {
        if (remoteISPConfig.id.isEmpty ||
            (remoteISPConfig.id.isNotEmpty && remoteISPConfig.getProfile)) {
          items.add(GroupItem(options: [
            GroupItemOptions(
                pushOptions: GroupItemPushOptions(
                    name: tcontext.meta.getProfile,
                    onPush: () async {
                      onTapGetProfile(context, tcontext.meta.getProfile,
                          profile.url, remoteISPConfig.id);
                    })),
          ]));
        }
      }

      items.addAll([GroupItem(options: options), backup]);
      return items;
    }

    Future<void> Function(BuildContext context)? onFirstLayout;

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("addProfile"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.addProfile,
                  getOptions: getOptions,
                  onFirstLayout: onFirstLayout,
                )));
  }

  static Future<void> showDns(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      List<Tuple2<String, String>> tupleStrings = [
        Tuple2(SettingConfigItemDNSProxyResolveMode.fakeip.name,
            tcontext.dnsProxyResolveMode.fakeip),
        Tuple2(SettingConfigItemDNSProxyResolveMode.proxy.name,
            tcontext.dnsProxyResolveMode.proxy),
        Tuple2(SettingConfigItemDNSProxyResolveMode.direct.name,
            tcontext.dnsProxyResolveMode.direct),
      ];

      List<GroupItemOptions> options0 = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: "TUN HijackDNS",
          tips: tcontext.SettingsScreen.tunHijackTips,
          switchValue: settingConfig.tun.hijackDns,
          onSwitch: (bool value) async {
            settingConfig.tun.hijackDns = value;
            SettingManager.setDirty(true);
          },
        )),
      ];

      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: tcontext.meta.staticIP,
          onPush: () async {
            onTapDNSStaticIP(context);
          },
        )),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.inboundDomainResolve,
                tips: tcontext.SettingsScreen.inboundDomainResolveTips(
                    p: settingConfig.proxy.mixedRulePort),
                switchValue: settingConfig.dns.enableInboundDomainResolve,
                onSwitch: !settingConfig.tun.hijackDns
                    ? null
                    : (bool value) async {
                        settingConfig.dns.enableInboundDomainResolve = value;
                        SettingManager.setDirty(true);
                      }))
      ];
      List<GroupItemOptions> options2 = [
        if (!settingConfig.novice) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.dnsTestDomain,
                  text: SettingManager.getConfig().dns.testDomain,
                  textWidthPercent: 0.5,
                  onPush: () async {
                    String? text = await DialogUtils.showTextInputDialog(
                        context,
                        tcontext.SettingsScreen.dnsTestDomain,
                        SettingManager.getConfig().dns.testDomain,
                        null,
                        null,
                        null, (text) {
                      text = text.trim();
                      if (text.isEmpty) {
                        return false;
                      }

                      if (!NetworkUtils.isDomain(text, false)) {
                        DialogUtils.showAlertDialog(context,
                            tcontext.SettingsScreen.dnsTestDomainInvalid);
                        return false;
                      }
                      return true;
                    });
                    if (text == null) {
                      return;
                    }
                    SettingManager.getConfig().dns.testDomain = text;
                    SettingManager.setDirty(true);
                    SettingManager.saveConfig();
                  }))
        ],
      ];
      List<GroupItemOptions> options3 = [
        GroupItemOptions(
            timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
                name: "TTL",
                duration: settingConfig.dns.ttl,
                showDisable: false,
                onPicker: (bool canceled, Duration? duration) async {
                  if (canceled) {
                    return;
                  }
                  if (duration == null) {
                    return;
                  }
                  if (duration == settingConfig.dns.ttl) {
                    return;
                  }
                  if (duration.inDays > 365) {
                    duration = const Duration(days: 365);
                  }
                  if (duration.inSeconds < 5) {
                    duration = const Duration(seconds: 5);
                  }

                  settingConfig.dns.ttl = duration;
                  SettingManager.setDirty(true);
                  SettingManager.saveConfig();
                }))
      ];
      List<GroupItemOptions> options4 = [
        if (!settingConfig.novice) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.SettingsScreen.dnsEnableRule,
                  switchValue: settingConfig.dns.enableRule,
                  tips: tcontext.SettingsScreen.dnsEnableRuleTips,
                  onSwitch: !settingConfig.tun.hijackDns
                      ? null
                      : (bool value) async {
                          settingConfig.dns.enableRule = value;
                          SettingManager.setDirty(true);
                        })),
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.SettingsScreen.dnsEnableClientSubnet,
                  switchValue: settingConfig.dns.enableClientSubnet,
                  onSwitch: !settingConfig.tun.hijackDns
                      ? null
                      : (bool value) async {
                          settingConfig.dns.enableClientSubnet = value;
                          SettingManager.setDirty(true);
                        }))
        ],
        GroupItemOptions(
            stringPickerOptions: GroupItemStringPickerOptions(
                name: tcontext.SettingsScreen.dnsEnableProxyResolveMode,
                tips: tcontext.dnsProxyResolveModeTips,
                selected: settingConfig.dns.proxyResolveMode.name,
                textWidthPercent: 0.5,
                tupleStrings: tupleStrings,
                onPicker: !settingConfig.tun.hijackDns && !settingConfig.novice
                    ? null
                    : (String? selected) async {
                        if (selected == null ||
                            selected ==
                                settingConfig.dns.proxyResolveMode.name) {
                          return;
                        }
                        if (selected ==
                            SettingConfigItemDNSProxyResolveMode.proxy.name) {
                          settingConfig.dns.proxyResolveMode =
                              SettingConfigItemDNSProxyResolveMode.proxy;
                        } else if (selected ==
                            SettingConfigItemDNSProxyResolveMode.direct.name) {
                          settingConfig.dns.proxyResolveMode =
                              SettingConfigItemDNSProxyResolveMode.direct;
                        } else if (selected ==
                            SettingConfigItemDNSProxyResolveMode.fakeip.name) {
                          settingConfig.dns.proxyResolveMode =
                              SettingConfigItemDNSProxyResolveMode.fakeip;
                        } else {
                          settingConfig.dns.proxyResolveMode =
                              SettingConfigItemDNSProxyResolveMode.proxy;
                        }
                        SettingManager.setDirty(true);
                      })),
      ];
      List<GroupItemOptions> options5 = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.server,
                textWidthPercent: 0.5,
                onPush: () async {
                  onTapDNSServer(context);
                }))
      ];

      if (settingConfig.novice) {
        return [
          GroupItem(options: options2),
          GroupItem(options: options4),
          GroupItem(options: options5),
        ];
      }
      return [
        GroupItem(options: options0),
        GroupItem(options: options1),
        GroupItem(options: options2),
        GroupItem(options: options3),
        GroupItem(options: options4),
        GroupItem(options: options5),
      ];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("dns"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.dns,
                  getOptions: getOptions,
                )));
  }

  static Future<void> showDeversion(BuildContext context) async {
    final tcontext = Translations.of(context);
    var settingConfig = SettingManager.getConfig();
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      country.Country currentCountry =
          SettingManager.getConfig().currentCountry();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.RegionSettingsScreen.title,
                text: currentCountry.isoShortNameByLocale[
                    SettingConfig.languageTagForCountry()],
                onPush: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: RegionSettingsScreen.routSettings(),
                          builder: (context) => const RegionSettingsScreen(
                                canPop: true,
                                canGoBack: true,
                                nextText: null,
                              )));
                })),
      ];

      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: "Rule Set",
                onPush: () async {
                  await onTapRuleset(context);
                })),
      ];
      Set<String> allOutboundsTags = {};
      VPNService.getOutboundsWithoutUrltest(allOutboundsTags, null, null);
      Set<String> invalidOutbounds = {};
      String frontProxy = "";
      if (settingConfig.frontProxy.isNotEmpty) {
        for (var f in settingConfig.frontProxy) {
          if (!allOutboundsTags.contains(f)) {
            invalidOutbounds.add(f);
          }
        }
        frontProxy = settingConfig.frontProxy.length == 1
            ? settingConfig.frontProxy[0]
            : "${settingConfig.frontProxy[0]}...";
      }
      List<GroupItemOptions> options2 = [
        if (!settingConfig.novice) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.frontProxy,
                  tips: tcontext.SettingsScreen.frontProxyTips(
                      p: tcontext.outboundRuleMode.currentSelected),
                  text: frontProxy,
                  textStyle: TextStyle(
                    fontFamily: Platform.isWindows ? 'Emoji' : null,
                    color: invalidOutbounds.isNotEmpty ? Colors.red : null,
                  ),
                  onPush: () async {
                    String oldData = settingConfig.frontProxy.join(",");
                    List<String> chain = settingConfig.frontProxy.toList();
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: ListAddScreen.routSettings("frontProxy"),
                            builder: (context) => ListAddScreen(
                                title: tcontext.meta.server,
                                data: chain,
                                invalidData: invalidOutbounds,
                                onTapAdd: () async {
                                  ProxyConfig? result = await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          settings:
                                              ServerSelectScreen.routSettings(),
                                          builder: (context) =>
                                              ServerSelectScreen(
                                                singleSelect:
                                                    ServerSelectScreenSingleSelectedOption(
                                                  selectedServer: ProxyConfig(),
                                                  showNone: false,
                                                  showAutoSelect: false,
                                                  showUrltestGroup: false,
                                                  showFav: false,
                                                  showRecommend: false,
                                                  showRecent: false,
                                                  showTranffic: false,
                                                  showUpdate: false,
                                                ),
                                                multiSelect: null,
                                              )));
                                  if (result == null ||
                                      result.groupid.isEmpty) {
                                    return null;
                                  }

                                  return result.tag;
                                })));
                    String newData = chain.join(",");
                    if (oldData != newData) {
                      settingConfig.frontProxy = chain;
                      SettingManager.setDirty(true);
                    }
                  }))
        ],
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.urlTestCustomGroup,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: UrlTestGroupCustomScreen.routSettings(),
                          builder: (context) =>
                              const UrlTestGroupCustomScreen()));
                })),
      ];
      List<GroupItemOptions> options3 = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.diversionRules,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: DiversionRulesScreen.routSettings(),
                          builder: (context) => const DiversionRulesScreen()));
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.DiversionRuleDetectScreen.title,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: DiversionRuleDetectScreen.routSettings(),
                          builder: (context) =>
                              const DiversionRuleDetectScreen()));
                })),
      ];

      return [
        GroupItem(options: options),
        GroupItem(options: options1),
        GroupItem(options: options2),
        GroupItem(options: options3),
      ];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("diversion"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.diversion,
                  getOptions: getOptions,
                )));
  }

  static Future<void> onTapRuleset(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.rulesetGeoSite,
                onPush: () async {
                  await onTapGeoSite(context);
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.rulesetGeoIp,
                onPush: () async {
                  await onTapGeoIP(context);
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.rulesetAcl,
                onPush: () async {
                  await onTapAcl(context);
                })),
      ];
      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.rulesetDirectDownlad,
                onPush: () async {
                  await onTapRuleSetDirectDownload(context);
                })),
      ];

      return [GroupItem(options: options), GroupItem(options: options1)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("Rule Set"),
            builder: (context) => GroupScreen(
                  title: "Rule Set",
                  getOptions: getOptions,
                )));
  }

  static Future<void> onTapGeoSite(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      var remoteConfig = RemoteConfigManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.meta.enable,
                switchValue: settingConfig.ruleSets.enableGeoSite,
                onSwitch: (bool value) async {
                  settingConfig.ruleSets.enableGeoSite = value;
                  SettingManager.setDirty(true);
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.autoAppendRegion,
                switchValue: settingConfig.ruleSets.autoAppendRegionGeoSite,
                onSwitch: (bool value) async {
                  settingConfig.ruleSets.autoAppendRegionGeoSite = value;
                  SettingManager.setDirty(true);
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.useRomoteRes,
                switchValue: settingConfig.ruleSets.useRemoteGeoSite,
                tips: remoteConfig.geosite,
                onSwitch: (bool value) async {
                  settingConfig.ruleSets.useRemoteGeoSite = value;
                  SettingManager.setDirty(true);
                })),
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("rulesetGeoSite"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.rulesetGeoSite,
                  getOptions: getOptions,
                )));
  }

  static Future<void> onTapGeoIP(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      var remoteConfig = RemoteConfigManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.meta.enable,
                switchValue: settingConfig.ruleSets.enableGeoIp,
                onSwitch: (bool value) async {
                  settingConfig.ruleSets.enableGeoIp = value;
                  SettingManager.setDirty(true);
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.autoAppendRegion,
                switchValue: settingConfig.ruleSets.autoAppendRegionGeoIp,
                onSwitch: (bool value) async {
                  settingConfig.ruleSets.autoAppendRegionGeoIp = value;
                  SettingManager.setDirty(true);
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.useRomoteRes,
                switchValue: settingConfig.ruleSets.useRemoteGeoIp,
                tips: remoteConfig.geoip,
                onSwitch: (bool value) async {
                  settingConfig.ruleSets.useRemoteGeoIp = value;
                  SettingManager.setDirty(true);
                })),
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("rulesetGeoIp"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.rulesetGeoIp,
                  getOptions: getOptions,
                )));
  }

  static Future<void> onTapAcl(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      var remoteConfig = RemoteConfigManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.meta.enable,
                switchValue: settingConfig.ruleSets.enableAcl,
                onSwitch: (bool value) async {
                  settingConfig.ruleSets.enableAcl = value;
                  SettingManager.setDirty(true);
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.useRomoteRes,
                switchValue: settingConfig.ruleSets.useRemoteAcl,
                tips: remoteConfig.acl,
                onSwitch: (bool value) async {
                  settingConfig.ruleSets.useRemoteAcl = value;
                  SettingManager.setDirty(true);
                })),
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("rulesetAcl"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.rulesetAcl,
                  getOptions: getOptions,
                )));
  }

  static Future<void> onTapRuleSetDirectDownload(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [];
      List<String> hosts = [];
      var remoteConfig = RemoteConfigManager.getConfig();
      List<String> geoUrls = [remoteConfig.geosite, remoteConfig.geoip];
      for (var url in geoUrls) {
        Uri? uri = Uri.tryParse(url);
        if (uri != null && uri.host.isNotEmpty && !hosts.contains(uri.host)) {
          hosts.add(uri.host);
        }
      }
      var rulesets = ServerManager.getDiversionGroupConfig().ruleSetItems;
      for (var rs in rulesets) {
        Uri? uri = Uri.tryParse(rs.url!);
        if (uri != null && uri.host.isNotEmpty && !hosts.contains(uri.host)) {
          hosts.add(uri.host);
        }
      }
      hosts.sort((a, b) => a.compareTo(b));
      for (var host in hosts) {
        options.add(GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: host,
                switchValue:
                    ServerManager.getUse().rulesetDirectDownload.contains(host),
                onSwitch: (bool value) async {
                  var use = ServerManager.getUse();
                  if (value) {
                    use.rulesetDirectDownload.add(host);
                  } else {
                    use.rulesetDirectDownload.remove(host);
                  }
                  ServerManager.setDirty(true);
                })));
      }
      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("rulesetDirectDownlad"),
            builder: (context) => GroupScreen(
                  title: tcontext.SettingsScreen.rulesetDirectDownlad,
                  getOptions: getOptions,
                )));
    if (ServerManager.getDirty()) {
      ServerManager.saveUse();
    }
  }

  static Future<void> onTapGetProfile(
      BuildContext context, String title, String url, String ispId) async {
    Uri? uri = Uri.tryParse(url);
    if (uri == null) {
      return;
    }
    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeUA,
        name: 'get_profile',
        parameters: {"title": title, "url": url, "isp_id": ispId},
        repeatable: true);

    var remoteConfig = RemoteConfigManager.getConfig();
    if (RemoteConfig.isSelfHost(url, remoteConfig.host)) {
      url = await UrlLauncherUtils.reorganizationUrlWithAnchor(url);
    }

    if (!context.mounted) {
      return;
    }
    await InAppWebViewScreen.makeSureEnvironmentCreated();
    if (!context.mounted) {
      return;
    }
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: InAppWebViewScreen.routSettings("get_profile"),
            builder: (context) => InAppWebViewScreen(
                  title: title,
                  url: url,
                  showGoBackGoForward: true,
                  setJSWindowObject: true,
                )));
  }

  static Future<void> showBackupAndSync(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        if (Platform.isIOS || Platform.isMacOS) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.meta.iCloud,
                  onPush: () async {
                    onTapiCloud(context);
                  }))
        ],
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.webdav,
                onPush: () async {
                  onTapWebdav(context);
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.lanSync,
                onPush: () async {
                  onTapLanSync(context);
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.importAndExport,
                onPush: () async {
                  onTapImportExport(context);
                }))
      ];
      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.autoBackup,
                onPush: () async {
                  onTapAutoBackup(context);
                })),
      ];
      return [GroupItem(options: options), GroupItem(options: options1)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("backupAndSync"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.backupAndSync,
                  getOptions: getOptions,
                )));
  }

  static Future<void> onTapiCloud(BuildContext context) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            settings: BackupAndSyncIcloudScreen.routSettings(),
            builder: (context) => const BackupAndSyncIcloudScreen()));
  }

  static Future<void> onTapWebdav(BuildContext context) async {
    Navigator.push(
        context,
        MaterialPageRoute(
            settings: BackupAndSyncWebdavScreen.routSettings(),
            builder: (context) => const BackupAndSyncWebdavScreen()));
  }

  static Future<void> onTapLanSyncSendTo(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.qrcode,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: BackupAndSyncLanSyncScreen.routSettings(),
                          builder: (context) => BackupAndSyncLanSyncScreen(
                              title: tcontext.meta.send, syncUpload: false)));
                })),
        if (PlatformUtils.isMobile()) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.meta.qrcodeScan,
                  onPush: () async {
                    onTapSyncByScanQRcode(context, true);
                  }))
        ],
      ];
      return [GroupItem(options: options)];
    }

    if (!context.mounted) {
      return;
    }
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("send"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.send,
                  getOptions: getOptions,
                )));
  }

  static Future<void> onTapLanSyncReceiveFrom(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.qrcode,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: BackupAndSyncLanSyncScreen.routSettings(),
                          builder: (context) => BackupAndSyncLanSyncScreen(
                              title: tcontext.meta.receive, syncUpload: true)));
                })),
        if (PlatformUtils.isMobile()) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.meta.qrcodeScan,
                  onPush: () async {
                    onTapSyncByScanQRcode(context, false);
                  }))
        ],
      ];
      return [GroupItem(options: options)];
    }

    if (!context.mounted) {
      return;
    }
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("receive"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.receive,
                  getOptions: getOptions,
                )));
  }

  static Future<void> onTapLanSync(BuildContext context) async {
    final tcontext = Translations.of(context);

    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.send,
                onPush: () async {
                  onTapLanSyncSendTo(context);
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.receive,
                onPush: () async {
                  onTapLanSyncReceiveFrom(context);
                })),
      ];
      return [GroupItem(options: options)];
    }

    if (!context.mounted) {
      return;
    }
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("BackupAndSyncLanSyncScreen"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.lanSync,
                  getOptions: getOptions,
                )));
  }

  static Future<Set<String>?> showImportConfirmDialog(
      BuildContext context, String zipPath) async {
    if (!context.mounted) {
      return null;
    }
    var result = await ZipUtils.list(zipPath);
    bool hasISP = false;
    if (result.error == null) {
      hasISP = result.data!.contains(PathUtils.remoteISPConfigFileName());
    }
    if (!context.mounted) {
      return null;
    }
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    Set<String> whiteList = {};
    bool myprofiles = true;
    bool diversion = true;
    bool settings = true;
    bool isp = true;
    Future<List<GroupItem>> getGroupOptions(StateSetter setState) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.meta.myProfiles,
                switchValue: myprofiles,
                onSwitch: (bool value) async {
                  myprofiles = value;
                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.meta.diversion,
                switchValue: diversion,
                onSwitch: (bool value) async {
                  diversion = value;
                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.meta.setting,
                switchValue: settings,
                onSwitch: (bool value) async {
                  settings = value;
                  setState(() {});
                })),
        if (hasISP) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.meta.isp,
                  switchValue: isp,
                  onSwitch: (bool value) async {
                    isp = value;
                    setState(() {});
                  }))
        ],
      ];
      return [GroupItem(options: options)];
    }

    bool? ok = await showDialog<bool>(
        context: context,
        routeSettings: const RouteSettings(name: "showImportConfirmDialog"),
        barrierDismissible: false,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (stfContext, stfSetState) {
            return SimpleDialog(
              title: Text(
                tcontext.SettingsScreen.rewriteConfirm,
                style: const TextStyle(
                  fontSize: ThemeConfig.kFontSizeListSubItem,
                ),
              ),
              children: [
                FutureBuilder(
                  future: getGroupOptions(stfSetState),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<GroupItem>> snapshot) {
                    List<GroupItem> data =
                        snapshot.hasData ? snapshot.data! : [];
                    return SizedBox(
                        width: windowSize.width,
                        child: Column(
                            children:
                                GroupItemCreator.createGroups(context, data)));
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Text(tcontext.meta.ok),
                      onPressed: () {
                        if (!context.mounted) {
                          return;
                        }

                        Navigator.pop(context, true);
                      },
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    ElevatedButton(
                      child: Text(tcontext.meta.cancel),
                      onPressed: () {
                        if (!context.mounted) {
                          return;
                        }
                        Navigator.pop(context, false);
                      },
                    ),
                  ],
                )
              ],
            );
          });
        });
    if (ok != true) {
      return null;
    }
    if (myprofiles) {
      whiteList.add(PathUtils.subscribeFileName());
    }
    if (diversion) {
      whiteList.add(PathUtils.diversionGroupFileName());
      whiteList.add(PathUtils.subscribeUseFileName());
    }
    if (settings) {
      whiteList.add(PathUtils.settingFileName());
    }
    if (isp) {
      whiteList.add(PathUtils.remoteISPConfigFileName());
    }

    return whiteList;
  }

  static Future<ReturnResultError?> restoreBackupFromUrl(
      BuildContext context, String url) async {
    Uri? downloadUri = Uri.tryParse(url);
    if (downloadUri == null) {
      return ReturnResultError("invalid URL: $url");
    }
    if (!context.mounted) {
      return null;
    }
    final tcontext = Translations.of(context);
    bool? ok = await DialogUtils.showConfirmDialog(
        context, tcontext.SettingsScreen.rewriteConfirm);
    if (ok != true) {
      return null;
    }
    if (!context.mounted) {
      return null;
    }
    DialogUtils.showLoadingDialog(context, text: "");
    String dir = await PathUtils.cacheDir();
    String filePath = path.join(dir, BackupAndSyncUtils.getZipFileName());
    var result = await HttpUtils.httpDownload(
        downloadUri, filePath, null, null, const Duration(seconds: 10));

    if (!context.mounted) {
      return null;
    }
    Navigator.pop(context);
    if (result.error != null) {
      DialogUtils.showAlertDialog(context, result.error!.message,
          showCopy: true, showFAQ: true, withVersion: true);
      return ReturnResultError(result.error!.message);
    }
    await backupRestoreFromZip(context, filePath, confirm: false);
    await FileUtils.deletePath(filePath);
    return null;
  }

  static Future<void> backupRestoreFromZip(BuildContext context, String zipPath,
      {bool confirm = false}) async {
    if (!context.mounted) {
      return;
    }
    final tcontext = Translations.of(context);
    Set<String>? whiteList;
    if (confirm) {
      whiteList = await showImportConfirmDialog(context, zipPath);
    } else {
      whiteList = {
        PathUtils.subscribeFileName(),
        PathUtils.diversionGroupFileName(),
        PathUtils.subscribeUseFileName(),
        PathUtils.settingFileName(),
        PathUtils.remoteISPConfigFileName(),
      };
    }

    if (whiteList == null || whiteList.isEmpty) {
      return;
    }

    var error =
        await ServerManager.reloadFromZip(zipPath, whiteList: whiteList);
    if (!context.mounted) {
      return;
    }
    if (error != null) {
      DialogUtils.showAlertDialog(context, error.message,
          showCopy: true, showFAQ: true, withVersion: true);
    } else {
      DialogUtils.showAlertDialog(
          context, tcontext.SettingsScreen.importSuccess);
    }
  }

  static Future<void> syncByScanQRcode(
      BuildContext context, String qrcode, bool send) async {
    final tcontext = Translations.of(context);
    if (qrcode.isEmpty) {
      return;
    }
    Uri? uri = Uri.tryParse(qrcode);
    if (uri == null || uri.scheme != AppSchemeActions.scheme()) {
      return;
    }

    if (uri.host != AppSchemeActions.syncDownloadAction() &&
        uri.host != AppSchemeActions.syncUploadAction()) {
      return;
    }

    String ips = uri.queryParameters['ips'] ?? '';
    String port = uri.queryParameters['port'] ?? '';
    String filename = uri.queryParameters['filename'] ?? '';
    if (ips.isEmpty || port.isEmpty) {
      return;
    }
    var setting = SettingManager.getConfig();
    bool started = await VPNService.getStarted();
    int? proxyPort = started ? setting.proxy.mixedDirectPort : null;

    List<String> hosts = ips.split(",");
    int targetPort = int.parse(port);
    String? targetHost;
    ReturnResult<String>? result;

    for (String host in hosts) {
      if (host.isNotEmpty) {
        if (NetworkUtils.isIpv4(host)) {
          result = await HttpUtils.httpGetRequest("http://$host:$targetPort/",
              proxyPort, null, const Duration(seconds: 3), null, null);
          if (result.error == null || result.error!.message.contains("404")) {
            targetHost = host;
            break;
          }
        }
      }
    }
    if (!context.mounted) {
      return;
    }
    if (targetHost == null) {
      if (result != null && result.error != null) {
        DialogUtils.showAlertDialog(
            context, tcontext.targetConnectFailed(p: result.error!.message),
            showCopy: true, showFAQ: true, withVersion: true);
      } else {
        DialogUtils.showAlertDialog(
            context, tcontext.targetConnectFailed(p: ips),
            showCopy: true, showFAQ: true, withVersion: true);
      }
      return;
    }
    if (!context.mounted) {
      return;
    }

    if (uri.host == AppSchemeActions.syncDownloadAction()) {
      if (send) {
        DialogUtils.showAlertDialog(
            context, tcontext.sendOrReceiveNotMatch(p: tcontext.meta.receive),
            showCopy: false, showFAQ: true, withVersion: true);
        return;
      }
      if (filename.isEmpty) {
        return;
      }

      bool? ok = await DialogUtils.showConfirmDialog(
          context, tcontext.SettingsScreen.rewriteConfirm);
      if (ok != true) {
        return;
      }
      String dir = await PathUtils.cacheDir();
      String zipPath = path.join(dir, filename);
      String url = "http://$targetHost:$targetPort/${uri.host}";
      ReturnResult<HttpHeaders> result = await HttpUtils.httpDownload(
          Uri.parse(url), zipPath, proxyPort, null, null);
      if (result.error != null) {
        if (!context.mounted) {
          return;
        }
        DialogUtils.showAlertDialog(context, result.error!.message,
            showCopy: true, showFAQ: true, withVersion: true);
        return;
      }
      if (!context.mounted) {
        return;
      }
      await backupRestoreFromZip(context, zipPath, confirm: false);
    } else if (uri.host == AppSchemeActions.syncUploadAction()) {
      if (!send) {
        DialogUtils.showAlertDialog(
            context, tcontext.sendOrReceiveNotMatch(p: tcontext.meta.send),
            showCopy: true, showFAQ: true, withVersion: true);
        return;
      }
      bool? ok = await DialogUtils.showConfirmDialog(
          context, tcontext.meta.sendConfirm);
      if (ok != true) {
        return;
      }
      String dir = await PathUtils.cacheDir();
      if (!context.mounted) {
        return;
      }
      String zipPath = path.join(dir, BackupAndSyncUtils.getZipFileName());
      ReturnResultError? error =
          await ServerManager.backupToZip(context, zipPath);
      if (error != null) {
        if (!context.mounted) {
          return;
        }
        DialogUtils.showAlertDialog(context, error.message,
            showCopy: true, showFAQ: true, withVersion: true);
        return;
      }
      String url = "http://$targetHost:$targetPort/${uri.host}";
      ReturnResultError? err =
          await HttpUtils.httpUpload(Uri.parse(url), zipPath, proxyPort, null);
      FileUtils.deletePath(zipPath);
      if (!context.mounted) {
        return;
      }
      if (err != null) {
        DialogUtils.showAlertDialog(context, err.message,
            showCopy: true, showFAQ: true, withVersion: true);
      } else {
        DialogUtils.showAlertDialog(context, tcontext.meta.done);
      }
    }
  }

  static Future<void> onTapSyncByScanQRcode(
      BuildContext context, bool send) async {
    String? qrcode = await Navigator.push(
        context,
        MaterialPageRoute(
            settings: QrcodeScanScreen.routSettings(),
            builder: (context) => const QrcodeScanScreen()));
    if (!context.mounted) {
      return;
    }
    await syncByScanQRcode(context, qrcode ?? "", send);
  }

  static Future<void> showAppleTVByScanQRCode(BuildContext context) async {
    if (!PlatformUtils.isMobile()) {
      return;
    }
    String? qrcode = await Navigator.push(
        context,
        MaterialPageRoute(
            settings: QrcodeScanScreen.routSettings(),
            builder: (context) => const QrcodeScanScreen()));
    if (qrcode == null) {
      return;
    }
    if (!context.mounted) {
      return;
    }
    await showAppleTVByUrl(context, qrcode);
  }

  static Future<ReturnResultError?> showAppleTVByUrl(
      BuildContext context, String qrcode) async {
    final tcontext = Translations.of(context);
    Uri? uri = Uri.tryParse(qrcode);
    if (uri == null || uri.host != AppSchemeActions.appleTVHost()) {
      DialogUtils.showAlertDialog(context, tcontext.appleTVUrlInvalid);
      return ReturnResultError(tcontext.appleTVUrlInvalid);
    }
    String ips = uri.queryParameters['ips'] ?? '';
    String port = uri.queryParameters['port'] ?? '';
    String uuid = uri.queryParameters['uuid'] ?? '';
    String version = uri.queryParameters['version'] ?? '';
    String cport = uri.queryParameters['cport'] ?? '';
    String secret = uri.queryParameters['secret'] ?? '';
    String coreVersion = uri.queryParameters['coreversion'] ?? '';
    int value = VersionCompareUtils.compareVersionWithLength(
        SettingConfig.kCoreVersion, coreVersion, 2);
    if (value != 0) {
      late String message;
      if (value < 0) {
        message = tcontext.appleCoreVersionNotMatch(p: "Karing");
      } else {
        message = tcontext.appleCoreVersionNotMatch(p: "AppleTV - Karing");
      }

      DialogUtils.showAlertDialog(context, message);
      return ReturnResultError(message);
    }
    if (ips.isEmpty) {
      String err =
          "${tcontext.meta.urlInvalid}: params [ips] is empty, Please make sure that your Apple TV is connected to the Internet.";
      DialogUtils.showAlertDialog(context, err);
      return ReturnResultError(err);
    }
    if (port.isEmpty) {
      String err = "${tcontext.meta.urlInvalid}: params [port] is empty";
      DialogUtils.showAlertDialog(context, err);
      return ReturnResultError(err);
    }
    if (cport.isEmpty) {
      String err = "${tcontext.meta.urlInvalid}: params [cport] is empty";
      DialogUtils.showAlertDialog(context, err);
      return ReturnResultError(err);
    }
    if (version.isEmpty) {
      String err = "${tcontext.meta.urlInvalid}: params [version] is empty";
      DialogUtils.showAlertDialog(context, err);
      return ReturnResultError(err);
    }
    if (secret.isEmpty) {
      secret = Did.newUUID();
    }
    var setting = SettingManager.getConfig();
    bool run = await VPNService.getStarted();
    int? proxyPort = run ? setting.proxy.mixedDirectPort : null;

    List<String> hosts = ips.split(",");
    int targetPort = int.parse(port);
    String? targetHost;
    ReturnResult<String>? result;

    for (String host in hosts) {
      if (host.isNotEmpty) {
        if (NetworkUtils.isIpv4(host)) {
          result = await HttpUtils.httpGetRequest("http://$host:$targetPort/",
              proxyPort, null, const Duration(seconds: 1), null, null);
          if (result.error == null || result.error!.message.contains("404")) {
            targetHost = host;
            break;
          }
        }
      }
    }

    if (!context.mounted) {
      return ReturnResultError("page unmounted");
    }
    if (targetHost == null) {
      String err = "";
      if (result != null && result.error != null) {
        err = tcontext.targetConnectFailed(p: result.error!.message);
      } else {
        err = tcontext.targetConnectFailed(p: ips);
      }
      DialogUtils.showAlertDialog(context, err,
          showCopy: true, showFAQ: true, withVersion: true);

      return ReturnResultError(err);
    }
    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeUA,
        name: 'appletv',
        repeatable: false);
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: HomeTVOSScreen.routSettings(),
            builder: (context) => HomeTVOSScreen(
                  host: targetHost!,
                  port: targetPort,
                  cport: cport,
                  uuid: uuid,
                  secret: secret,
                  version: version,
                )));
    return null;
  }

  static Future<void> onTapImportExport(BuildContext context) async {
    final tcontext = Translations.of(context);

    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.import,
                onPush: () async {
                  onTapImport(context);
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.importFromUrl,
                onPush: () async {
                  onTapImportFromUrl(context);
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.export,
                onPush: () async {
                  onTapExport(context);
                })),
      ];
      return [GroupItem(options: options)];
    }

    if (!context.mounted) {
      return;
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("importAndExport"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.importAndExport,
                  getOptions: getOptions,
                )));
  }

  static Future<void> onTapImport(BuildContext context) async {
    final tcontext = Translations.of(context);
    List<String> extensions = [BackupAndSyncUtils.getZipExtension()];
    try {
      FilePickerResult? pickResult = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: extensions,
      );
      if (!context.mounted) {
        return;
      }
      if (pickResult != null) {
        String filePath = pickResult.files.first.path!;
        String ext = path.extension(filePath).replaceAll('.', '').toLowerCase();
        if (!extensions.contains(ext)) {
          DialogUtils.showAlertDialog(
              context, tcontext.meta.fileTypeInvalid(p: ext));
          return;
        }
        if (!context.mounted) {
          return;
        }
        await GroupHelper.backupRestoreFromZip(context, filePath,
            confirm: true);
      }
    } catch (err, stacktrace) {
      if (!context.mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  static Future<void> onTapImportFromUrl(BuildContext context) async {
    final tcontext = Translations.of(context);
    String? text = await DialogUtils.showTextInputDialog(
        context, tcontext.meta.url, "", null, null, null, (text) {
      text = text.trim();

      Uri? uri = Uri.tryParse(text);
      if (uri == null || (!uri.isScheme("HTTP") && !uri.isScheme("HTTPS"))) {
        DialogUtils.showAlertDialog(context, tcontext.meta.urlInvalid);
        return false;
      }

      return true;
    });

    if (text != null) {
      if (!context.mounted) {
        return;
      }
      restoreBackupFromUrl(context, text);
    }
  }

  static Future<void> onTapExport(BuildContext context) async {
    try {
      String? filePath;
      if (PlatformUtils.isMobile()) {
        String dir = await PathUtils.cacheDir();
        filePath = path.join(dir, BackupAndSyncUtils.getZipFileName());
      } else {
        filePath = await FilePicker.platform.saveFile(
          fileName: BackupAndSyncUtils.getZipFileName(),
          lockParentWindow: true,
        );
      }

      if (filePath != null) {
        if (!context.mounted) {
          return;
        }
        ReturnResultError? error =
            await ServerManager.backupToZip(context, filePath);
        if (!context.mounted) {
          FileUtils.deletePath(filePath);
          return;
        }
        if (error != null) {
          DialogUtils.showAlertDialog(context, error.message,
              showCopy: true, showFAQ: true, withVersion: true);
          return;
        }
        if (PlatformUtils.isMobile()) {
          try {
            final box = context.findRenderObject() as RenderBox?;
            final rect =
                box != null ? box.localToGlobal(Offset.zero) & box.size : null;
            await Share.shareXFiles(
              [XFile(filePath)],
              sharePositionOrigin: rect,
            );
          } catch (err) {
            if (!context.mounted) {
              return;
            }
            DialogUtils.showAlertDialog(context, err.toString(),
                showCopy: true, showFAQ: true, withVersion: true);
          }
        }
      }
    } catch (err, stacktrace) {
      if (!context.mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  static void onTapAutoBackup(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            settings: BackupAndSyncAutoBackupScreen.routSettings(),
            builder: (context) => BackupAndSyncAutoBackupScreen()));
  }

  static Future<void> onTapDNSStaticIP(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();

      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.meta.enable,
                switchValue: settingConfig.dns.enableStaticIP,
                onSwitch: (bool value) async {
                  settingConfig.dns.enableStaticIP = value;
                  SettingManager.setDirty(true);
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.staticIP,
                onPush: () async {
                  String oldData = settingConfig.dns.staticIPs.toString();
                  List<Tuple2<String, List<String>>> hs = [];
                  settingConfig.dns.staticIPs.forEach((key, value) {
                    hs.add(Tuple2(key, value));
                  });

                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: MapStringAndListAddScreen.routSettings(),
                          builder: (context) => MapStringAndListAddScreen(
                              title: tcontext.meta.staticIP,
                              data: hs,
                              dialogTitle1: tcontext.meta.domain,
                              dialogTextHit1: "google.com",
                              dialogTitle2: tcontext.meta.ip,
                              dialogTextHit2: "93.46.8.90")));

                  settingConfig.dns.staticIPs.clear();
                  for (var h in hs) {
                    settingConfig.dns.staticIPs[h.item1] = h.item2;
                  }

                  String newData = settingConfig.dns.staticIPs.toString();
                  if (oldData != newData) {
                    settingConfig.dns.staticIPs.forEach((key, value) {
                      value.removeWhere((ele) {
                        return !NetworkUtils.isIpv4(ele) &&
                            !NetworkUtils.isIpv6(ele);
                      });
                    });
                    settingConfig.dns.staticIPs.removeWhere((key, value) {
                      return !NetworkUtils.isDomain(key, false);
                    });
                    SettingManager.setDirty(true);
                  }
                })),
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("staticIP"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.staticIP,
                  getOptions: getOptions,
                )));
  }

  static Future<void> onTapDNSServer(BuildContext context) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      bool tunMode = await VPNService.getTunMode();

      String regionCode = settingConfig.regionCode.toLowerCase();
      var resolver = settingConfig.dns.getResolverDns(regionCode, tunMode);
      var outbound = settingConfig.dns.getOutboundDns(regionCode, tunMode);
      var direct = settingConfig.dns.getDirectDns(regionCode, tunMode);
      var proxy = settingConfig.dns.getProxyDns(regionCode, tunMode);

      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.dnsTypeResolver,
                tips: tcontext.SettingsScreen.dnsTypeResolverTips,
                text: resolver.length == 1 ? resolver[0] : "${resolver[0]}...",
                textWidthPercent: 0.5,
                onPush: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: DnsSettingsScreen.routSettings(),
                          builder: (context) => DnsSettingsScreen(
                              title: tcontext.SettingsScreen.dnsTypeResolver,
                              dnsType: DNSType.dnsTypeResolver)));
                })),
        if (!settingConfig.novice) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.dnsTypeOutbound,
                  tips: tcontext.SettingsScreen.dnsTypeOutboundTips,
                  text:
                      outbound.length == 1 ? outbound[0] : "${outbound[0]}...",
                  onPush: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: DnsSettingsScreen.routSettings(),
                            builder: (context) => DnsSettingsScreen(
                                title: tcontext.SettingsScreen.dnsTypeOutbound,
                                dnsType: DNSType.dnsTypeOutbound)));
                  }))
        ],
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.dnsTypeDirect,
                tips: tcontext.SettingsScreen.dnsTypeDirectTips,
                text: direct.length == 1 ? direct[0] : "${direct[0]}...",
                textWidthPercent: 0.5,
                onPush: !settingConfig.tun.hijackDns && !settingConfig.novice
                    ? null
                    : () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                settings: DnsSettingsScreen.routSettings(),
                                builder: (context) => DnsSettingsScreen(
                                    title:
                                        tcontext.SettingsScreen.dnsTypeDirect,
                                    dnsType: DNSType.dnsTypeDirect)));
                      })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.dnsTypeProxy,
                tips: tcontext.SettingsScreen.dnsTypeProxyTips,
                text: proxy.length == 1 ? proxy[0] : "${proxy[0]}...",
                textWidthPercent: 0.5,
                onPush: !settingConfig.tun.hijackDns && !settingConfig.novice
                    ? null
                    : () async {
                        await Navigator.push(
                            context,
                            MaterialPageRoute(
                                settings: DnsSettingsScreen.routSettings(),
                                builder: (context) => DnsSettingsScreen(
                                    title: tcontext.SettingsScreen.dnsTypeProxy,
                                    dnsType: DNSType.dnsTypeProxy)));
                      })),
      ];
      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.dnsAutoSetServer,
                onPush: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: DnsAutoSetupScreen.routSettings(),
                          builder: (context) => const DnsAutoSetupScreen()));
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.dnsResetServer,
                onPush: () async {
                  settingConfig.dns.setOutboundDns([]);
                  settingConfig.dns.setDirectDns([]);
                  settingConfig.dns.setProxyDns([]);
                  settingConfig.dns.setResolverDns([]);

                  SettingManager.setDirty(true);
                })),
      ];

      return [GroupItem(options: options), GroupItem(options: options1)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("server"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.server,
                  getOptions: getOptions,
                )));
  }
}
