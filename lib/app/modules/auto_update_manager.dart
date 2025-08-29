// ignore_for_file: unused_catch_stack, empty_catches

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/download_utils.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/install_referrer_utils.dart';
import 'package:karing/app/utils/karing_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/version_compare_utils.dart';
import 'package:path/path.dart' as path;
import 'package:vpn_service/state.dart';

class AutoUpdateCheckVersion {
  String latestCheck = "";
  bool newVersion = false;
  String version = "";
  String url = "";
  bool force = false;
  Map<String, dynamic> toJson() => {
        'latest_check': latestCheck,
        'new_version': newVersion,
        "version": version,
        "url": url,
        "force": force,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    latestCheck = map["latest_check"] ?? "";
    newVersion = map["new_version"] ?? "";
    version = map["version"] ?? "";
    url = map["url"] ?? "";
    force = map["force"] ?? false;
  }

  static AutoUpdateCheckVersion fromJsonStatic(Map<String, dynamic>? map) {
    AutoUpdateCheckVersion config = AutoUpdateCheckVersion();
    config.fromJson(map);
    return config;
  }

  Future<String> getDownloadPath() async {
    String ext = "";
    if (Platform.isAndroid) {
      ext = ".apk";
    } else if (Platform.isWindows) {
      ext = ".exe";
    } else if (Platform.isMacOS) {
      ext = ".dmg";
    }
    final newPath = path.join(await PathUtils.cacheDir(), version);
    return "$newPath$ext";
  }

  void clear() {
    latestCheck = "";
    newVersion = false;
    version = "";
    url = "";
    force = false;
  }
}

class AutoUpdateManager {
  static final List<void Function()> onEventCheck = [];
  static bool _checking = false;
  static bool _downloading = false;
  static Duration _duration = const Duration(hours: 3);
  static final AutoUpdateCheckVersion _versionCheck = AutoUpdateCheckVersion();

  static bool isSupport() {
    return Platform.isWindows || Platform.isAndroid || Platform.isMacOS;
  }

  static List<String> updateChannels() {
    return [
      "beta",
      "stable",
    ];
  }

  static Future<void> init() async {
    await loadConfig();
    String version = AppUtils.getBuildinVersion();

    if (VersionCompareUtils.compareVersion(version, _versionCheck.version) >=
        0) {
      if (_versionCheck.version.isNotEmpty) {
        if (isSupport()) {
          String downloadPath = await _versionCheck.getDownloadPath();
          Future.delayed(const Duration(seconds: 10), () async {
            FileUtils.deletePath(downloadPath);
          });
        }
      }

      _versionCheck.clear();

      saveConfig();
    }
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
    Future.delayed(const Duration(seconds: 3), () async {
      _check();
    });
  }

  static Future<void> uninit() async {}
  static void updateChannelChanged() {
    _versionCheck.clear();
    _check();
  }

  static AutoUpdateCheckVersion getVersionCheck() {
    return _versionCheck;
  }

  static Future<void> loadConfig() async {
    String filePath = await PathUtils.autoUpdateFilePath();
    var file = File(filePath);
    bool exists = await file.exists();
    if (!exists) {
      return;
    }
    try {
      String content = await file.readAsString();
      if (content.isNotEmpty) {
        var config = jsonDecode(content);
        _versionCheck.fromJson(config);
      }
    } catch (err, stacktrace) {}
  }

  static void saveConfig() async {
    String filePath = await PathUtils.autoUpdateFilePath();
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(_versionCheck.toJson());
    try {
      await File(filePath).writeAsString(content, flush: true);
      if (!await FileUtils.validJsonFile(filePath)) {
        await File(filePath).writeAsString(content, flush: true);
      }
    } catch (err, stacktrace) {
      ErrorReporterUtils.tryReportNoSpace(err.toString());
    }
  }

  static Future<String?> checkReplace() async {
    if (!isSupport()) {
      return null;
    }
    if (_versionCheck.version.isEmpty) {
      return null;
    }
    String version = AppUtils.getBuildinVersion();
    String downloadPath = await _versionCheck.getDownloadPath();

    if (VersionCompareUtils.compareVersion(version, _versionCheck.version) <
        0) {
      var file = File(downloadPath);
      bool exist = await file.exists();
      if (exist) {
        return downloadPath;
      }
    }

    return null;
  }

