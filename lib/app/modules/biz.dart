//import 'package:device_info_plus/device_info_plus.dart';

import 'package:flutter/cupertino.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';

import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/modules/auto_update_manager.dart';
import 'package:karing/app/modules/notice_manager.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/main_channel_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/common_dialog.dart';
import 'package:karing/screens/dialog_utils.dart';

class Biz {
  static final List<void Function()> onEventInitFinish = [];
  static final List<void Function()> onEventInitHomeFinish = [];
  static final List<void Function()> onEventInitAllFinish = [];
  static bool _initFinish = false;
  static bool _initHomeFinish = false;
  static Future<ReturnResultError?> Function(String from)?
      onEventRequestStartVPN;
  static void Function()? onEventExit;
  static void Function(bool)? onEventVPNStateChanged;

  static Future<void> init(bool launchAtStartup) async {
    //await PersistStorage.init();

    await ServerManager.init();
    await VPNService.init();
    MainChannel.init();

    for (var callback in onEventInitFinish) {
      callback();
    }
    _initFinish = true;
    Log.d("initFinish");
    initAllFinish();

    AppLifecycleStateNofity.init();
    AutoUpdateManager.init();
    NoticeManager.init();
  }

  static Future<void> uninit() async {
    await NoticeManager.uninit();
    await AutoUpdateManager.uninit();
    AppLifecycleStateNofity.uninit();
    MainChannel.uninit();
    await VPNService.uninit();
    await ServerManager.uninit();
  }

  static void clearCache() {
    //PersistStorage.cleanAll();
  }

  static void initHomeFinish() {
    for (var callback in onEventInitHomeFinish) {
      callback();
    }
    _initHomeFinish = true;
    Log.d("initHomeFinish");
    initAllFinish();
  }

  static void initAllFinish() {
    if (_initFinish && _initHomeFinish) {
      Log.d("initAllFinish");
      for (var callback in onEventInitAllFinish) {
        callback();
      }
    }
  }

  static Future<bool> startVPN(
      BuildContext context, bool reloadIfDirty, String from) async {
    bool started = await VPNService.getStarted();
    if (!context.mounted) {
      return false;
    }
    if (started && reloadIfDirty) {
      if (ServerManager.getDirty() || SettingManager.getDirty()) {
        ServerManager.setDirty(false);
        SettingManager.setDirty(false);
        await VPNService.stop();
        started = false;
      }
    }
    if (started) {
      return true;
    }
    if (!context.mounted) {
      return false;
    }
    final tcontext = Translations.of(context);
    DialogUtils.showLoadingDialog(context, text: tcontext.meta.connecting);
    ReturnResultError? err = await Biz._startVPN(from);
    if (!context.mounted) {
      return false;
    }
    Navigator.pop(context);
    if (err != null) {
      CommonDialog.handleStartError(context, err.message);
      return false;
    }

    return true;
  }

  static Future<ReturnResultError?> _startVPN(String from) async {
    if (onEventRequestStartVPN != null) {
      return await onEventRequestStartVPN!(from);
    }
    return ReturnResultError("startVPN failed: no provider");
  }

  static void quit() {
    Future.delayed(const Duration(milliseconds: 10), () {
      if (onEventExit != null) {
        onEventExit!();
      }
    });
  }

  static void vpnStateChanged(bool isConnected) {
    if (onEventVPNStateChanged != null) {
      onEventVPNStateChanged!(isConnected);
    }
  }
}
