// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/cloudflare_warp_utils.dart';
import 'package:karing/app/utils/cloudflare_warp_api.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';

class CloudflareWarpAccountScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "CloudflareWarpAccountScreen");
  }

  const CloudflareWarpAccountScreen({super.key});

  @override
  State<CloudflareWarpAccountScreen> createState() =>
      _CloudflareWarpAccountScreenState();
}

class _CloudflareWarpAccountScreenState
    extends LasyRenderingState<CloudflareWarpAccountScreen>
    with AfterLayoutMixin {
  static bool _loading = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    var settingConfig = SettingManager.getConfig();
    if (settingConfig.warp.account.license.isNotEmpty) {
      await CloudflareWarpApi.getDevice(settingConfig.warp.account.deviceId,
          settingConfig.warp.account.token);
      //await CloudflareWarpApi.getDevices(
      //    warpConfig.warpAccount.deviceId, warpConfig.warpAccount.token);
    }
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    var settingConfig = SettingManager.getConfig();

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
                      child: const Text(
                        "Account",
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    Row(
                      children: [
                        _loading
                            ? const Row(
                                children: [
                                  SizedBox(
                                    width: 12,
                                  ),
                                  SizedBox(
                                    width: 26,
                                    height: 26,
                                    child: RepaintBoundary(
                                      child: CircularProgressIndicator(
                                          strokeWidth: 2),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 12,
                                  )
                                ],
                              )
                            : InkWell(
                                onTap: () async {
                                  /* var result =
                                      await CloudflareWarpUtils.genFreeWarpConfig();
                                  if (result.data != null) {
                                    String content =
                                        const JsonEncoder.withIndent(null)
                                            .convert(result.data);
                                    print(content);
                                  }*/

                                  if (settingConfig
                                      .warp.account.license.isNotEmpty) {
                                    settingConfig.warp.account = WarpAccount();
                                    SettingManager.saveConfig();
                                    if (!mounted) {
                                      return;
                                    }
                                    setState(() {});
                                    return;
                                  }
                                  if (_loading) {
                                    return;
                                  }
                                  _loading = true;
                                  setState(() {});

                                  ReturnResult<WarpAccount> account =
                                      await CloudflareWarpUtils
                                          .gen25PBWarpAccount();

                                  if (account.error != null) {
                                    if (!context.mounted) {
                                      return;
                                    }
                                    DialogUtils.showAlertDialog(
                                        context, account.error!.message,
                                        showCopy: true,
                                        showFAQ: true,
                                        withVersion: true);
                                  } else {
                                    settingConfig.warp.account = account.data!;
                                    SettingManager.saveConfig();
                                  }
                                  _loading = false;
                                  if (!mounted) {
                                    return;
                                  }
                                  setState(() {});
                                },
                                child: SizedBox(
                                  width: 50,
                                  height: 30,
                                  child: settingConfig
                                          .warp.account.license.isNotEmpty
                                      ? const Icon(
                                          Icons.clear_outlined,
                                          size: 26,
                                          color: Colors.red,
                                        )
                                      : const Icon(
                                          Icons.cloud_download_outlined,
                                          size: 26,
                                        ),
                                ),
                              ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(children: [
                  FutureBuilder(
                    future: getGroupOptions(),
                    builder: (BuildContext context,
                        AsyncSnapshot<List<GroupItem>> snapshot) {
                      List<GroupItem> data =
                          snapshot.hasData ? snapshot.data! : [];
                      return Column(
                          children:
                              GroupItemCreator.createGroups(context, data));
                    },
                  ),
                ]),
              )),
            ],
          ),
        ),
      ),
    );
  }

  Future<List<GroupItem>> getGroupOptions() async {
    final tcontext = Translations.of(context);
    var settingConfig = SettingManager.getConfig();

    List<GroupItem> groupOptions = [];
    List<GroupItemOptions> options = [
      GroupItemOptions(
          textOptions: GroupItemTextOptions(
        name: "Account Type",
        text: settingConfig.warp.account.accountType,
      )),
      GroupItemOptions(
          textOptions: GroupItemTextOptions(
              name: "Account Id",
              text: settingConfig.warp.account.id,
              onPush: () async {
                try {
                  await Clipboard.setData(
                      ClipboardData(text: settingConfig.warp.account.id));
                } catch (e) {}
              })),
      GroupItemOptions(
          textOptions: GroupItemTextOptions(
        name: "Warp+",
        text: settingConfig.warp.account.warpPlus ? "YES" : "NO",
      )),
      GroupItemOptions(
          textOptions: GroupItemTextOptions(
              name: "License",
              text: settingConfig.warp.account.license,
              onPush: () async {
                try {
                  await Clipboard.setData(
                      ClipboardData(text: settingConfig.warp.account.license));
                } catch (e) {}
              })),
      GroupItemOptions(
          textOptions: GroupItemTextOptions(
        name: "Premium Data",
        text: ProxyConfUtils.convertTrafficToStringDouble(
            settingConfig.warp.account.premiumData),
      )),
      /* GroupItemOptions(
          textOptions: GroupItemTextOptions(
        name: "Usage",
        text: ProxyConfUtils.convertTrafficToStringDouble(
            warpConfig.warpAccount.usage),
      )),*/
    ];
    groupOptions.add(GroupItem(options: options));
    return groupOptions;
  }
}
