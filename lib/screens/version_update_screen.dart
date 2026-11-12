import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:ui';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_installer/app_installer.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/auto_update_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/install_referrer_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:url_launcher/url_launcher.dart';

class VersionUpdateScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routeSettings() {
    return const RouteSettings(name: "VersionUpdateScreen");
  }

  const VersionUpdateScreen({super.key});

  @override
  State<VersionUpdateScreen> createState() => _VersionUpdateScreenState();
}

class _VersionUpdateScreenState
    extends LasyRenderingState<VersionUpdateScreen> {
  bool _installing = false;
  @override
  void initState() {
    super.initState();
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
      appBar: PreferredSize(preferredSize: Size.zero, child: AppBar()),
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
                    if (Platform.isAndroid) ...[
                      FutureBuilder(
                        future: getAndroidInstallTips(),
                        builder:
                            (
                              BuildContext context,
                              AsyncSnapshot<Widget> snapshot,
                            ) {
                              return snapshot.data ?? SizedBox.shrink();
                            },
                      ),
                    ],
                    Text(
                      "${SettingManager.getConfig().autoUpdateChannel} ${tcontext.VersionUpdateScreen.versionReady(p: checkVersion.version)}",
                      style: const TextStyle(
                        fontSize: ThemeConfig.kFontSizeListItem,
                        fontWeight: ThemeConfig.kFontWeightListItem,
                        color: ThemeDefine.kColorBlue,
                      ),
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      height: 45.0,
                      child: ElevatedButton(
                        onPressed: _installing
                            ? null
                            : () async {
                                await checkReplace();
                              },
                        child: _installing
                            ? SizedBox(
                                width: 26,
                                height: 26,
                                child: RepaintBoundary(
                                  child: CircularProgressIndicator(
                                    color: ThemeDefine.kColorGreenBright,
                                  ),
                                ),
                              )
                            : Text(tcontext.VersionUpdateScreen.update),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: _installing
                          ? null
                          : () {
                              if (!_installing) {
                                Navigator.maybePop(context);
                              }
                            },
                      child: Text(tcontext.VersionUpdateScreen.cancel),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<Widget> getAndroidInstallTips() async {
    if (SettingManager.getConfig().regionCode.toLowerCase() != "cn") {
      return SizedBox.shrink();
    }
    final List<ConnectivityResult> connectivityResult = await (Connectivity()
        .checkConnectivity());
    if (connectivityResult.contains(ConnectivityResult.none)) {
      return SizedBox.shrink();
    }
    if (!mounted) {
      return SizedBox.shrink();
    }
    final tcontext = Translations.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          tcontext.turnOffNetworkBeforeInstall,
          style: const TextStyle(
            fontSize: ThemeConfig.kFontSizeListItem,
            fontWeight: ThemeConfig.kFontWeightListItem,
            color: Colors.red,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  Future<void> checkReplace() async {
    if (_installing) {
      return;
    }
    final route = ModalRoute.of(context);
    _installing = true;
    setState(() {});
    try {
      final installer = await AutoUpdateManager.checkReplace();
      if (!mounted || route?.isCurrent == false) {
        return;
      }
      if (installer == null) {
        Navigator.pop(context);
        return;
      }
      await VPNService.stop();
      if (!mounted || route?.isCurrent == false) {
        return;
      }
      if (Platform.isWindows) {
        await launchUrl(Uri(path: installer, scheme: 'file'));
        await ServicesBinding.instance.exitApplication(AppExitType.required);
      } else if (Platform.isMacOS) {
        await launchUrl(Uri(path: installer, scheme: 'file'));
        await ServicesBinding.instance.exitApplication(AppExitType.required);
      } else if (Platform.isAndroid) {
        await AppInstaller.installApk(installer);
      } else if (Platform.isLinux) {
        final channelName = InstallReferrerUtils.getBuildChannelName()
            .toLowerCase();
        if (channelName.contains("appimage")) {
          return;
        }
        final password = await DialogUtils.showPasswordInputDialog(context);
        if (!mounted ||
            route?.isCurrent == false ||
            password == null ||
            password.isEmpty) {
          return;
        }

        final isRpm = channelName.contains("rpm");
        final process = await Process.start("sudo", [
          "-S",
          "-p",
          "",
          isRpm ? "rpm" : "dpkg",
          isRpm ? "-U" : "-i",
          installer,
        ]);
        final stdin = process.stdin;
        stdin.writeln(password);
        final (exitCode, stderr, _, _) = await (
          process.exitCode,
          process.stderr
              .transform(const Utf8Decoder(allowMalformed: true))
              .join(),
          process.stdout.drain<void>(),
          // sudo may exit without reading stdin; use its exit status.
          stdin
              .flush()
              .whenComplete(stdin.close)
              .onError<IOException>((_, _) {}),
        ).wait;
        if (exitCode != 0) {
          if (!mounted || route?.isCurrent == false) {
            return;
          }
          final details = stderr.trim().replaceAll(password, '•••');
          await DialogUtils.showAlertDialog(
            context,
            "install $installer failed, exitCode: $exitCode"
            "${details.isEmpty ? '' : '\n\n$details'}",
            showCopy: true,
            showFAQ: true,
            withVersion: true,
          );
          return;
        }
        await ServicesBinding.instance.exitApplication(AppExitType.required);
      }
    } catch (err, stacktrace) {
      Log.w("VersionUpdateScreen.checkReplace exception ${err.toString()}");
      if (mounted && route?.isCurrent != false) {
        await DialogUtils.showExceptionDialog(context, err, stacktrace);
      }
    } finally {
      _installing = false;
      if (mounted) {
        setState(() {});
      }
    }
  }
}
