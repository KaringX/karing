// ignore_for_file: use_build_context_synchronously, unused_catch_stacktrace, unused_catch_stack

import 'dart:io';
import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:karing/app/extension/colors.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/auto_update_manager.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/notice_manager.dart';
import 'package:karing/app/modules/remote_config.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/private/ads_private.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/apple_utils.dart';
import 'package:karing/app/utils/cloudflare_warp_api.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/install_referrer_utils.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_outbound.dart';
import 'package:karing/app/utils/system_scheme_utils.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/about_screen.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/feedback_screen.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/group_screen.dart';
import 'package:karing/screens/inapp_webview_screen.dart';
import 'package:karing/screens/language_settings_screen.dart';
import 'package:karing/screens/list_add_screen.dart';
import 'package:karing/screens/my_profiles_screen.dart';
import 'package:karing/screens/net_interfaces_screen.dart';
import 'package:karing/screens/qrcode_screen.dart';
import 'package:karing/screens/richtext_viewer.screen.dart';
import 'package:karing/screens/speedtest_settings_screen.dart';
import 'package:karing/screens/text_to_qrcode_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/themes.dart';
import 'package:karing/screens/urltest_settings_screen.dart';
import 'package:karing/screens/useragent_settings_screen.dart';
import 'package:karing/screens/uwp_loopback_exemption_windows_screen.dart';
import 'package:karing/screens/version_update_screen.dart';
import 'package:karing/screens/webview_helper.dart';
import 'package:karing/screens/webview_isp_helper.dart';
import 'package:karing/screens/widgets/ads_banner_widget.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:tuple/tuple.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vpn_service/vpn_service.dart';

class SettingsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "SettingsScreen");
  }

  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends LasyRenderingState<SettingsScreen> {
  bool _ispUserHide = true;
  @override
  void initState() {
    super.initState();

    NoticeManager.onEventCheck.add(onNotice);
    AutoUpdateManager.onEventCheck.add(onUpdate);
  }

  void onNotice() {
    if (mounted) {
      setState(() {});
    }
  }

  void onUpdate() {
    if (mounted) {
      setState(() {});
    }
  }

  Future<bool> getInAppRate() async {
    if (!Platform.isIOS) {
      return false;
    }
    if (AppleUtils.getAppStoreUrl().isEmpty) {
      return false;
    }
    final InAppReview inAppReview = InAppReview.instance;
    return await inAppReview.isAvailable();
  }

  Future<bool> startVPN() async {
    return await Biz.startOrRestartIfDirtyVPN(context, "SettingsScreen");
  }

  @override
  void dispose() {
    NoticeManager.onEventCheck.remove(onNotice);
    AutoUpdateManager.onEventCheck.remove(onUpdate);
    super.dispose();
    SettingManager.saveConfig();
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
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
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
                        tcontext.meta.setting,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    child: FutureBuilder(
                      future: getGroupOptionsWithTryCatch(),
                      builder: (BuildContext context,
                          AsyncSnapshot<List<GroupItem>> snapshot) {
                        List<GroupItem> data =
                            snapshot.hasData ? snapshot.data! : [];
                        List<Widget> children = [];
                        /*if (AdsPrivate.getEnable()) {
                        var settingConfig = SettingManager.getConfig();
                        var expire = DateTime.tryParse(
                            settingConfig.ads.bannerRewardExpire);
                        if (expire == null || DateTime.now().isAfter(expire)) {
                          children.add(AdsBannerWidget(
                              fixedHeight: false,
                              adWidth: windowSize.width,
                              bannerName: "banner2"));
                          children.add(const SizedBox(height: 20));
                        }
                      }*/
                        children.addAll(
                            GroupItemCreator.createGroups(context, data));
                        return Column(children: children);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<List<GroupItem>> getGroupOptionsWithTryCatch() async {
    try {
      return await getGroupOptions();
    } catch (err, stacktrace) {
      if (!mounted) {
        return [];
      }
      DialogUtils.showAlertDialog(
          context, "${err.toString()}\n${stacktrace.toString()}",
          showCopy: true, showFAQ: true, withVersion: true);
      return [];
    }
  }

  Future<List<GroupItem>> getGroupOptions() async {
    final tcontext = Translations.of(context);
    bool rateInApp = await getInAppRate();
    //bool testFlight = await InstallReferrerUtils.isTestFlight();
    bool appStore = await InstallReferrerUtils.isAppStore();
    AutoUpdateCheckVersion versionCheck = AutoUpdateManager.getVersionCheck();
    String? installer = await AutoUpdateManager.checkReplace();
    var serverConfig = ServerManager.getConfig();
    var settingConfig = SettingManager.getConfig();
    var remoteConfig = RemoteConfigManager.getConfig();
    var remoteISPConfig = RemoteISPConfigManager.getConfig();

    List<Notice> notices = NoticeManager.getNotices();
    NoticeItem? noticeItem;
    for (var notice in notices) {
      noticeItem = notice.getFirstUnread();
      if (noticeItem != null) {
        break;
      }
    }
    List<GroupItem> groupOptions = [];

    groupOptions.add(GroupItem(options: [
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.meta.novice,
              switchValue: settingConfig.novice,
              onSwitch: (bool value) async {
                settingConfig.novice = value;
                SettingManager.setDirty(true);
                setState(() {});
              })),
    ]));

    if (remoteISPConfig.id.isNotEmpty) {
      String expireTime = "";
      bool expiring = false;
      String ispUser = "";

      for (var item in serverConfig.items) {
        SubscriptionISP? isp = item.getISP();
        if (isp == null || isp.id != remoteISPConfig.id) {
          continue;
        }
        ispUser = isp.user;

        if (item.traffic != null) {
          Tuple2<bool, String> exp =
              item.traffic!.getExpireTime(settingConfig.languageTag);
          expiring = exp.item1;
          expireTime = exp.item2;
        }
        break;
      }
      groupOptions.add(GroupItem(name: tcontext.meta.isp, options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: remoteISPConfig.name,
                text: expireTime,
                textColor: expiring ? Colors.red : null,
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'SSS_isp',
                      parameters: {
                        "name": remoteISPConfig.name,
                        "id": remoteISPConfig.id
                      },
                      repeatable: true);

                  await WebviewHelper.loadUrl(
                      context, remoteISPConfig.home, "SSS_isp",
                      title: remoteISPConfig.name);
                })),
        if (ispUser.isNotEmpty) ...[
          GroupItemOptions(
              textOptions: GroupItemTextOptions(
                  name: tcontext.meta.account,
                  text: _ispUserHide ? "******" : ispUser,
                  textWidthPercent: 0.6,
                  onPush: () async {
                    if (!_ispUserHide) {
                      try {
                        await Clipboard.setData(ClipboardData(text: ispUser));
                      } catch (e) {}
                    }
                    _ispUserHide = !_ispUserHide;
                    setState(() {});
                  }))
        ],
        if (remoteISPConfig.faq.isNotEmpty) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.isp.faq(p: remoteISPConfig.name),
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_isp_faq',
                        parameters: {
                          "name": remoteISPConfig.name,
                          "id": remoteISPConfig.id
                        },
                        repeatable: true);

                    await WebviewHelper.loadUrl(
                        context, remoteISPConfig.faq, "SSS_isp_faq",
                        title: tcontext.isp.faq(p: remoteISPConfig.name));
                  }))
        ],
        if (remoteISPConfig.customerService.isNotEmpty) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.isp.customerService(p: remoteISPConfig.name),
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_isp_customerService',
                        parameters: {
                          "name": remoteISPConfig.name,
                          "id": remoteISPConfig.id
                        },
                        repeatable: true);

                    await WebviewHelper.loadUrl(
                        context,
                        remoteISPConfig.customerService,
                        "SSS_isp_customerService",
                        title: tcontext.isp
                            .customerService(p: remoteISPConfig.name));
                  }))
        ],
        if (remoteISPConfig.follow.isNotEmpty) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.isp.follow(p: remoteISPConfig.name),
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_isp_follow',
                        parameters: {
                          "name": remoteISPConfig.name,
                          "id": remoteISPConfig.id
                        },
                        repeatable: true);

                    await WebviewHelper.loadUrl(
                        context, remoteISPConfig.follow, "SSS_isp_follow",
                        title: tcontext.isp.follow(p: remoteISPConfig.name));
                  }))
        ],
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.isp.unbind(p: remoteISPConfig.name),
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'SSS_isp_unbind',
                      parameters: {
                        "name": remoteISPConfig.name,
                        "id": remoteISPConfig.id
                      },
                      repeatable: false);
                  RemoteISPConfigManager.reset(RemoteISPConfig());
                  NoticeManager.resetISP();
                  setState(() {});
                }))
      ]));
    } else {
      groupOptions.add(GroupItem(name: tcontext.meta.isp, options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.isp.bind,
                onPush: () async {
                  String url =
                      await UrlLauncherUtils.reorganizationUrlWithAnchor(
                          RemoteConfigManager.getConfig().harry);
                  if (!context.mounted) {
                    return;
                  }
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'SSS_isp_bind',
                      parameters: {
                        "name": remoteISPConfig.name,
                        "id": remoteISPConfig.id
                      },
                      repeatable: false);
                  await InAppWebViewScreen.makeSureEnvironmentCreated();
                  if (!context.mounted) {
                    return;
                  }
                  bool debug = PlatformUtils.isPC() &&
                      SettingManager.getConfig().dev.devMode;
                  await InAppWebViewScreen.setWebViewEnvironmentDebug(debug);
                  if (!context.mounted) {
                    return;
                  }
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings:
                              InAppWebViewScreen.routSettings("SSS_isp_bind"),
                          builder: (context) => InAppWebViewScreen(
                                title: tcontext.isp.bind,
                                url: url,
                                enableDebug: debug,
                                showGoBackGoForward: false,
                                setJSWindowObject: true,
                                injectJs: remoteConfig.getPanelJs(),
                                javaScriptHandlers:
                                    WebviewISPHelper.getJavaScriptHandlers(),
                                javaScriptHandlerArgument: RemoteISPConfig(),
                              )));
                  setState(() {});
                }))
      ]));
    }

    groupOptions.add(
        GroupItem(options: GroupHelper.getOutlinkOptions(context, "settings")));

    groupOptions.add(GroupItem(options: [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.meta.notice,
              reddot: noticeItem != null,
              onPush: () async {
                await onTapNotice();
              })),
      if (versionCheck.newVersion) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.hasNewVersion(
                    p: versionCheck.version),
                reddot: versionCheck.newVersion,
                reddotColor: installer != null
                    ? Colors.red
                    : Colors.red.withValues(alpha: 0.5),
                onPush: () async {
                  await onTapNewVersion();
                }))
      ],
    ]));

    if (!settingConfig.novice) {
      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.htmlBoard,
                onPush: () async {
                  bool ok = await startVPN();
                  if (!ok) {
                    return;
                  }
                  GroupHelper.showHtmlBoard(context, "SSS_htmlBoard");
                })),
        if (remoteConfig.dnsLeakDetection.isNotEmpty) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.dnsLeakDetection,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_dnsLeakDetection',
                        repeatable: true);
                    await WebviewHelper.loadUrl(context,
                        remoteConfig.dnsLeakDetection, "SSS_dnsLeakDetection",
                        title: tcontext.SettingsScreen.dnsLeakDetection);
                  }))
        ],
        if (remoteConfig.proxyLeakDetection.isNotEmpty) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.proxyLeakDetection,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_proxyLeakDetection',
                        repeatable: true);
                    if (Platform.isAndroid) {
                      //disable x-requested-with: com.nebula.karing on android
                      await UrlLauncherUtils.loadUrl(
                          remoteConfig.proxyLeakDetection);
                    } else {
                      await WebviewHelper.loadUrl(
                          context,
                          remoteConfig.proxyLeakDetection,
                          "SSS_proxyLeakDetection",
                          title: tcontext.SettingsScreen.proxyLeakDetection);
                    }
                  }))
        ],
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.textToQrcode,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: TextToQrCodeScreen.routSettings(),
                          builder: (context) => const TextToQrCodeScreen()));
                })),
        if (Platform.isWindows) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.meta.uwpExemption,
                  onPush: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: UWPLoopbackExemptionWindowsScreen
                                .routSettings(),
                            builder: (context) =>
                                const UWPLoopbackExemptionWindowsScreen()));
                  }))
        ],
      ]));

      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.userAgent,
                onPush: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: UserAgentSettingsScreen.routSettings(),
                          builder: (context) =>
                              const UserAgentSettingsScreen()));
                  setState(() {});
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.speedTestUrl,
                text: settingConfig.speedTest,
                textWidthPercent: 0.4,
                onPush: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: SpeedTestSettingsScreen.routSettings(),
                          builder: (context) =>
                              const SpeedTestSettingsScreen()));
                  setState(() {});
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.latencyTest,
                textWidthPercent: 0.4,
                onPush: () async {
                  onTapLatencyTest();
                })),
      ]));
    }

    groupOptions.add(GroupItem(options: [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.meta.addProfile,
              onPush: () async {
                onTapAddProfile();
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.meta.myProfiles,
              onPush: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: MyProfilesScreen.routSettings(),
                        builder: (context) => const MyProfilesScreen()));
              })),
    ]));

    List<Tuple2<String, String>> tupleStrings = [
      Tuple2(IPStrategy.ipv4Only.name, tcontext.meta.disable),
      Tuple2(IPStrategy.preferIPv4.name, tcontext.meta.enable),
      Tuple2(IPStrategy.preferIPv6.name, tcontext.meta.prefer),
      Tuple2(IPStrategy.ipv6Only.name, tcontext.meta.only),
    ];
    List<Tuple2<String, String>> tupleThemeStrings = [
      Tuple2(ThemeDefine.kThemeLight, tcontext.theme.light),
      Tuple2(ThemeDefine.kThemeDark, tcontext.theme.dark),
      Tuple2(ThemeDefine.kThemeSystem, tcontext.theme.auto),
    ];

    Tuple2 exist = tupleThemeStrings.firstWhere((value) {
      return value.item1 == SettingManager.getConfig().ui.theme;
    }, orElse: () {
      return Tuple2("", "");
    });
    if (exist.item1.isEmpty) {
      SettingManager.getConfig().ui.theme = tupleThemeStrings.first.item1;
    }
    groupOptions.add(GroupItem(options: [
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "IPv6",
              tips: tcontext.SettingsScreen.ipStrategyTips,
              selected: settingConfig.ipStrategy.name,
              tupleStrings: tupleStrings,
              onPicker: (String? selected) async {
                if (selected == null ||
                    selected == settingConfig.ipStrategy.name) {
                  return;
                }
                if (selected == IPStrategy.ipv4Only.name) {
                  settingConfig.ipStrategy = IPStrategy.ipv4Only;
                } else if (selected == IPStrategy.preferIPv4.name) {
                  settingConfig.ipStrategy = IPStrategy.preferIPv4;
                } else if (selected == IPStrategy.preferIPv6.name) {
                  settingConfig.ipStrategy = IPStrategy.preferIPv6;
                } else if (selected == IPStrategy.ipv6Only.name) {
                  settingConfig.ipStrategy = IPStrategy.ipv6Only;
                } else {
                  settingConfig.ipStrategy = IPStrategy.ipv4Only;
                }
                SettingManager.setDirty(true);
                setState(() {});
              })),
      if (!settingConfig.novice) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: "NTP",
                onPush: () async {
                  await onTapNTP();
                }))
      ],
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "TUN",
              onPush: () async {
                await onTapTun();
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.meta.dns,
              onPush: () async {
                await onTapDns();
              })),
      if (!settingConfig.novice) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.tls,
                onPush: () async {
                  await onTapTLS();
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: "Mux",
                onPush: () async {
                  await onTapMux();
                }))
      ],
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.meta.diversion,
              onPush: () async {
                await onTapDiversion();
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.SettingsScreen.autoSelect,
              onPush: () async {
                await onTapAutoSelect();
              })),
      if (!settingConfig.novice) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.port,
                onPush: () async {
                  await onTapPort();
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: tcontext.SettingsScreen.networkShare,
          onPush: () async {
            await onTapNetShare();
          },
        )),
      ],
    ]));

    groupOptions.add(GroupItem(options: [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "WARP",
              onPush: () async {
                onTapWarp();
              })),
    ]));

    groupOptions.add(GroupItem(options: [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
        name: tcontext.meta.backupAndSync,
        onPush: () async {
          GroupHelper.showBackupAndSync(context);
        },
      )),
    ]));

    if (PlatformUtils.isMobile()) {
      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: tcontext.meta.appleTV,
          onPush: () async {
            GroupHelper.showAppleTVByScanQRCode(context);
          },
        )),
      ]));
    }

    //
    if (PlatformUtils.isPC()) {
      groupOptions.add(GroupItem(options: [
        if (Platform.isWindows) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
            name: tcontext.SettingsScreen.hideAfterLaunch,
            switchValue: settingConfig.ui.hideAfterLaunch,
            onSwitch: (bool value) async {
              settingConfig.ui.hideAfterLaunch = value;
              setState(() {});
            },
          ))
        ],
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.SettingsScreen.autoConnectAfterLaunch,
          switchValue: settingConfig.autoConnectAfterLaunch,
          onSwitch: (bool value) async {
            settingConfig.autoConnectAfterLaunch = value;
            setState(() {});
          },
        )),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.autoSetSystemProxy,
                switchValue: settingConfig.proxy.autoSetSystemProxy,
                onSwitch: (bool value) async {
                  settingConfig.proxy.autoSetSystemProxy = value;
                  setState(() {});
                })),
        if (PlatformUtils.isPC()) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.bypassSystemProxy,
                  onPush: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: ListAddScreen.routSettings(
                                "systemProxyBypassDomain"),
                            builder: (context) => ListAddScreen(
                                  title:
                                      tcontext.SettingsScreen.bypassSystemProxy,
                                  data: settingConfig
                                      .proxy.systemProxyBypassDomain,
                                )));
                  })),
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.SettingsScreen.disconnectWhenQuit,
                  switchValue: settingConfig.proxy.disconnectWhenQuit,
                  onSwitch: (bool value) async {
                    settingConfig.proxy.disconnectWhenQuit = value;
                    setState(() {});
                  }))
        ],
      ]));
    }
    if (Platform.isWindows) {
      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.SettingsScreen.launchAtStartup,
          switchValue: await VPNService.getLaunchAtStartup(),
          onSwitch: (bool value) async {
            ReturnResultError? err = await VPNService.setLaunchAtStartup(value);
            if (err != null) {
              DialogUtils.showAlertDialog(context, err.message,
                  showCopy: true, showFAQ: true, withVersion: true);
            }
            setState(() {});
          },
        )),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.SettingsScreen.quitWhenSwitchSystemUser,
          switchValue: settingConfig.quitWhenSwitchSystemUser,
          onSwitch: (bool value) async {
            settingConfig.quitWhenSwitchSystemUser = value;
            setState(() {});
          },
        )),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: tcontext.SettingsScreen.handleScheme,
          onPush: () async {
            await onTapHandleScheme();
          },
        )),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.SettingsScreen.portableMode,
          tips: tcontext.SettingsScreen.portableModeDisableTips,
          switchValue: PathUtils.portableMode(),
          onSwitch: PathUtils.portableMode()
              ? null
              : (bool value) async {
                  if (value) {
                    onTapPortableModeOn();
                  }
                },
        )),
      ]));
    }

    //////////////////////
    if (Platform.isIOS || Platform.isMacOS) {
      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.SettingsScreen.alwayOnVPN,
          switchValue: settingConfig.alwayOn,
          onSwitch: (bool value) async {
            settingConfig.alwayOn = value;
            if (!value) {
              await FlutterVpnService.setAlwaysOn(value);
            }
            SettingManager.setDirty(true);
            setState(() {});
          },
        )),
        GroupItemOptions(
            timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
                name: tcontext.SettingsScreen.disconnectAfterSleep,
                duration: settingConfig.disconnectAfterSleep,
                showDays: false,
                showHours: true,
                showMinutes: true,
                showDisable: true,
                onPicker: (bool canceled, Duration? duration) async {
                  if (canceled) {
                    return;
                  }
                  if (duration != null) {
                    if (duration.inSeconds < 30) {
                      duration = const Duration(seconds: 30);
                    }
                    if (duration.inHours > 12) {
                      duration = const Duration(hours: 12);
                    }
                  }

                  settingConfig.disconnectAfterSleep = duration;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
      ]));

      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.removeSystemVPNConfig,
                onPush: () async {
                  bool? del = await DialogUtils.showConfirmDialog(
                      context, tcontext.meta.removeConfirm);
                  if (del == true) {
                    ReturnResultError? err = await VPNService.uninstall();
                    if (err != null) {
                      DialogUtils.showAlertDialog(context, err.message,
                          showCopy: true, showFAQ: true, withVersion: true);
                    }
                  }
                })),
      ]));
    }

    groupOptions.add(
      GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.language,
                icon: Icons.language_outlined,
                text: tcontext.locales[settingConfig.languageTag],
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: LanguageSettingsScreen.routSettings(),
                          builder: (context) => const LanguageSettingsScreen(
                              canPop: true, canGoBack: true)));
                })),
        GroupItemOptions(
            stringPickerOptions: GroupItemStringPickerOptions(
                name: tcontext.SettingsScreen.theme,
                selected: SettingManager.getConfig().ui.theme,
                tupleStrings: tupleThemeStrings,
                onPicker: (String? selected) async {
                  if (selected == null ||
                      selected == SettingManager.getConfig().ui.theme) {
                    return;
                  }

                  SettingManager.getConfig().ui.theme = selected;

                  Provider.of<Themes>(context, listen: false)
                      .setTheme(selected, true);

                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.disableFontScaler,
                tips: tcontext.SettingsScreen.restartTakesEffect,
                switchValue: settingConfig.ui.disableFontScaler,
                onSwitch: (bool value) async {
                  settingConfig.ui.disableFontScaler = value;
                  setState(() {});
                })),
        if (Platform.isAndroid) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.meta.tvMode,
                  switchValue: settingConfig.ui.tvMode,
                  onSwitch: (bool value) async {
                    settingConfig.ui.tvMode = value;
                    TextFieldEx.popupEdit = settingConfig.ui.tvMode;
                    setState(() {});
                  }))
        ],
        if (PlatformUtils.isMobile()) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.SettingsScreen.autoOrientation,
                  switchValue: settingConfig.ui.autoOrientation,
                  onSwitch: (bool value) async {
                    settingConfig.ui.autoOrientation = value;
                    if (value) {
                      SystemChrome.setPreferredOrientations([
                        DeviceOrientation.portraitUp,
                        DeviceOrientation.landscapeLeft,
                        DeviceOrientation.portraitDown,
                        DeviceOrientation.landscapeRight
                      ]);
                    } else {
                      SystemChrome.setPreferredOrientations(
                          [DeviceOrientation.portraitUp]);
                    }
                    setState(() {});
                  }))
        ],
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.homeScreen,
                onPush: () async {
                  await onTapHomeScreen();
                })),
        if (Platform.isMacOS) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.meta.hideDockIcon,
                  tips: tcontext.SettingsScreen.restartTakesEffect,
                  switchValue: settingConfig.ui.hideDockIcon,
                  onSwitch: (bool value) async {
                    settingConfig.ui.hideDockIcon = value;
                    setState(() {});
                  })),
        ],
      ]),
    );

    groupOptions.add(
      GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.resetSettings,
                onPush: () async {
                  bool? ok = await DialogUtils.showConfirmDialog(
                      context, "${tcontext.SettingsScreen.resetSettings}?");
                  if (ok == true) {
                    SettingManager.reset();
                    SettingManager.setDirty(true);
                    setState(() {});
                  }
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.cleanCache,
                onPush: () async {
                  bool started = await VPNService.getStarted();

                  await FileUtils.deletePath(await PathUtils.cacheDir(),
                      recursive: true);
                  await FileUtils.deletePath(await PathUtils.profileDataDir(),
                      recursive: true);

                  if (!started) {
                    await FileUtils.deletePath(
                        await PathUtils.cacheDBFilePath());
                    await FileUtils.deletePath(
                        await PathUtils.serviceLogFilePath());
                  }
                  if (!InAppWebViewScreen.hasActiveWebview()) {
                    String dir = await PathUtils.webviewCacheDir();
                    await FileUtils.deletePath(dir, recursive: true);
                  }
                  if (!mounted) {
                    return;
                  }

                  await DialogUtils.showAlertDialog(
                      context, tcontext.SettingsScreen.cleanCacheDone);
                })),
      ]),
    );

    bool showTestFlight =
        AppleUtils.getTestFlightUrl().isNotEmpty && (appStore == false);
    bool showAppStore = AppleUtils.getAppStoreUrl().isNotEmpty;
    if (remoteConfig.download.isNotEmpty || showTestFlight || showAppStore) {
      groupOptions.add(GroupItem(options: [
        if (showTestFlight) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.appleTestFlight,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_appleTestFlight',
                        repeatable: true);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: QrcodeScreen.routSettings(),
                            builder: (context) => QrcodeScreen(
                                content: AppleUtils.getTestFlightUrl())));
                  }))
        ],
        if (showAppStore) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.appleAppStore,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_appleAppstore',
                        repeatable: true);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: QrcodeScreen.routSettings(),
                            builder: (context) => QrcodeScreen(
                                content: AppleUtils.getAppStoreUrl())));
                  }))
        ],
        if (remoteConfig.download.isNotEmpty) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.meta.download,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_download',
                        repeatable: true);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          settings: QrcodeScreen.routSettings(),
                          builder: (context) => QrcodeScreen(
                              content: remoteConfig.download,
                              callback: () async {
                                String url = await UrlLauncherUtils
                                    .reorganizationUrlWithAnchor(
                                        remoteConfig.download);
                                await UrlLauncherUtils.loadUrl(url,
                                    mode: LaunchMode.externalApplication);
                              }),
                        ));
                  }))
        ],
      ]));
    }
    if (AdsPrivate.getEnable()) {
      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.adsRemove,
                onPush: () async {
                  onTapAdRemove();
                }))
      ]));
    }

    bool ads = PlatformUtils.isMobile() &&
        !AdsPrivate.getEnable() &&
        remoteConfig.adManualEnable;
    bool donate = !Platform.isIOS &&
        !Platform.isMacOS &&
        remoteConfig.donateUrl.isNotEmpty;
    bool showSupportUs = ads || donate;
    String rateUrl = await AppleUtils.getRateUrl();
    groupOptions.add(GroupItem(options: [
      if (remoteConfig.follow.isNotEmpty) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.follow,
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'SSS_follow',
                      repeatable: false);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: QrcodeScreen.routSettings(),
                          builder: (context) =>
                              QrcodeScreen(content: remoteConfig.follow)));
                }))
      ],
      if (remoteConfig.telegram.isNotEmpty) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.contactUs,
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'SSS_contactUs',
                      repeatable: false);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: QrcodeScreen.routSettings(),
                          builder: (context) =>
                              QrcodeScreen(content: remoteConfig.telegram)));
                }))
      ],
      if (showSupportUs) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.supportUs,
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'SSS_supportUs',
                      repeatable: false);
                  onTapSupportUS();
                }))
      ],
      if (!RemoteConfigManager.rejectAnalyticsSubmit()) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.feedback,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: FeedbackScreen.routSettings(),
                          builder: (context) => const FeedbackScreen()));
                }))
      ],
      if (rateInApp) ...[
        //https://apps.apple.com/cn/app/id1558453472?action=write-review
        //https://itunes.apple.com/cn/lookup?id=1558453472
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.rateInApp,
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'SSS_rateInApp',
                      repeatable: false);
                  final InAppReview inAppReview = InAppReview.instance;
                  inAppReview.requestReview();
                }))
      ],
      if (rateUrl.isNotEmpty) ...[
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.rateInAppStore,
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'SSS_rateInAppStore',
                      repeatable: true);
                  await WebviewHelper.loadUrl(
                      context, rateUrl, "SSS_rateInAppStore",
                      title: tcontext.SettingsScreen.rateInAppStore);
                }))
      ],
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.meta.about,
              onPush: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: AboutScreen.routSettings(),
                        builder: (context) => const AboutScreen()));
                setState(() {});
              })),
    ]));

    return groupOptions;
  }

  Future<void> onTapNotice() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [];
      List<Notice> notices = NoticeManager.getNotices();
      for (var notice in notices) {
        for (var item in notice.items) {
          options.add(GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: item.title,
                  reddot: !item.readed,
                  text: item.updateTime,
                  textWidthPercent: 0.65,
                  onPush: () async {
                    item.readed = true;
                    NoticeManager.saveConfig();
                    setState(() {});

                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_notice',
                        parameters: {"title": item.title, "isp_id": item.ispId},
                        repeatable: true);

                    if (item.url.isNotEmpty) {
                      await WebviewHelper.loadUrl(
                          context, item.url, "SSS_notice",
                          title: item.title, useInappWebViewForPC: true);
                    } else {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: RichtextViewScreen.routSettings(),
                              builder: (context) => RichtextViewScreen(
                                  title: item.title,
                                  file: "",
                                  content: item.content)));
                    }
                  })));
        }
      }

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("notice"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.notice,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapNewVersion() async {
    AutoUpdateCheckVersion versionCheck = AutoUpdateManager.getVersionCheck();
    if (!versionCheck.newVersion) {
      setState(() {});
      return;
    }
    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeUA,
        name: 'SSS_hasNewVersion',
        parameters: {"version": versionCheck.version},
        repeatable: false);
    //item-beta://testflight.apple.com/join/RLU59OsJ or https://testflight.apple.com/join/RLU59OsJ
    var remoteConfig = RemoteConfigManager.getConfig();
    String url = remoteConfig.download.isEmpty
        ? versionCheck.url
        : remoteConfig.download;
    if (AutoUpdateManager.isSupport()) {
      String? installerNew = await AutoUpdateManager.checkReplace();
      if (installerNew != null) {
        await Navigator.push(
            context,
            MaterialPageRoute(
                settings: VersionUpdateScreen.routSettings(),
                fullscreenDialog: true,
                builder: (context) => const VersionUpdateScreen(force: false)));
      } else {
        await UrlLauncherUtils.loadUrl(url,
            mode: LaunchMode.externalApplication);
      }
    } else {
      await UrlLauncherUtils.loadUrl(url, mode: LaunchMode.externalApplication);
    }
  }

  Future<void> onTapAddProfile() async {
    await GroupHelper.showAddProfile(context, false);
    setState(() {});
  }

  Future<void> onTapWarp() async {
    var settingConfig = SettingManager.getConfig();
    String license = settingConfig.warp.license;
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: "License",
                text: license,
                textWidthPercent: 0.6,
                onChanged: (String value) {
                  license = value.trim();
                })),
        /*GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: "Account",
                text: "",
                onPush: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: CloudflareWarpAccountScreen.routSettings(),
                          fullscreenDialog: true,
                          builder: (context) =>
                              const CloudflareWarpAccountScreen()));
                })),*/
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("WARP"),
            builder: (context) => GroupScreen(
                  title: "WARP",
                  getOptions: getOptions,
                  onDone: (BuildContext context) async {
                    if (!mounted) {
                      return false;
                    }
                    var settingConfig = SettingManager.getConfig();
                    if (license.isEmpty ||
                        license.length == CloudflareWarpApi.licenseLength) {
                      settingConfig.warp.license = license;
                    }

                    return true;
                  },
                )));
    setState(() {});
  }

  Future<void> onTapLatencyTest() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.url,
                text: settingConfig.urlTest,
                textWidthPercent: 0.4,
                onPush: () async {
                  await Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: UrlTestSettingsScreen.routSettings(),
                          builder: (context) => const UrlTestSettingsScreen()));
                  setState(() {});
                })),
        GroupItemOptions(
            timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
                name: tcontext.meta.timeoutDuration,
                duration: Duration(seconds: settingConfig.urlTestTimeout),
                showDays: false,
                showHours: false,
                showMinutes: false,
                showDisable: false,
                onPicker: (bool canceled, Duration? duration) async {
                  if (canceled || duration == null) {
                    return;
                  }
                  if (duration.inSeconds < 2 || duration.inSeconds > 10) {
                    duration = const Duration(seconds: 8);
                  }
                  settingConfig.urlTestTimeout = duration.inSeconds;
                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.latencyTestResolveIP,
          switchValue: settingConfig.latencyCheckResoveIP,
          onSwitch: (bool value) async {
            settingConfig.latencyCheckResoveIP = value;
            setState(() {});
          },
        )),
      ];
      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("latencyTest"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.latencyTest,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapPort() async {
    final tcontext = Translations.of(context);
    const int minPort = 2048;
    const int maxPort = 65535;
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.portSettingRule,
                text: settingConfig.proxy.mixedRulePort.toString(),
                onPush: () async {
                  int? p = await DialogUtils.showIntInputDialog(
                      context,
                      tcontext.SettingsScreen.modifyPort,
                      settingConfig.proxy.mixedRulePort,
                      minPort,
                      maxPort);

                  if (p != null) {
                    List<int> ports = [
                      //settingConfig.proxy.mixedRulePort,
                      settingConfig.proxy.mixedDirectPort,
                      settingConfig.proxy.mixedForwordPort,
                      settingConfig.proxy.controlPort,
                      settingConfig.proxy.clusterPort,
                      settingConfig.htmlBoardPort,
                    ];
                    if (ports.contains(p)) {
                      await DialogUtils.showAlertDialog(
                          context, tcontext.SettingsScreen.modifyPortOccupied);
                      return;
                    }
                    settingConfig.proxy.mixedRulePort = p;
                    SettingManager.setDirty(true);
                    setState(() {});
                  }
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.portSettingDirectAll,
                text: settingConfig.proxy.mixedDirectPort.toString(),
                onPush: () async {
                  int? p = await DialogUtils.showIntInputDialog(
                      context,
                      tcontext.SettingsScreen.modifyPort,
                      settingConfig.proxy.mixedDirectPort,
                      minPort,
                      maxPort);
                  if (p != null) {
                    List<int> ports = [
                      settingConfig.proxy.mixedRulePort,
                      //settingConfig.proxy.mixedDirectPort,
                      settingConfig.proxy.mixedForwordPort,
                      settingConfig.proxy.controlPort,
                      settingConfig.proxy.clusterPort,
                    ];
                    if (ports.contains(p)) {
                      await DialogUtils.showAlertDialog(
                          context, tcontext.SettingsScreen.modifyPortOccupied);
                      return;
                    }
                    settingConfig.proxy.mixedDirectPort = p;
                    SettingManager.setDirty(true);
                    setState(() {});
                  }
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.portSettingProxyAll,
                text: settingConfig.proxy.mixedForwordPort.toString(),
                onPush: () async {
                  int? p = await DialogUtils.showIntInputDialog(
                      context,
                      tcontext.SettingsScreen.modifyPort,
                      settingConfig.proxy.mixedForwordPort,
                      minPort,
                      maxPort);
                  if (p != null) {
                    List<int> ports = [
                      settingConfig.proxy.mixedRulePort,
                      settingConfig.proxy.mixedDirectPort,
                      //settingConfig.proxy.mixedForwordPort,
                      settingConfig.proxy.controlPort,
                      settingConfig.proxy.clusterPort,
                      settingConfig.htmlBoardPort,
                    ];
                    if (ports.contains(p)) {
                      await DialogUtils.showAlertDialog(
                          context, tcontext.SettingsScreen.modifyPortOccupied);
                      return;
                    }
                    settingConfig.proxy.mixedForwordPort = p;
                    SettingManager.setDirty(true);
                    setState(() {});
                  }
                })),
      ];
      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.portSettingControl,
                text: settingConfig.proxy.controlPort.toString(),
                onPush: () async {
                  int? p = await DialogUtils.showIntInputDialog(
                      context,
                      tcontext.SettingsScreen.modifyPort,
                      settingConfig.proxy.controlPort,
                      minPort,
                      maxPort);
                  if (p != null) {
                    List<int> ports = [
                      settingConfig.proxy.mixedRulePort,
                      settingConfig.proxy.mixedDirectPort,
                      settingConfig.proxy.mixedForwordPort,
                      //settingConfig.proxy.controlPort,
                      settingConfig.proxy.clusterPort,
                      settingConfig.htmlBoardPort,
                    ];
                    if (ports.contains(p)) {
                      await DialogUtils.showAlertDialog(
                          context, tcontext.SettingsScreen.modifyPortOccupied);
                      return;
                    }
                    settingConfig.proxy.controlPort = p;
                    SettingManager.setDirty(true);
                    setState(() {});
                  }
                })),
        if (PlatformUtils.isPC()) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.portSettingCluster,
                  text: settingConfig.proxy.clusterPort.toString(),
                  onPush: () async {
                    int? p = await DialogUtils.showIntInputDialog(
                        context,
                        tcontext.SettingsScreen.modifyPort,
                        settingConfig.proxy.clusterPort,
                        minPort,
                        maxPort);
                    if (p != null) {
                      List<int> ports = [
                        settingConfig.proxy.mixedRulePort,
                        settingConfig.proxy.mixedDirectPort,
                        settingConfig.proxy.mixedForwordPort,
                        settingConfig.proxy.controlPort,
                        //settingConfig.proxy.clusterPort,
                        settingConfig.htmlBoardPort,
                      ];
                      if (ports.contains(p)) {
                        await DialogUtils.showAlertDialog(context,
                            tcontext.SettingsScreen.modifyPortOccupied);
                        return;
                      }
                      settingConfig.proxy.clusterPort = p;
                      SettingManager.setDirty(true);
                      setState(() {});
                    }
                  }))
        ],
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.htmlBoard,
                text: settingConfig.htmlBoardPort.toString(),
                onPush: () async {
                  int? p = await DialogUtils.showIntInputDialog(
                      context,
                      tcontext.SettingsScreen.modifyPort,
                      settingConfig.htmlBoardPort,
                      minPort,
                      maxPort);
                  if (p != null) {
                    List<int> ports = [
                      settingConfig.proxy.mixedRulePort,
                      settingConfig.proxy.mixedDirectPort,
                      settingConfig.proxy.mixedForwordPort,
                      settingConfig.proxy.controlPort,
                      settingConfig.proxy.clusterPort,
                      // settingConfig.htmlBoardPort,
                    ];
                    if (ports.contains(p)) {
                      await DialogUtils.showAlertDialog(
                          context, tcontext.SettingsScreen.modifyPortOccupied);
                      return;
                    }
                    settingConfig.htmlBoardPort = p;
                    SettingManager.setDirty(true);
                    setState(() {});
                  }
                }))
      ];

      return [GroupItem(options: options), GroupItem(options: options1)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("port"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.port,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapNTP() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();

      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.meta.enable,
          switchValue: settingConfig.ntp.enable,
          onSwitch: (bool value) async {
            settingConfig.ntp.enable = value;
            SettingManager.setDirty(true);
            setState(() {});
          },
        )),
        GroupItemOptions(
            stringPickerOptions: GroupItemStringPickerOptions(
                name: "Server",
                selected: settingConfig.ntp.server,
                strings: SettingConfigItemNTP.kNTPServerList,
                onPicker: !settingConfig.ntp.enable
                    ? null
                    : (String? selected) async {
                        settingConfig.ntp.server = selected ?? "";
                        SettingManager.setDirty(true);
                        setState(() {});
                      })),
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("NTP"),
            builder: (context) => GroupScreen(
                  title: "NTP",
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapTun() async {
    GroupHelper.showTun(context, "settings");
  }

  Future<void> onTapTLS() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options0 = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.tls.insecure,
                switchValue: settingConfig.tls.enableInsecure,
                onSwitch: (bool value) async {
                  settingConfig.tls.enableInsecure = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
      ];
      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.tls.fragmentEnable,
                tips: tcontext.tls.affectProtocolTips,
                switchValue: settingConfig.tls.enableFragment,
                onSwitch: (bool value) async {
                  settingConfig.tls.enableFragment = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: tcontext.tls.fragmentSize,
                text: settingConfig.tls.fragmentSize,
                hint: SettingConfigItemTLS.kFragmentSize,
                enabled: settingConfig.tls.enableFragment,
                textWidthPercent: 0.5,
                onChanged: (String value) {
                  List<String> parts = value.split("-");
                  if (parts.length == 1 || parts.length == 2) {
                    for (var p in parts) {
                      int? v = int.tryParse(p);
                      if (v == null) {
                        return;
                      }
                    }
                  }
                  settingConfig.tls.fragmentSize = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: tcontext.tls.fragmentSleep,
                text: settingConfig.tls.fragmentSleep,
                hint: SettingConfigItemTLS.kFragmentSleep,
                enabled: settingConfig.tls.enableFragment,
                textWidthPercent: 0.5,
                onChanged: (String value) {
                  List<String> parts = value.split("-");
                  if (parts.length == 1 || parts.length == 2) {
                    for (var p in parts) {
                      int? v = int.tryParse(p);
                      if (v == null) {
                        return;
                      }
                    }
                  }
                  settingConfig.tls.fragmentSleep = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
      ];
      List<GroupItemOptions> options2 = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.tls.mixedCaseSNIEnable,
                tips: tcontext.tls.affectProtocolTips,
                switchValue: settingConfig.tls.enableMixedCaseSNI,
                onSwitch: (bool value) async {
                  settingConfig.tls.enableMixedCaseSNI = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
      ];
      List<GroupItemOptions> options3 = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.tls.paddingEnable,
                tips: tcontext.tls.affectProtocolTips,
                switchValue: settingConfig.tls.enablePadding,
                onSwitch: (bool value) async {
                  settingConfig.tls.enablePadding = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: tcontext.tls.paddingSize,
                text: settingConfig.tls.paddingSize,
                hint: SettingConfigItemTLS.kPaddingSize,
                textWidthPercent: 0.5,
                enabled: settingConfig.tls.enablePadding,
                onChanged: (String value) {
                  List<String> parts = value.split("-");
                  if (parts.length == 1 || parts.length == 2) {
                    for (var p in parts) {
                      int? v = int.tryParse(p);
                      if (v == null) {
                        return;
                      }
                    }
                  }
                  settingConfig.tls.paddingSize = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
      ];
      return [
        GroupItem(options: options0),
        GroupItem(options: options1),
        GroupItem(options: options2),
        GroupItem(options: options3)
      ];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("TLS"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.tls,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapMux() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.meta.enable,
                switchValue: settingConfig.mux.enable,
                onSwitch: (bool value) async {
                  settingConfig.mux.enable = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            stringPickerOptions: GroupItemStringPickerOptions(
                name: tcontext.meta.protocol,
                selected: settingConfig.mux.protocol,
                strings: ["h2mux", "smux", "yamux"],
                onPicker: !settingConfig.mux.enable
                    ? null
                    : (String? selected) async {
                        if (selected == null) {
                          return;
                        }
                        settingConfig.mux.protocol = selected;
                        SettingManager.setDirty(true);
                        setState(() {});
                      })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: "Padding",
                switchValue: settingConfig.mux.padding,
                onSwitch: !settingConfig.mux.enable
                    ? null
                    : (bool value) async {
                        settingConfig.mux.padding = value;
                        SettingManager.setDirty(true);
                        setState(() {});
                      })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: "MaxStream",
                text: settingConfig.mux.maxStream.toString(),
                onPush: !settingConfig.mux.enable
                    ? null
                    : () async {
                        int? p = await DialogUtils.showIntInputDialog(
                            context,
                            tcontext.SettingsScreen.modifyPort,
                            settingConfig.mux.maxStream,
                            1,
                            256);
                        if (p != null) {
                          settingConfig.mux.maxStream = p;
                          SettingManager.setDirty(true);
                          setState(() {});
                        }
                      })),
      ];

      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: SingboxOutboundType.vmess.name,
          switchValue: settingConfig.mux.outboundTypes
              .contains(SingboxOutboundType.vmess.name),
          onSwitch: !settingConfig.mux.enable
              ? null
              : (bool value) async {
                  if (value) {
                    settingConfig.mux.outboundTypes
                        .add(SingboxOutboundType.vmess.name);
                  } else {
                    settingConfig.mux.outboundTypes
                        .remove(SingboxOutboundType.vmess.name);
                  }
                  SettingManager.setDirty(true);
                  setState(() {});
                },
        )),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: SingboxOutboundType.vless.name,
          switchValue: settingConfig.mux.outboundTypes
              .contains(SingboxOutboundType.vless.name),
          onSwitch: !settingConfig.mux.enable
              ? null
              : (bool value) async {
                  if (value) {
                    settingConfig.mux.outboundTypes
                        .add(SingboxOutboundType.vless.name);
                  } else {
                    settingConfig.mux.outboundTypes
                        .remove(SingboxOutboundType.vless.name);
                  }
                  SettingManager.setDirty(true);
                  setState(() {});
                },
        )),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: SingboxOutboundType.trojan.name,
          switchValue: settingConfig.mux.outboundTypes
              .contains(SingboxOutboundType.trojan.name),
          onSwitch: !settingConfig.mux.enable
              ? null
              : (bool value) async {
                  if (value) {
                    settingConfig.mux.outboundTypes
                        .add(SingboxOutboundType.trojan.name);
                  } else {
                    settingConfig.mux.outboundTypes
                        .remove(SingboxOutboundType.trojan.name);
                  }
                  SettingManager.setDirty(true);
                  setState(() {});
                },
        )),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: SingboxOutboundType.shadowsocks.name,
          switchValue: settingConfig.mux.outboundTypes
              .contains(SingboxOutboundType.shadowsocks.name),
          onSwitch: !settingConfig.mux.enable
              ? null
              : (bool value) async {
                  if (value) {
                    settingConfig.mux.outboundTypes
                        .add(SingboxOutboundType.shadowsocks.name);
                  } else {
                    settingConfig.mux.outboundTypes
                        .remove(SingboxOutboundType.shadowsocks.name);
                  }
                  SettingManager.setDirty(true);
                  setState(() {});
                },
        )),
      ];

      return [GroupItem(options: options), GroupItem(options: options1)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("Mux"),
            builder: (context) => GroupScreen(
                  title: "Mux",
                  getOptions: getOptions,
                  tipsIfNoOnDone: null,
                )));
    setState(() {});
  }

  Future<void> onTapDns() async {
    await GroupHelper.showDns(context);
    setState(() {});
  }

  Future<void> onTapDiversion() async {
    await GroupHelper.showDeversion(context);
    setState(() {});
  }

  Future<void> onTapAutoSelect() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
                name: tcontext.SettingsScreen.autoSelectServerInterval,
                tips: tcontext.SettingsScreen.autoSelectServerIntervalTips,
                duration: settingConfig.autoSelect.timerInterval,
                showSeconds: false,
                showDisable: false,
                onPicker: (bool canceled, Duration? duration) async {
                  if (canceled) {
                    return;
                  }
                  if (duration == null) {
                    return;
                  }
                  if (duration.inDays > 365) {
                    duration = const Duration(days: 365);
                  }
                  if (duration.inMinutes < 3) {
                    duration = const Duration(minutes: 3);
                  }
                  if (duration == settingConfig.autoSelect.timerInterval) {
                    return;
                  }

                  settingConfig.autoSelect.timerInterval = duration;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
                name: tcontext
                    .SettingsScreen.autoSelectSelectedHealthCheckInterval,
                tips: tcontext
                    .SettingsScreen.autoSelectSelectedHealthCheckIntervalTips,
                duration: settingConfig.autoSelect.selectedHealthCheckInterval,
                showSeconds: true,
                showMinutes: true,
                showHours: false,
                showDays: false,
                showDisable: true,
                onPicker: (bool canceled, Duration? duration) async {
                  if (canceled) {
                    return;
                  }
                  if (duration != null) {
                    if (duration.inSeconds >= 3600) {
                      duration = const Duration(minutes: 59);
                    }
                    if (duration.inSeconds < 3) {
                      duration = const Duration(seconds: 3);
                    }
                  }

                  if (duration ==
                      settingConfig.autoSelect.selectedHealthCheckInterval) {
                    return;
                  }

                  settingConfig.autoSelect.selectedHealthCheckInterval =
                      duration;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext
                    .SettingsScreen.autoSelectServerReTestIfNetworkUpdate,
                switchValue: settingConfig.autoSelect.reTestIfNetworkUpdate,
                onSwitch: (bool value) async {
                  settingConfig.autoSelect.reTestIfNetworkUpdate = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen
                    .autoSelectServerUpdateCurrentServerAfterManualUrltest,
                switchValue: settingConfig
                    .autoSelect.updateCurrentServerAfterManualUrltest,
                onSwitch: (bool value) async {
                  settingConfig
                      .autoSelect.updateCurrentServerAfterManualUrltest = value;
                  setState(() {});
                })),
        /*GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext
                    .SettingsScreen.autoSelectServerIgnorePerProxyServer,
                switchValue: settingConfig
                    .autoSelect.autoSelectServerIgnorePerProxyServer,
                onSwitch: (bool value) async {
                  settingConfig
                      .autoSelect.autoSelectServerIgnorePerProxyServer = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),*/
      ];
      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.autoSelectServerFavFirst,
                tips: tcontext.SettingsScreen.autoSelectServerFavFirstTips,
                switchValue: settingConfig.autoSelect.prioritizeMyFav,
                onSwitch: (bool value) async {
                  settingConfig.autoSelect.prioritizeMyFav = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.autoSelectServerFilter,
                tips: tcontext.SettingsScreen.autoSelectServerFilterTips(
                    p: settingConfig.autoSelect.limitedNum),
                switchValue: settingConfig.autoSelect.filter,
                onSwitch: (bool value) async {
                  settingConfig.autoSelect.filter = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.autoSelectServerLimitedNum,
                tips: tcontext.SettingsScreen.autoSelectServerLimitedNumTips,
                text: settingConfig.autoSelect.limitedNum.toString(),
                onPush: () async {
                  await onTapFilterInvalidServerNum();
                })),
      ];
      return [GroupItem(options: options), GroupItem(options: options1)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("autoSelect"),
            builder: (context) => GroupScreen(
                  title: tcontext.SettingsScreen.autoSelect,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapNetShare() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();

      String ipLocal = "127.0.0.1";
      String ipInterface = ipLocal;
      if (settingConfig.proxy.getAllowAllInbounds() ||
          settingConfig.proxy.getClusterAllowAllInbounds()) {
        List<NetInterfacesInfo> interfaces = await NetworkUtils.getInterfaces();
        if (interfaces.isNotEmpty) {
          ipInterface = interfaces.first.address;
        }
        for (var interf in interfaces) {
          if (interf.name.startsWith("en") || interf.name.startsWith("wlan")) {
            ipInterface = interf.address;
            break;
          }
        }
      }
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.netInterfaces,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: NetInterfacesScreen.routSettings(),
                          builder: (context) => const NetInterfacesScreen()));
                })),
      ];

      List<GroupItemOptions> options1 = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.allowOtherHostsConnect,
                // ignore: prefer_interpolation_to_compose_strings
                tips: (settingConfig.proxy.getAllowAllInbounds()
                        ? ipInterface
                        : ipLocal) +
                    "\n" +
                    tcontext.SettingsScreen.portSettingRule +
                    ":" +
                    tcontext.SettingsScreen.allowOtherHostsConnectTips(
                        hp: settingConfig.proxy.mixedRulePort,
                        sp: settingConfig.proxy.mixedRulePort) +
                    "\n" +
                    tcontext.SettingsScreen.portSettingDirectAll +
                    ":" +
                    tcontext.SettingsScreen.allowOtherHostsConnectTips(
                        hp: settingConfig.proxy.mixedDirectPort,
                        sp: settingConfig.proxy.mixedDirectPort) +
                    "\n" +
                    tcontext.SettingsScreen.portSettingProxyAll +
                    ":" +
                    tcontext.SettingsScreen.allowOtherHostsConnectTips(
                        hp: settingConfig.proxy.mixedForwordPort,
                        sp: settingConfig.proxy.mixedForwordPort),
                switchValue: settingConfig.proxy.getAllowAllInbounds(),
                onSwitch: (bool value) async {
                  settingConfig.proxy.setAllowAllInbounds(value);
                  SettingManager.setDirty(true);

                  setState(() {});
                  if (value && Platform.isIOS) {
                    DialogUtils.showAlertDialog(context,
                        tcontext.SettingsScreen.allowOtherHostsConnectWarn,
                        withVersion: true);
                  }
                })),
      ];

      List<GroupItemOptions> options2 = [
        if (PlatformUtils.isPC()) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.SettingsScreen.enableCluster,
                  switchValue: settingConfig.proxy.enableCluster,
                  onSwitch: (bool value) async {
                    settingConfig.proxy.enableCluster = value;
                    SettingManager.setDirty(true);

                    setState(() {});
                  })),
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.SettingsScreen.clusterAllowOtherHostsConnect,
                  tips:
                      tcontext.SettingsScreen.clusterAllowOtherHostsConnectTips(
                          ip: settingConfig.proxy.getClusterAllowAllInbounds()
                              ? ipInterface
                              : ipLocal,
                          port: settingConfig.proxy.clusterPort),
                  switchValue: settingConfig.proxy.getClusterAllowAllInbounds(),
                  onSwitch: (bool value) async {
                    settingConfig.proxy.setClusterAllowAllInbounds(value);
                    SettingManager.setDirty(true);

                    setState(() {});
                  }))
        ],
      ];

      return [
        GroupItem(options: options),
        GroupItem(options: options1),
        GroupItem(options: options2)
      ];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("networkShare"),
            builder: (context) => GroupScreen(
                  title: tcontext.SettingsScreen.networkShare,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapHomeScreen() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      List<Tuple2<String, String>> widgetsAlphaStrings = [
        Tuple2("0", "0"),
        Tuple2("20", "20"),
        Tuple2("50", "50"),
        Tuple2("100", "100"),
        Tuple2("255", tcontext.meta.disable),
      ];
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.backgroundImage,
                textWidthPercent: 0.4,
                onPush: () async {
                  await onTapBackgroundImage();
                })),
        GroupItemOptions(
            stringPickerOptions: GroupItemStringPickerOptions(
                name: tcontext.SettingsScreen.widgetsAlpha,
                selected: settingConfig.uiScreen.getWidgetAlpha().toString(),
                tupleStrings: widgetsAlphaStrings,
                onPicker: (String? selected) async {
                  if (selected == null ||
                      selected ==
                          settingConfig.uiScreen.getWidgetAlpha().toString()) {
                    return;
                  }

                  settingConfig.uiScreen.widgetsAlpha =
                      int.tryParse(selected) ?? 255;
                  Provider.of<Themes>(context, listen: false)
                      .setTheme(SettingManager.getConfig().ui.theme, true);

                  setState(() {});
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.myLink,
                text: SettingManager.getConfig().uiScreen.getMyLink(),
                onPush: () async {
                  await onTapMyLink();
                })),
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("homeScreen"),
            builder: (context) => GroupScreen(
                  title: tcontext.SettingsScreen.homeScreen,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapBackgroundImage() async {
    final tcontext = Translations.of(context);
    var settingConfig = SettingManager.getConfig();
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<Tuple2<String, String>> backgroundImageStrings = [
        Tuple2(
            SettingConfigItemUIScreen.backgroundTypeLocal, tcontext.meta.local),
        Tuple2(SettingConfigItemUIScreen.backgroundTypeRemote,
            tcontext.meta.remote),
        Tuple2(SettingConfigItemUIScreen.backgroundTypeDisable,
            tcontext.meta.disable),
      ];
      List<GroupItemOptions> options = [
        GroupItemOptions(
            stringPickerOptions: GroupItemStringPickerOptions(
                name: tcontext.meta.type,
                selected: settingConfig.uiScreen.backgroundImageType,
                tupleStrings: backgroundImageStrings,
                onPicker: (String? selected) async {
                  if (selected == null) {
                    return;
                  }
                  settingConfig.uiScreen.backgroundImageType = selected;
                  setState(() {});
                })),
        if (settingConfig.uiScreen.backgroundImageType ==
            SettingConfigItemUIScreen.backgroundTypeLocal) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.meta.path,
                  textWidthPercent: 0.4,
                  text:
                      SettingManager.getConfig().uiScreen.backgroundImageLocal,
                  onPush: () async {
                    await onTapBackgroundImageEditLocal();
                  })),
        ],
        if (settingConfig.uiScreen.backgroundImageType ==
            SettingConfigItemUIScreen.backgroundTypeRemote) ...[
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.meta.url,
                  textWidthPercent: 0.4,
                  text: SettingManager.getConfig().uiScreen.backgroundImageUrl,
                  onPush: () async {
                    await onTapBackgroundImageEditRemote();
                  })),
        ],
      ];
      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("backgroundImage"),
            builder: (context) => GroupScreen(
                  title: tcontext.SettingsScreen.backgroundImage,
                  getOptions: getOptions,
                )));
    setState(() {});
    return;
  }

  Future<void> onTapBackgroundImageEditLocal() async {
    if (Platform.isIOS) {
      try {
        final ImagePicker picker = ImagePicker();
        final XFile? result =
            await picker.pickImage(source: ImageSource.gallery);

        if ((result != null) && result.path.isNotEmpty) {
          String filePath = result.path;
          SettingManager.getConfig().uiScreen.backgroundImageLocal = filePath;
          setState(() {});
        }
      } catch (err, _) {
        if (!mounted) {
          return;
        }
        DialogUtils.showAlertDialog(context, err.toString(),
            showCopy: true, showFAQ: true, withVersion: true);
      }
      return;
    }
    try {
      List<String> extensions = ["png", "jpg", "gif", "bmp"];
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: extensions,
      );
      if (result != null) {
        String filePath = result.files.first.path!;
        String ext = path.extension(filePath).replaceAll('.', '').toLowerCase();
        if (!extensions.contains(ext)) {
          return;
        }

        SettingManager.getConfig().uiScreen.backgroundImageLocal = filePath;
        setState(() {});
      }
    } catch (err, stacktrace) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  Future<void> onTapBackgroundImageEditRemote() async {
    final tcontext = Translations.of(context);

    String? text = await DialogUtils.showTextInputDialog(
        context,
        tcontext.meta.url,
        SettingManager.getConfig().uiScreen.backgroundImageUrl,
        null,
        null,
        null, (text) {
      text = text.trim();
      if (text.isEmpty) {
        return true;
      }
      Uri? uri = Uri.tryParse(text);
      if (uri == null ||
          uri.host.isEmpty ||
          (!uri.isScheme('HTTP') && !uri.isScheme('HTTPS'))) {
        DialogUtils.showAlertDialog(context, tcontext.meta.urlInvalid);
        return false;
      }
      return true;
    });
    if (text == null) {
      return;
    }
    SettingManager.getConfig().uiScreen.backgroundImageUrl = text;
    setState(() {});
  }

  Future<void> onTapMyLink() async {
    final tcontext = Translations.of(context);

    String? text = await DialogUtils.showTextInputDialog(
        context,
        tcontext.SettingsScreen.myLink,
        SettingManager.getConfig().uiScreen.myLink,
        null,
        null,
        null, (text) {
      text = text.trim();
      if (text.isEmpty) {
        return true;
      }
      Uri? uri = Uri.tryParse(text);
      if (uri == null || !uri.hasScheme || uri.host.isEmpty) {
        DialogUtils.showAlertDialog(context, tcontext.meta.urlInvalid);
        return false;
      }
      return true;
    });
    if (text == null) {
      return;
    }
    SettingManager.getConfig().uiScreen.myLink = text;
    setState(() {});
  }

  Future<String> onTapFilterInvalidServerNum() async {
    final tcontext = Translations.of(context);

    String? text = await DialogUtils.showTextInputDialog(
        context,
        tcontext.SettingsScreen.autoSelectServerLimitedNum,
        SettingManager.getConfig().autoSelect.limitedNum.toString(),
        null,
        TextInputType.number, [
      FilteringTextInputFormatter.digitsOnly,
    ], (text) {
      text = text.trim();
      if (text.isEmpty) {
        DialogUtils.showAlertDialog(
            context, tcontext.SettingsScreen.numInvalid);
        return false;
      }
      int? value = int.tryParse(text);
      if (value == null) {
        DialogUtils.showAlertDialog(
            context, tcontext.SettingsScreen.numInvalid);
        return false;
      }
      return true;
    });
    if (text == null) {
      return "";
    }
    SettingManager.getConfig().autoSelect.limitedNum = int.parse(text);
    if (SettingManager.getConfig().autoSelect.limitedNum > 100000) {
      SettingManager.getConfig().autoSelect.limitedNum = 100000;
    }
    SettingManager.setDirty(true);
    setState(() {});
    return "";
  }

  Future<void> onTapHandleScheme() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.SettingsScreen.handleKaringScheme,
          switchValue: SystemSchemeUtils.isRegistered(
              SystemSchemeUtils.getKaringScheme()),
          onSwitch: (bool value) async {
            String? error;
            if (value) {
              error = await SystemSchemeUtils.register(
                  SystemSchemeUtils.getKaringScheme());
            } else {
              error = SystemSchemeUtils.unregister(
                  SystemSchemeUtils.getKaringScheme());
            }
            if (error != null) {
              DialogUtils.showAlertDialog(context, error,
                  showCopy: true, showFAQ: true, withVersion: true);
            }
            setState(() {});
          },
        )),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.SettingsScreen.handleClashScheme,
          switchValue: SystemSchemeUtils.isRegistered(
              SystemSchemeUtils.getClashScheme()),
          onSwitch: (bool value) async {
            String? error;
            if (value) {
              error = await SystemSchemeUtils.register(
                  SystemSchemeUtils.getClashScheme());
            } else {
              error = SystemSchemeUtils.unregister(
                  SystemSchemeUtils.getClashScheme());
            }
            if (error != null) {
              DialogUtils.showAlertDialog(context, error,
                  showCopy: true, showFAQ: true, withVersion: true);
            }
            setState(() {});
          },
        )),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.SettingsScreen.handleSingboxScheme,
          switchValue: SystemSchemeUtils.isRegistered(
              SystemSchemeUtils.getSingboxScheme()),
          onSwitch: (bool value) async {
            String? error;
            if (value) {
              error = await SystemSchemeUtils.register(
                  SystemSchemeUtils.getSingboxScheme());
            } else {
              error = SystemSchemeUtils.unregister(
                  SystemSchemeUtils.getSingboxScheme());
            }
            if (error != null) {
              DialogUtils.showAlertDialog(context, error,
                  showCopy: true, showFAQ: true, withVersion: true);
            }
            setState(() {});
          },
        )),
      ];
      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("handleScheme"),
            builder: (context) => GroupScreen(
                  title: tcontext.SettingsScreen.handleScheme,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapPortableModeOn() async {
    Directory? dir;
    bool exist = false;
    bool created = false;
    try {
      String portableProfileDir = PathUtils.profileDirForPortableMode();
      dir = Directory(portableProfileDir);
      exist = await dir.exists();
      if (!exist) {
        await dir.create(recursive: true);
        created = true;
        String profileDir = await PathUtils.profileDir();
        var fileList = Directory(profileDir).listSync(followLinks: false);
        for (var f in fileList) {
          if (f is File) {
            String ext = path.extension(f.path);
            String basename = path.basename(f.path);
            if (ext == ".log") {
              continue;
            }
            var newFilePath = path.join(portableProfileDir, basename);
            await f.copy(newFilePath);
          } else if (f is Directory) {
            String fbasename = path.basename(f.path);
            if (fbasename == "cache" || fbasename == "webviewCache") {
              continue;
            }
            final newDirPath = path.join(portableProfileDir, fbasename);
            var newDir = Directory(newDirPath);
            await newDir.create(recursive: false);
            var fileList = f.listSync(followLinks: false);
            for (var ff in fileList) {
              if (ff is File) {
                String ext = path.extension(ff.path);
                String basename = path.basename(ff.path);
                if (ext == ".log") {
                  continue;
                }
                var newFilePath = path.join(newDirPath, basename);
                await ff.copy(newFilePath);
              }
            }
          }
        }
      }
    } catch (err, stacktrace) {
      if (!exist && created) {
        await dir!.delete();
      }
      if (!context.mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }
    await VPNService.uninit();
    await ServicesBinding.instance.exitApplication(AppExitType.required);
  }

  Future<void> onTapAdRemove() async {
    final tcontext = Translations.of(context);

    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      String rewardAdExpireTime =
          settingConfig.ads.getBannerRewardAdExpire(settingConfig.languageTag);
      String shareExpireTime =
          settingConfig.ads.getBannerShareExpire(settingConfig.languageTag);
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.removeBannerAdsByReward,
                text: rewardAdExpireTime,
                onPush: rewardAdExpireTime.isNotEmpty
                    ? null
                    : () async {
                        AnalyticsUtils.logEvent(
                            analyticsEventType: analyticsEventTypeUA,
                            name: 'adsReward',
                            repeatable: true);

                        bool? ok = await DialogUtils.showConfirmDialog(
                            context,
                            tcontext.removeBannerAdsByRewardTip(
                                p: SettingConfigItemAds.rewardDays));
                        if (ok == true) {
                          DialogUtils.showLoadingDialog(context, text: "");
                          AdsRewardWidget.loadGoogleRewardedAd(
                              (AdsRewardError? err) {
                            if (!mounted) {
                              return;
                            }
                            Navigator.pop(context);
                            if (err == null) {
                              settingConfig.ads.bannerRewardAdExpire =
                                  DateTime.now()
                                      .add(const Duration(
                                          days:
                                              SettingConfigItemAds.rewardDays))
                                      .toString();
                              setState(() {});
                              DialogUtils.showAlertDialog(
                                  context,
                                  tcontext.removeBannerAdsDone(
                                      p: SettingConfigItemAds.rewardDays));
                            } else {
                              DialogUtils.showAlertDialog(
                                  context, err.toString(),
                                  showCopy: true,
                                  showFAQ: true,
                                  withVersion: true);
                            }
                          });
                        }
                      })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.removeBannerAdsByShare,
                text: shareExpireTime,
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'adsShare',
                      repeatable: true);

                  final box = context.findRenderObject() as RenderBox?;
                  bool? ok = await DialogUtils.showConfirmDialog(
                      context,
                      tcontext.removeBannerAdsByShareTip(
                          p: SettingConfigItemAds.rewardDays,
                          d: SettingConfigItemAds.rewardDays *
                              SettingConfigItemAds.shareRewardTimes));
                  if (ok == true) {
                    try {
                      RemoteConfig config = RemoteConfigManager.getConfig();
                      String content = '''Karing

 Simple & Powerful, rule-based network proxy utility
 Support Clash,V2ray,Stash,Singbox,Shadowsocks,Github,Sub Subscription configuration

 Download/Install
   iOS/macOS/tvOS AppStore: ${AppleUtils.getAppStoreUrl()}
   Android: ${config.download} or https://apkpure.com/p/com.nebula.karing
   Windows: ${config.download}''';
                      ShareResult result = await Share.share(content,
                          sharePositionOrigin:
                              box!.localToGlobal(Offset.zero) & box.size);
                      if (result.status == ShareResultStatus.success) {
                        DateTime? date = DateTime.tryParse(
                            settingConfig.ads.bannerShareExpire);
                        if (date != null) {
                          var newDate = date.add(
                              Duration(days: SettingConfigItemAds.rewardDays));
                          if ((newDate.difference(DateTime.now()).inDays /
                                      SettingConfigItemAds.rewardDays)
                                  .ceil() >
                              SettingConfigItemAds.shareRewardTimes) {
                            return;
                          }
                          settingConfig.ads.bannerShareExpire =
                              newDate.toString();
                        } else {
                          settingConfig.ads.bannerShareExpire = DateTime.now()
                              .add(const Duration(
                                  days: SettingConfigItemAds.rewardDays))
                              .toString();
                        }

                        setState(() {});
                        DialogUtils.showAlertDialog(
                            context,
                            tcontext.removeBannerAdsDone(
                                p: SettingConfigItemAds.rewardDays));
                      }
                    } catch (err) {
                      DialogUtils.showAlertDialog(context, err.toString(),
                          showCopy: true, showFAQ: true, withVersion: true);
                    }
                  }
                })),
      ];
      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("ads"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.ads,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapSupportUS() async {
    final tcontext = Translations.of(context);

    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();
      var remoteConfig = RemoteConfigManager.getConfig();
      List<GroupItemOptions> options = [
        if (PlatformUtils.isMobile() &&
            !AdsPrivate.getEnable() &&
            remoteConfig.adManualEnable) ...[
          GroupItemOptions(
              switchOptions: GroupItemSwitchOptions(
                  name: tcontext.meta.adsBanner,
                  switchValue: settingConfig.ads.bannerEnable,
                  onSwitch: (bool value) async {
                    settingConfig.ads.bannerEnable = value;
                    setState(() {});
                  }))
        ],
      ];

      if (!Platform.isIOS &&
          !Platform.isMacOS &&
          remoteConfig.donateUrl.isNotEmpty) {
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.donate,
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: "donate",
                      repeatable: false);
                  String url =
                      await UrlLauncherUtils.reorganizationUrlWithAnchor(
                          remoteConfig.donateUrl);
                  await WebviewHelper.loadUrl(context, url, "donate",
                      title: tcontext.meta.donate);
                })));
      }

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("supportUs"),
            builder: (context) => GroupScreen(
                  title: tcontext.SettingsScreen.supportUs,
                  getOptions: getOptions,
                )));
    setState(() {});
  }
}
