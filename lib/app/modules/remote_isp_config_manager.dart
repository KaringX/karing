// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/modules/remote_isp_config.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/did.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/karing_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:vpn_service/state.dart';

class RemoteISPConfigManager {
  static final List<void Function()> onEventCheck = [];

  static bool _checking = false;
  static Duration _duration = const Duration(hours: 3);
  static RemoteISPConfig _config = RemoteISPConfig();

  static Future<void> init() async {
    await _loadConfig();
    VPNService.onEventStateChanged
        .add((FlutterVpnServiceState state, Map<String, String> params) async {
      if (state == FlutterVpnServiceState.connected) {
        Future.delayed(const Duration(seconds: 3), () async {
          _check();
        });
      }
    });
    AppLifecycleStateNofity.onStateResumed(null, () {
      Future.delayed(const Duration(seconds: 3), () async {
        _check();
      });
    });
    bool first = await Did.getFirstTime();
    Duration duration =
        first ? const Duration(milliseconds: 10) : const Duration(seconds: 3);
    Future.delayed(duration, () async {
      _check();
    });
  }

  static Future<void> uninit() async {}

  static RemoteISPConfig getConfig() {
    return _config;
  }

  static Future<void> _loadConfig() async {
    try {
      _config = RemoteISPConfig();
      String filePath = await PathUtils.remoteISPConfigFilePath();
      var file = File(filePath);
      bool exists = await file.exists();
      if (exists) {
        String content = await file.readAsString();
        if (content.isNotEmpty) {
          var config = jsonDecode(content);
          _config.fromJson(config);
          return;
        }
      }
    } catch (err, stacktrace) {}
    //_config = await RemoteISPConfig.getLocalConfig();
  }

  static Future<void> _saveConfig() async {
    String filePath = await PathUtils.remoteISPConfigFilePath();
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(_config.toJson());
    try {
      await File(filePath).writeAsString(content, flush: true);
      if (!await FileUtils.validJsonFile(filePath)) {
        await File(filePath).writeAsString(content, flush: true);
      }
    } catch (err, stacktrace) {}
  }

  static Future<void> _check() async {
    if (_config.id.isEmpty) {
      return;
    }
    if (_checking) {
      return;
    }

    var last = DateTime.tryParse(_config.latestCheck);
    DateTime now = DateTime.now();
    if (last != null) {
      Duration dur = now.difference(last);
      if (dur.inSeconds < _duration.inSeconds) {
        return;
      }
    }
    _config.latestCheck = now.toString();
    _checking = true;
    try {
      ReturnResult<RemoteISPConfig> gConfig =
          await KaringUtils.getRemoteISPConfig(_config.id);
      if (gConfig.error != null) {
        _checking = false;
        _duration = const Duration(minutes: 10);
        _saveConfig();
        return;
      }
      _duration = const Duration(hours: 3);
      _config = gConfig.data!;
      _config.latestCheck = now.toString();

      _saveConfig();
      Future.delayed(const Duration(milliseconds: 300), () async {
        for (var callback in onEventCheck) {
          callback();
        }
      });
    } catch (err, _) {
      Log.w("RemoteISPConfigManager._check exception ${err.toString()}");
    }

    _checking = false;
    Future.delayed(_duration, () async {
      await _check();
    });
  }

  static Future<void> reset(RemoteISPConfig isp) async {
    _config = isp;
    await _saveConfig();
  }
}
