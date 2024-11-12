// ignore_for_file: use_build_context_synchronously, unused_catch_stacktrace, unused_catch_stack

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:intl/intl.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/auto_update_manager.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/notice_manager.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/private/ads_banner_widget_private.dart';
import 'package:karing/app/private/ads_private.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/apple_utils.dart';
import 'package:karing/app/utils/clash_api.dart';
import 'package:karing/app/utils/cloudflare_warp_api.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/install_referrer_utils.dart';
import 'package:karing/app/utils/karing_url_utils.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_json.dart';
import 'package:karing/app/utils/system_scheme_utils.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/about_screen.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/feedback_screen.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/group_item.dart';
import 'package:karing/screens/group_options_helper.dart';
import 'package:karing/screens/group_screen.dart';
import 'package:karing/screens/language_settings_screen.dart';
import 'package:karing/screens/my_profiles_screen.dart';
import 'package:karing/screens/net_interfaces_screen.dart';
import 'package:karing/screens/perapp_android_screen.dart';
import 'package:karing/screens/qrcode_screen.dart';
import 'package:karing/screens/richtext_viewer.screen.dart';
import 'package:karing/screens/speedtest_settings_screen.dart';
import 'package:karing/screens/text_to_qrcode_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/urltest_settings_screen.dart';
import 'package:karing/screens/uwp_loopback_exemption_windows_screen.dart';
import 'package:karing/screens/version_update_screen.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:path/path.dart' as path;
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
  @override
  void initState() {
    super.initState();

    NoticeManager.onCheck(() {
      if (mounted) {
        setState(() {});
      }
    });
    AutoUpdateManager.onCheck(() {
      if (mounted) {
        setState(() {});
      }
    });
  }

  Future<bool> getInAppRate() async {
    if (!Platform.isIOS && !Platform.isMacOS) {
      return false;
    }
    if (AppleUtils.getAppStoreUrl().isEmpty) {
      return false;
    }
    final InAppReview inAppReview = InAppReview.instance;
    return await inAppReview.isAvailable();
  }

  Future<bool> startVPN() async {
    return await Biz.startVPN(context, true, "SettingsScreen");
  }

  @override
  void dispose() {
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
                        tcontext.setting,
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
                      children
                          .addAll(GroupItemCreator.createGroups(context, data));
                      return Column(children: children);
                    },
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
    var download = remoteISPConfig.download.isNotEmpty
        ? remoteISPConfig.download
        : remoteConfig.download;
    var telegram = remoteISPConfig.telegram.isNotEmpty
        ? remoteISPConfig.telegram
        : remoteConfig.telegram;
    var follow = remoteISPConfig.follow.isNotEmpty
        ? remoteISPConfig.follow
        : remoteConfig.follow;

    NoticeItem? noticeItem = NoticeManager.getNotice().getFirstUnread();
    List<GroupItem> groupOptions = [];

    groupOptions.add(GroupItem(options: [
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.novice,
              switchValue: settingConfig.novice,
              onSwitch: (bool value) async {
                settingConfig.novice = value;
                SettingManager.setDirty(true);
                setState(() {});
              })),
    ]));

    String ispGroupId = "";
    SubscriptionISP? isp;
    String expireTime = "";
    bool expiring = false;

    for (var item in serverConfig.items) {
      isp = item.getISP();
      if (isp == null) {
        continue;
      }
      ispGroupId = item.groupid;
      if (item.traffic != null && item.traffic!.expire.isNotEmpty) {
        expireTime = item.traffic!.expire;
        DateTime? date = DateTime.tryParse(expireTime);
        if (date != null) {
          try {
            var dif = date.difference(DateTime.now());
            if (dif.inDays <= 14) {
              expiring = true;
            }
            expireTime = DateFormat.yMd(settingConfig.languageTag).format(date);
          } catch (e) {}
        }
      }
      break;
    }

    if (isp != null) {
      groupOptions.add(GroupItem(name: tcontext.isp, options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: isp.name,
                text: expireTime,
                textColor: expiring ? Colors.red : null,
                onPush: () async {
                  AnalyticsUtils.logEvent(
                      analyticsEventType: analyticsEventTypeUA,
                      name: 'SSS_isp',
                      parameters: {"name": isp!.name, "url": isp.url});

                  UrlLauncherUtils.loadUrl(isp.url);
                })),
        isp.faq.isNotEmpty
            ? GroupItemOptions(
                pushOptions: GroupItemPushOptions(
                    name: tcontext.SettingsScreen.ispFaq(p: isp.name),
                    onPush: () async {
                      AnalyticsUtils.logEvent(
                          analyticsEventType: analyticsEventTypeUA,
                          name: 'SSS_isp_faq',
                          parameters: {"name": isp!.name, "url": isp.faq});

                      UrlLauncherUtils.loadUrl(isp.faq);
                    }))
            : GroupItemOptions(),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.cleanISP(p: isp.name),
                onPush: () async {
                  ServerManager.disableISP(ispGroupId);
                  ServerManager.saveServerConfig();
                  setState(() {});
                }))
      ]));
    }

    groupOptions.add(GroupItem(
        options: GroupOptionsHelper.getOutlinkOptions(context, "settings")));

    groupOptions.add(GroupItem(options: [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.notice,
              reddot: noticeItem != null,
              onPush: () async {
                await onTapNotice();
              })),
      versionCheck.newVersion
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.hasNewVersion(
                      p: versionCheck.version),
                  reddot: versionCheck.newVersion,
                  reddotColor: installer != null
                      ? Colors.red
                      : Colors.red.withOpacity(0.5),
                  onPush: () async {
                    await onTapNewVersion();
                  }))
          : GroupItemOptions(),
    ]));

    if (!settingConfig.novice) {
      groupOptions.add(GroupItem(options: [
        (PlatformUtils.isPC() || Platform.isAndroid) &&
                remoteConfig.htmlboard.isNotEmpty
            ? GroupItemOptions(
                pushOptions: GroupItemPushOptions(
                    name: tcontext.SettingsScreen.htmlBoard,
                    onPush: () async {
                      bool ok = await startVPN();
                      if (!ok) {
                        return;
                      }
                      AnalyticsUtils.logEvent(
                          analyticsEventType: analyticsEventTypeUA,
                          name: 'SSS_htmlBoard');
                      String url = await ClashApi.getHtmlBoardUrl(
                          remoteConfig.htmlboard,
                          settingConfig.proxy.controlPort);
                      UrlLauncherUtils.loadUrl(url);
                    }))
            : GroupItemOptions(),
        remoteConfig.dnsLeakDetection.isNotEmpty
            ? GroupItemOptions(
                pushOptions: GroupItemPushOptions(
                    name: tcontext.SettingsScreen.dnsLeakDetection,
                    onPush: () async {
                      AnalyticsUtils.logEvent(
                          analyticsEventType: analyticsEventTypeUA,
                          name: 'SSS_dnsLeakDetection');
                      UrlLauncherUtils.loadUrl(remoteConfig.dnsLeakDetection);
                    }))
            : GroupItemOptions(),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.TextToQrCodeScreen.title,
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: TextToQrCodeScreen.routSettings(),
                          builder: (context) => const TextToQrCodeScreen()));
                })),
        Platform.isWindows
            ? GroupItemOptions(
                pushOptions: GroupItemPushOptions(
                    name: tcontext.uwpExemption,
                    onPush: () async {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: UWPLoopbackExemptionWindowsScreen
                                  .routSettings(),
                              builder: (context) =>
                                  const UWPLoopbackExemptionWindowsScreen()));
                    }))
            : GroupItemOptions(),
      ]));
      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SpeedTestSettingsScreen.title,
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
                name: tcontext.latencyTest,
                textWidthPercent: 0.4,
                onPush: () async {
                  onTapLatencyTest();
                })),
      ]));
    }

    groupOptions.add(GroupItem(options: [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.addProfile,
              onPush: () async {
                onTapAddProfile();
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.MyProfilesScreen.title,
              onPush: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: MyProfilesScreen.routSettings(),
                        builder: (context) => const MyProfilesScreen()));
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: tcontext.SettingsScreen.downloadProfilePreferProxy,
              tips: tcontext.SettingsScreen.downloadProfilePreferProxyTips,
              switchValue: settingConfig.downloadProfilePreferProxy,
              onSwitch: (bool value) async {
                settingConfig.downloadProfilePreferProxy = value;
                setState(() {});
              })),
    ]));

    List<Tuple2<String, String>> tupleStrings = [
      Tuple2(IPStrategy.ipv4Only.name, tcontext.disable),
      Tuple2(IPStrategy.preferIPv4.name, tcontext.enable),
      Tuple2(IPStrategy.preferIPv6.name, tcontext.prefer),
      Tuple2(IPStrategy.ipv6Only.name, tcontext.only),
    ];
    groupOptions.add(GroupItem(options: [
      !settingConfig.novice
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.portSetting,
                  onPush: () async {
                    await onTapPort();
                  }))
          : GroupItemOptions(),
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
      !settingConfig.novice
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "NTP",
                  onPush: () async {
                    await onTapNTP();
                  }))
          : GroupItemOptions(),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "TUN",
              onPush: () async {
                await onTapTun();
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.dns,
              onPush: () async {
                await onTapDns();
              })),
      !settingConfig.novice
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.tls,
                  onPush: () async {
                    await onTapTLS();
                  }))
          : GroupItemOptions(),
      !settingConfig.novice
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "Mux",
                  onPush: () async {
                    await onTapMux();
                  }))
          : GroupItemOptions(),
      !settingConfig.novice
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.protocolSniff,
                  onPush: () async {
                    await onTapSniff();
                  }))
          : GroupItemOptions(),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.diversion,
              onPush: () async {
                await onTapDiversion();
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.SettingsScreen.autoSelect,
              onPush: () async {
                await onTapAutoSelect();
              })),
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
        name: tcontext.backupAndSync,
        onPush: () async {
          GroupHelper.showBackupAndSync(context);
        },
      )),
    ]));

    if (PlatformUtils.isMobile()) {
      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: tcontext.appleTV,
          onPush: () async {
            GroupHelper.showAppleTVByScanQRCode(context);
          },
        )),
      ]));
    }

    if (!settingConfig.novice) {
      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
          name: tcontext.SettingsScreen.networkShare,
          onPush: () async {
            await onTapNetShare();
          },
        )),
      ]));
    }
    groupOptions.add(GroupItem(options: [
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.SettingsScreen.homeScreen,
              onPush: () async {
                await onTapHomeScreen();
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.SettingsScreen.myLink,
              text: SettingManager.getConfig().uiScreen.getMyLink(),
              onPush: () async {
                await onTapMyLink();
              })),
    ]));

    //
    if (PlatformUtils.isPC()) {
      groupOptions.add(GroupItem(options: [
        Platform.isWindows
            ? GroupItemOptions(
                switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.hideAfterLaunch,
                switchValue: settingConfig.ui.hideAfterLaunch,
                onSwitch: (bool value) async {
                  settingConfig.ui.hideAfterLaunch = value;
                  setState(() {});
                },
              ))
            : GroupItemOptions(),
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
        PlatformUtils.isPC()
            ? GroupItemOptions(
                switchOptions: GroupItemSwitchOptions(
                    name: tcontext.SettingsScreen.disconnectWhenQuit,
                    switchValue: settingConfig.proxy.disconnectWhenQuit,
                    onSwitch: (bool value) async {
                      settingConfig.proxy.disconnectWhenQuit = value;
                      setState(() {});
                    }))
            : GroupItemOptions(),
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
    if (Platform.isIOS || Platform.isMacOS /*|| Platform.isAndroid */) {
      groupOptions.add(GroupItem(options: [
        (Platform.isIOS || Platform.isMacOS)
            ? GroupItemOptions(
                switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.alwayOnVPN,
                switchValue: settingConfig.alwayOn,
                onSwitch: (bool value) async {
                  settingConfig.alwayOn = value;
                  if (!value) {
                    FlutterVpnService.setAlwaysOn(value);
                  }
                  SettingManager.setDirty(true);
                  setState(() {});
                },
              ))
            : GroupItemOptions(),
        /*(Platform.isIOS || Platform.isAndroid)
              ? GroupItemOptions(
                  pushOptions: GroupItemPushOptions(
                      name: tcontext.SettingsScreen.timeConnectOrDisconnect,
                      tips: tcontext.SettingsScreen.timeConnectOrDisconnectTips,
                      onPush: () async {
                        onTapTimeConnectOrDisconnect();
                      }))
              : GroupItemOptions(),*/
      ]));

      if (Platform.isIOS || Platform.isMacOS) {
        groupOptions.add(GroupItem(options: [
          GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.removeSystemVPNConfig,
                  onPush: () async {
                    bool? del = await DialogUtils.showConfirmDialog(
                        context, tcontext.removeConfirm);
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
    }

    groupOptions.add(
      GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.language,
                icon: Icons.language_outlined,
                text: tcontext.locales[settingConfig.languageTag],
                onPush: () async {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: LanguageSettingsScreen.routSettings(),
                          builder: (context) =>
                              const LanguageSettingsScreen(canGoBack: true)));
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
        PlatformUtils.isMobile()
            ? GroupItemOptions(
                switchOptions: GroupItemSwitchOptions(
                    name: tcontext.SettingsScreen.autoOrientation,
                    switchValue: settingConfig.ui.autoOrientation,
                    onSwitch: (bool value) async {
                      settingConfig.ui.autoOrientation = value;
                      if (SettingManager.getConfig().ui.autoOrientation) {
                        SystemChrome.setPreferredOrientations([
                          DeviceOrientation.portraitUp,
                          DeviceOrientation.landscapeLeft,
                          DeviceOrientation.portraitDown,
                          DeviceOrientation.landscapeRight
                        ]);
                      } else {
                        if (await PlatformUtils.isTV()) {
                          SystemChrome.setPreferredOrientations([
                            DeviceOrientation.landscapeLeft,
                            DeviceOrientation.landscapeRight
                          ]);
                        } else {
                          SystemChrome.setPreferredOrientations(
                              [DeviceOrientation.portraitUp]);
                        }
                      }
                      setState(() {});
                    }))
            : GroupItemOptions(),
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
                    SettingManager.getConfig().clear();
                    SettingManager.saveConfig();
                    SettingManager.setDirty(true);
                    setState(() {});
                  }
                })),
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.SettingsScreen.cleanCache,
                onPush: () async {
                  bool started = await VPNService.started();

                  FileUtils.deleteDirByPath(await PathUtils.cacheDir(),
                      recursive: true);
                  FileUtils.deleteDirByPath(await PathUtils.profileDataDir(),
                      recursive: true);

                  if (!started) {
                    FileUtils.deleteFileByPath(
                        await PathUtils.cacheDBFilePath());
                    FileUtils.deleteFileByPath(
                        await PathUtils.serviceLogFilePath());
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
    if (download.isNotEmpty || showTestFlight || showAppStore) {
      groupOptions.add(GroupItem(options: [
        showTestFlight
            ? GroupItemOptions(
                pushOptions: GroupItemPushOptions(
                    name: tcontext.SettingsScreen.appleTestFlight,
                    onPush: () async {
                      AnalyticsUtils.logEvent(
                          analyticsEventType: analyticsEventTypeUA,
                          name: 'SSS_appleTestFlight');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: QrcodeScreen.routSettings(),
                              builder: (context) => QrcodeScreen(
                                  content: AppleUtils.getTestFlightUrl())));
                    }))
            : GroupItemOptions(),
        showAppStore
            ? GroupItemOptions(
                pushOptions: GroupItemPushOptions(
                    name: tcontext.SettingsScreen.appleAppStore,
                    onPush: () async {
                      AnalyticsUtils.logEvent(
                          analyticsEventType: analyticsEventTypeUA,
                          name: 'SSS_appleAppstore');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: QrcodeScreen.routSettings(),
                              builder: (context) => QrcodeScreen(
                                  content: AppleUtils.getAppStoreUrl())));
                    }))
            : GroupItemOptions(),
        download.isNotEmpty
            ? GroupItemOptions(
                pushOptions: GroupItemPushOptions(
                    name: tcontext.download,
                    onPush: () async {
                      AnalyticsUtils.logEvent(
                          analyticsEventType: analyticsEventTypeUA,
                          name: 'SSS_download');

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            settings: QrcodeScreen.routSettings(),
                            builder: (context) => QrcodeScreen(
                                content: download,
                                callback: () async {
                                  String queryParams =
                                      await KaringUrlUtils.getQueryParams();
                                  String newUrl =
                                      UrlLauncherUtils.reorganizationUrl(
                                              download, queryParams) ??
                                          download;

                                  UrlLauncherUtils.loadUrl(newUrl);
                                }),
                          ));
                    }))
            : GroupItemOptions(),
      ]));
    }
    if (AdsPrivate.getEnable()) {
      String expireTime = "";
      DateTime? date = DateTime.tryParse(settingConfig.ads.bannerRewardExpire);
      if (date != null) {
        if (!DateTime.now().isAfter(date)) {
          try {
            expireTime = DateFormat.yMd(settingConfig.languageTag).format(date);
          } catch (e) {}
        }
      }

      groupOptions.add(GroupItem(options: [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.removeBannerAds,
                text: expireTime,
                onPush: expireTime.isNotEmpty
                    ? null
                    : () async {
                        AnalyticsUtils.logEvent(
                            analyticsEventType: analyticsEventTypeUA,
                            name: 'adsReward');

                        bool? ok = await DialogUtils.showConfirmDialog(
                            context, tcontext.removeBannerAdsByReward);
                        if (ok == true) {
                          DialogUtils.showLoadingDialog(context, text: "");
                          AdsRewardWidget.loadGoogleRewardedAd(
                              (AdsRewardError? err) {
                            if (!mounted) {
                              return;
                            }
                            Navigator.pop(context);
                            if (err == null) {
                              settingConfig.ads.bannerRewardExpire =
                                  DateTime.now()
                                      .add(const Duration(days: 7))
                                      .toString();
                              setState(() {});
                              DialogUtils.showAlertDialog(context,
                                  tcontext.removeBannerAdsByRewardDone);
                            } else {
                              DialogUtils.showAlertDialog(
                                  context, err.toString(),
                                  showCopy: true,
                                  showFAQ: true,
                                  withVersion: true);
                            }
                          });
                        }
                      }))
      ]));
    }
    String? rateUrl = AppleUtils.getRateUrl();
    groupOptions.add(GroupItem(options: [
      follow.isNotEmpty
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.follow,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_follow');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: QrcodeScreen.routSettings(),
                            builder: (context) =>
                                QrcodeScreen(content: follow)));
                  }))
          : GroupItemOptions(),
      telegram.isNotEmpty
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.contactUs,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_contactUs');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: QrcodeScreen.routSettings(),
                            builder: (context) =>
                                QrcodeScreen(content: telegram)));
                  }))
          : GroupItemOptions(),
      !RemoteConfigManager.rejectAnalyticsSubmit()
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.feedback,
                  onPush: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: FeedbackScreen.routSettings(),
                            builder: (context) => const FeedbackScreen()));
                  }))
          : GroupItemOptions(),
      PlatformUtils.isMobile() && rateInApp
          //https://apps.apple.com/cn/app/id1558453472?action=write-review
          //https://itunes.apple.com/cn/lookup?id=1558453472
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.rateInApp,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_rateInApp');
                    final InAppReview inAppReview = InAppReview.instance;
                    inAppReview.requestReview();
                  }))
          : GroupItemOptions(),
      rateUrl.isNotEmpty
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: tcontext.SettingsScreen.rateInAppStore,
                  onPush: () async {
                    AnalyticsUtils.logEvent(
                        analyticsEventType: analyticsEventTypeUA,
                        name: 'SSS_rateInAppStore');
                    UrlLauncherUtils.loadUrl(rateUrl);
                  }))
          : GroupItemOptions(),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: tcontext.about,
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
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      List<GroupItemOptions> options = [];
      for (var item in NoticeManager.getNotice().items) {
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
                      parameters: {"title": item.title});

                  if (item.url.isNotEmpty) {
                    String queryParams = await KaringUrlUtils.getQueryParams();
                    String newUrl = UrlLauncherUtils.reorganizationUrl(
                            item.url, queryParams) ??
                        item.url;

                    UrlLauncherUtils.loadUrl(newUrl);
                  } else {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: RichtextViewScreen.routSettings(),
                            builder: (context) => RichtextViewScreen(
                                title: tcontext.notice,
                                file: "",
                                content: item.content)));
                  }
                })));
      }

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("notice"),
            builder: (context) => GroupScreen(
                  title: tcontext.notice,
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
        parameters: {"version": versionCheck.version});
    //item-beta://testflight.apple.com/join/RLU59OsJ or https://testflight.apple.com/join/RLU59OsJ
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
        UrlLauncherUtils.loadUrl(versionCheck.url,
            mode: Platform.isAndroid
                ? LaunchMode.externalApplication
                : LaunchMode.platformDefault);
      }
    } else {
      UrlLauncherUtils.loadUrl(versionCheck.url);
    }
  }

  Future<void> onTapAddProfile() async {
    await GroupHelper.showAddProfile(context);
    setState(() {});
  }

  Future<void> onTapWarp() async {
    var settingConfig = SettingManager.getConfig();
    String license = settingConfig.warp.license;
    Future<List<GroupItem>> getOptions(BuildContext context) async {
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
                      SettingManager.saveConfig();
                    }

                    return true;
                  },
                )));
    setState(() {});
  }

  Future<void> onTapLatencyTest() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.url,
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
                name: tcontext.latencyTestTimeout,
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
                  title: tcontext.latencyTest,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapPort() async {
    final tcontext = Translations.of(context);
    const int minPort = 2048;
    const int maxPort = 65535;
    Future<List<GroupItem>> getOptions(BuildContext context) async {
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
        PlatformUtils.isPC()
            ? GroupItemOptions(
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
            : GroupItemOptions(),
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("portSetting"),
            builder: (context) => GroupScreen(
                  title: tcontext.SettingsScreen.portSetting,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapNTP() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      var settingConfig = SettingManager.getConfig();

      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
          name: tcontext.enable,
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
                onPicker: (String? selected) async {
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
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(BuildContext context) async {
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
              bool admin = await VPNService.isRunAsAdmin();
              if (!admin) {
                await DialogUtils.showAlertDialog(
                    context, tcontext.SettingsScreen.tunModeRunAsAdmin);
                return;
              }
            }
            settingConfig.tun.enable = value;
            SettingManager.setDirty(true);
            setState(() {});
          },
        )),
        !settingConfig.novice
            ? GroupItemOptions(
                timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
                    name: "UDP ${tcontext.timeout}",
                    duration: settingConfig.tun.udpTimeout,
                    showDisable: false,
                    onPicker: (bool canceled, Duration? duration) async {
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
                      setState(() {});
                    }))
            : GroupItemOptions(),
        !settingConfig.novice
            ? GroupItemOptions(
                textFormFieldOptions: GroupItemTextFieldOptions(
                    name: "MTU",
                    text: settingConfig.tun.mtu.toString(),
                    textWidthPercent: 0.5,
                    onChanged: (String value) {
                      settingConfig.tun.mtu = int.tryParse(value) ?? 9000;
                      SettingManager.setDirty(true);
                    }))
            : GroupItemOptions(),
        !settingConfig.novice
            ? GroupItemOptions(
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
                            setState(() {});
                          }))
            : GroupItemOptions(),
        !settingConfig.novice && Platform.isWindows
            ? GroupItemOptions(
                switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.tunAutoRoute,
                tips: tcontext.SettingsScreen.tunStrictRouteTips,
                switchValue: settingConfig.tun.autoRoute,
                onSwitch: !tunMode
                    ? null
                    : (bool value) async {
                        settingConfig.tun.autoRoute = value;
                        SettingManager.setDirty(true);
                        setState(() {});
                      },
              ))
            : GroupItemOptions(),
        !settingConfig.novice
            ? GroupItemOptions(
                switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.tunStrictRoute,
                tips: tcontext.SettingsScreen.tunStrictRouteTips,
                switchValue: settingConfig.tun.strictRoute,
                onSwitch: !tunMode ||
                        (Platform.isWindows && !settingConfig.tun.autoRoute)
                    ? null
                    : (bool value) async {
                        settingConfig.tun.strictRoute = value;
                        SettingManager.setDirty(true);
                        setState(() {});
                      },
              ))
            : GroupItemOptions(),
        !settingConfig.novice && Platform.isAndroid
            ? GroupItemOptions(
                switchOptions: GroupItemSwitchOptions(
                    name: tcontext.SettingsScreen.allowBypass,
                    switchValue: settingConfig.tun.allowBypass,
                    onSwitch: !tunMode
                        ? null
                        : (bool value) async {
                            settingConfig.tun.allowBypass = value;
                            SettingManager.setDirty(true);
                            setState(() {});
                          }))
            : GroupItemOptions(),
        Platform.isAndroid
            ? GroupItemOptions(
                pushOptions: GroupItemPushOptions(
                    name: tcontext.PerAppAndroidScreen.title,
                    onPush: !tunMode
                        ? null
                        : () async {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    settings:
                                        PerAppAndroidScreen.routSettings(),
                                    builder: (context) =>
                                        const PerAppAndroidScreen()));
                          }))
            : GroupItemOptions(),
        !settingConfig.novice && PlatformUtils.isMobile()
            ? GroupItemOptions(
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
                            setState(() {});
                          }))
            : GroupItemOptions(),
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
    setState(() {});
  }

  Future<void> onTapTLS() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options0 = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.tlsInsecureEnable,
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
                name: tcontext.SettingsScreen.tlsFragmentEnable,
                switchValue: settingConfig.tls.enableFragment,
                onSwitch: (bool value) async {
                  settingConfig.tls.enableFragment = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: tcontext.SettingsScreen.tlsFragmentSize,
                text: settingConfig.tls.fragmentSize,
                hint: "1-256",
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
                name: tcontext.SettingsScreen.tlsFragmentSleep,
                text: settingConfig.tls.fragmentSleep,
                hint: "0-1000",
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
                name: tcontext.SettingsScreen.tlsMixedCaseSNIEnable,
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
                name: tcontext.SettingsScreen.tlsPaddingEnable,
                switchValue: settingConfig.tls.enablePadding,
                onSwitch: (bool value) async {
                  settingConfig.tls.enablePadding = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: tcontext.SettingsScreen.tlsPaddingSize,
                text: settingConfig.tls.paddingSize,
                hint: "1-1500",
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
                  title: tcontext.tls,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  Future<void> onTapMux() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.enable,
                switchValue: settingConfig.mux.enable,
                onSwitch: (bool value) async {
                  settingConfig.mux.enable = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            stringPickerOptions: GroupItemStringPickerOptions(
                name: tcontext.protocol,
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

  Future<void> onTapSniff() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.enable,
                switchValue: settingConfig.sniff.enable,
                onSwitch: (bool value) async {
                  settingConfig.sniff.enable = value;
                  SettingManager.setDirty(true);
                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.protocolSniffOverrideDestination,
                switchValue: settingConfig.sniff.overrideDestination,
                onSwitch: !settingConfig.sniff.enable
                    ? null
                    : (bool value) async {
                        settingConfig.sniff.overrideDestination = value;
                        SettingManager.setDirty(true);
                        setState(() {});
                      })),
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("protocolSniff"),
            builder: (context) => GroupScreen(
                  title: tcontext.protocolSniff,
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
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            timerIntervalPickerOptions: GroupItemTimerIntervalPickerOptions(
                name: tcontext.SettingsScreen.autoSelectServerInterval,
                tips: tcontext.SettingsScreen.autoSelectServerIntervalTips,
                duration: settingConfig.autoSelect.timerInterval,
                showDisable: false,
                onPicker: (bool canceled, Duration? duration) async {
                  if (canceled) {
                    return;
                  }
                  if (duration != null && duration.inMinutes < 3) {
                    duration = const Duration(minutes: 3);
                  }
                  if (duration == settingConfig.autoSelect.timerInterval) {
                    return;
                  }

                  settingConfig.autoSelect.timerInterval =
                      duration ?? const Duration(hours: 8);
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
        GroupItemOptions(
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
                })),
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
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      var settingConfig = SettingManager.getConfig();

      String ipLocal = "127.0.0.1";
      String ipInterface = ipLocal;
      if (settingConfig.proxy.getAllowAllInbounds() ||
          settingConfig.proxy.getClusterAllowAllInbounds()) {
        List<NetInterfacesInfo> interfaces = await NetworkUtils.getInterfaces(
            addressType: InternetAddressType.IPv4);
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
                name: tcontext.netInterfaces,
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
                })),
      ];

      List<GroupItemOptions> options2 = [
        PlatformUtils.isPC()
            ? GroupItemOptions(
                switchOptions: GroupItemSwitchOptions(
                    name: tcontext.SettingsScreen.enableCluster,
                    switchValue: settingConfig.proxy.enableCluster,
                    onSwitch: (bool value) async {
                      settingConfig.proxy.enableCluster = value;
                      SettingManager.setDirty(true);

                      setState(() {});
                    }))
            : GroupItemOptions(),
        PlatformUtils.isPC()
            ? GroupItemOptions(
                switchOptions: GroupItemSwitchOptions(
                    name: tcontext.SettingsScreen.clusterAllowOtherHostsConnect,
                    tips: tcontext.SettingsScreen
                        .clusterAllowOtherHostsConnectTips(
                            ip: settingConfig.proxy.getClusterAllowAllInbounds()
                                ? ipInterface
                                : ipLocal,
                            port: settingConfig.proxy.clusterPort),
                    switchValue:
                        settingConfig.proxy.getClusterAllowAllInbounds(),
                    onSwitch: (bool value) async {
                      settingConfig.proxy.setClusterAllowAllInbounds(value);
                      SettingManager.setDirty(true);

                      setState(() {});
                    }))
            : GroupItemOptions(),
        /*GroupItemOptions(
                type: "push",
                text: tcontext.SettingsScreen.clusterAuth,
               
                onPush: () {}),*/
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
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.MyProfilesScreen.title,
                switchValue: settingConfig.uiScreen.homeShowMyProfiles,
                onSwitch: (bool value) async {
                  settingConfig.uiScreen.homeShowMyProfiles = value;

                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.addProfile,
                switchValue: settingConfig.uiScreen.homeShowAddProfile,
                onSwitch: (bool value) async {
                  settingConfig.uiScreen.homeShowAddProfile = value;

                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.dns,
                switchValue: settingConfig.uiScreen.homeShowDNS,
                onSwitch: (bool value) async {
                  settingConfig.uiScreen.homeShowDNS = value;

                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.diversion,
                switchValue: settingConfig.uiScreen.homeShowDeversion,
                onSwitch: (bool value) async {
                  settingConfig.uiScreen.homeShowDeversion = value;

                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.NetCheckScreen.title,
                switchValue: settingConfig.uiScreen.homeShowNetcheck,
                onSwitch: (bool value) async {
                  settingConfig.uiScreen.homeShowNetcheck = value;

                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.speedTest,
                switchValue: settingConfig.uiScreen.homeShowSpeedtest,
                onSwitch: (bool value) async {
                  settingConfig.uiScreen.homeShowSpeedtest = value;

                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.myLink,
                switchValue: settingConfig.uiScreen.homeShowMyLink,
                onSwitch: (bool value) async {
                  settingConfig.uiScreen.homeShowMyLink = value;

                  setState(() {});
                })),
        PlatformUtils.isMobile()
            ? GroupItemOptions(
                switchOptions: GroupItemSwitchOptions(
                    name: tcontext.appleTV,
                    switchValue: settingConfig.uiScreen.homeShowAppleTV,
                    onSwitch: (bool value) async {
                      settingConfig.uiScreen.homeShowAppleTV = value;

                      setState(() {});
                    }))
            : GroupItemOptions(),
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

  Future<void> onTapMyLink() async {
    final tcontext = Translations.of(context);

    String? text = await DialogUtils.showTextInputDialog(
        context,
        tcontext.SettingsScreen.myLink,
        SettingManager.getConfig().uiScreen.myLink,
        null,
        null, (text) {
      text = text.trim();
      if (text.isEmpty) {
        return true;
      }
      Uri? uri = Uri.tryParse(text);
      if (uri == null || !uri.hasScheme || uri.host.isEmpty) {
        DialogUtils.showAlertDialog(
            context, tcontext.SettingsScreen.myLinkInvalid);
        return false;
      }
      return true;
    });
    if (text == null) {
      return;
    }
    SettingManager.getConfig().uiScreen.myLink = text;
    SettingManager.saveConfig();
    setState(() {});
  }

  Future<String> onTapFilterInvalidServerNum() async {
    final tcontext = Translations.of(context);

    String? text = await DialogUtils.showTextInputDialog(
        context,
        tcontext.SettingsScreen.autoSelectServerLimitedNum,
        SettingManager.getConfig().autoSelect.limitedNum.toString(),
        null, [
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
    SettingManager.setDirty(true);
    SettingManager.saveConfig();
    setState(() {});
    return "";
  }

  Future<void> onTapHandleScheme() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(BuildContext context) async {
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

  Future<void> onTapTimeConnectOrDisconnect() async {
    //todo android https://www.eolink.com/news/post/51689.html   https://www.jianshu.com/p/d6a02839ff27
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      var settingConfig = SettingManager.getConfig();
      List<GroupItemOptions> options = [
        GroupItemOptions(
            timerPickerOptions: GroupItemTimerPickerOptions(
                name: tcontext.connect,
                duration: settingConfig.timeConnect,
                onPicker: (Duration? duration) async {
                  if (duration != null &&
                      settingConfig.timeDisconnect != null) {
                    var dif = (duration - settingConfig.timeDisconnect!).abs();
                    if (dif.inMinutes < 5) {
                      DialogUtils.showAlertDialog(
                          context,
                          tcontext.SettingsScreen
                              .timeConnectAndDisconnectInterval(p: 5));
                      return;
                    }
                  }
                  settingConfig.timeConnect = duration;
                  SettingManager.setDirty(true);
                  SettingManager.saveConfig();
                  setState(() {});
                })),
        GroupItemOptions(
            timerPickerOptions: GroupItemTimerPickerOptions(
                name: tcontext.disconnect,
                duration: settingConfig.timeDisconnect,
                onPicker: (Duration? duration) async {
                  if (duration != null &&
                      settingConfig.timeDisconnect != null) {
                    var dif = (duration - settingConfig.timeConnect!).abs();
                    if (dif.inMinutes < 5) {
                      DialogUtils.showAlertDialog(
                          context,
                          tcontext.SettingsScreen
                              .timeConnectAndDisconnectInterval(p: 5));
                      return;
                    }
                  }
                  settingConfig.timeDisconnect = duration;
                  SettingManager.setDirty(true);
                  SettingManager.saveConfig();
                  setState(() {});
                })),
      ];
      return [GroupItem(options: options)];
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
          }
        }
      }
    } catch (err, stacktrace) {
      if (!exist && created) {
        await dir!.delete();
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }
    await VPNService.uninit();
    await ServicesBinding.instance.exitApplication(AppExitType.required);
  }
}