  static Future<void> download() async {
    if (!isSupport()) {
      return;
    }

    if (_versionCheck.version.isEmpty || _versionCheck.url.isEmpty) {
      return;
    }
    if (_downloading) {
      return;
    }

    String version = AppUtils.getBuildinVersion();
    if (VersionCompareUtils.compareVersion(version, _versionCheck.version) <
        0) {
      String downloadPath = await _versionCheck.getDownloadPath();
      if (await File(downloadPath).exists()) {
        return;
      }
      String dir = await PathUtils.cacheDir();
      var files =
          FileUtils.recursionFile(dir, extensionFilter: {".exe", ".apk"});
      for (var file in files) {
        await FileUtils.deletePath(file);
      }
      Uri? uri = Uri.tryParse(_versionCheck.url);
      if (uri == null) {
        return;
      }
      if (_downloading) {
        return;
      }
      _downloading = true;
      final result = await DownloadUtils.download(uri, downloadPath);
      if (result.error != null) {
        if (result.error!.message.contains("404")) {
          _versionCheck.newVersion = false;
          _versionCheck.version = "";
          _versionCheck.url = "";
          _versionCheck.force = false;

          saveConfig();
        }
      }
      _downloading = false;
      Future.delayed(const Duration(milliseconds: 300), () async {
        for (var callback in onEventCheck) {
          callback();
        }
      });
    }
  }

  static Future<void> _check() async {
    if (_checking) {
      return;
    }

    var last = DateTime.tryParse(_versionCheck.latestCheck);
    DateTime now = DateTime.now();
    if (last != null) {
      Duration dur = now.difference(last);
      if (dur.inSeconds < _duration.inSeconds) {
        await download();
        return;
      }
    }
    var autoUpdateChannel = SettingManager.getConfig().autoUpdateChannel;
    if (!updateChannels().contains(autoUpdateChannel)) {
      autoUpdateChannel = "beta";
    }
    _versionCheck.latestCheck = now.toString();
    _checking = true;
    try {
      ReturnResult<List<KaringAutoupdateItem>> items =
          await KaringUtils.getAutoupdate();
      if (items.error != null) {
        _checking = false;
        _duration = const Duration(minutes: 10);
        saveConfig();
        return;
      }
      _duration = const Duration(hours: 3);
      if (items.data!.isNotEmpty) {
        final abis = VPNService.getABIs();

        String channel = await InstallReferrerUtils.getString();
        String version = AppUtils.getBuildinVersion();

        _versionCheck.newVersion = false;
        _versionCheck.version = "";
        _versionCheck.url = "";
        _versionCheck.force = false;

        for (var item in items.data!) {
          if (item.platform != Platform.operatingSystem) {
            continue;
          }
          if (!item.updateChannel.contains(autoUpdateChannel)) {
            continue;
          }
          if (item.version.isEmpty || item.url.isEmpty) {
            continue;
          }
          if (abis.isNotEmpty && item.abis.isNotEmpty) {
            bool hasAbi = false;
            for (var abi in abis) {
              abi = abi.trim();
              if (abi.isEmpty ||
                  item.abis.contains("*") ||
                  item.abis.contains(abi)) {
                hasAbi = true;
                break;
              }
            }
            if (!hasAbi) {
              continue;
            }
          }

          if (item.channels.contains("*") || item.channels.contains(channel)) {
            if (VersionCompareUtils.compareVersion(version, item.version) < 0) {
              _versionCheck.newVersion = true;
              _versionCheck.version = item.version;
              _versionCheck.url = item.url;
              _versionCheck.force = item.force;
            }

            break;
          }
        }

        Future.delayed(const Duration(milliseconds: 300), () async {
          for (var callback in onEventCheck) {
            callback();
          }
        });
        saveConfig();
        await download();
      }
    } catch (err, _) {
      Log.w("AutoUpdateManager._check exception ${err.toString()}");
    }

    _checking = false;
    Future.delayed(_duration, () async {
      await _check();
    });
  }
}
