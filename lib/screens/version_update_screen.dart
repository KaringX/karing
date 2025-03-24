// ignore_for_file: unused_catch_stack

import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_installer/app_installer.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/auto_update_manager.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:open_file/open_file.dart';

class VersionUpdateScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "VersionUpdateScreen");
  }

  final bool force;
  const VersionUpdateScreen({super.key, required this.force});

  @override
  State<VersionUpdateScreen> createState() => _VersionUpdateScreenState();
}

class _VersionUpdateScreenState
    extends LasyRenderingState<VersionUpdateScreen> {
  @override
  void initState() {
    super.initState();
    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeApp,
        name: 'USS',
        parameters: {
          "platform": Platform.operatingSystem,
        },
        repeatable: false);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    var checkVersion = AutoUpdateManager.getVersionCheck();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(),
      ),
      body: Stack(
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
                    Text(
                      tcontext.VersionUpdateScreen.versionReady(
                          p: checkVersion.version),
                      style: const TextStyle(
                        fontSize: ThemeConfig.kFontSizeListItem,
                        fontWeight: ThemeConfig.kFontWeightListItem,
                        color: ThemeDefine.kColorBlue,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: 45.0,
                        child: ElevatedButton(
                          child: Text(tcontext.VersionUpdateScreen.update),
                          onPressed: () async {
                            await checkReplace();
                          },
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    widget.force && checkVersion.force
                        ? const SizedBox(
                            height: 30,
                          )
                        : SizedBox(
                            height: 45.0,
                            child: ElevatedButton(
                              child: Text(tcontext.VersionUpdateScreen.cancel),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            )),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> checkReplace() async {
    if (!Platform.isWindows && !Platform.isAndroid) {
      return;
    }
    String? installer = await AutoUpdateManager.checkReplace();
    if (!mounted) {
      return;
    }
    if (installer == null) {
      Navigator.pop(context);
      return;
    }

    try {
      if (Platform.isWindows) {
        await VPNService.uninit();
        await OpenFile.open(installer, type: "application/octet-stream");
        await ServicesBinding.instance.exitApplication(AppExitType.required);
      } else if (Platform.isAndroid) {
        await AppInstaller.installApk(installer);
      }
    } catch (err, stacktrace) {
      Log.w("VersionUpdateScreen.checkReplace exception ${err.toString()}");
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }
}
