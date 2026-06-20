import 'dart:convert';
import 'dart:io';

import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:path/path.dart' as path;

class LocalSingboxConfigUtils {
  static const String fileName = "local_singbox_config.json";

  static Future<String> filePath() async {
    final dir = await PathUtils.profilesDir();
    return path.join(dir, fileName);
  }

  static Future<String> loadContent() async {
    final configured = SettingManager.getConfig().originSBProfile;
    final targetPath = configured.isNotEmpty ? configured : await filePath();
    final file = File(targetPath);
    if (await file.exists()) {
      return await file.readAsString();
    }
    return defaultConfig();
  }

  static Future<ReturnResultError?> saveContent(String content) async {
    final validation = validate(content);
    if (validation != null) {
      return validation;
    }

    final targetPath = await filePath();
    await FileUtils.createDir(path.dirname(targetPath));
    const encoder = JsonEncoder.withIndent('  ');
    final normalized = encoder.convert(jsonDecode(content));
    await File(targetPath).writeAsString(normalized, flush: true);
    SettingManager.getConfig().originSBProfile = targetPath;
    SettingManager.setDirty(true);
    return null;
  }

  static Future<void> clear() async {
    final configured = SettingManager.getConfig().originSBProfile;
    if (configured == await filePath()) {
      await FileUtils.deletePath(configured);
    }
    SettingManager.getConfig().originSBProfile = "";
    SettingManager.setDirty(true);
  }

  static ReturnResultError? validate(String content) {
    dynamic decoded;
    try {
      decoded = jsonDecode(content);
    } catch (err, stacktrace) {
      return ReturnResultError(err.toString(), stacktrace: stacktrace);
    }
    if (decoded is! Map<String, dynamic>) {
      return ReturnResultError("sing-box config must be a JSON object");
    }

    for (final listKey in ["inbounds", "outbounds", "endpoints", "services"]) {
      final value = decoded[listKey];
      if (value != null && value is! List) {
        return ReturnResultError("$listKey must be an array");
      }
      if (value is List && value.any((item) => item is! Map)) {
        return ReturnResultError("$listKey items must be objects");
      }
    }
    for (final objectKey in ["log", "dns", "ntp", "route", "experimental"]) {
      final value = decoded[objectKey];
      if (value != null && value is! Map) {
        return ReturnResultError("$objectKey must be an object");
      }
    }
    final experimental = decoded["experimental"];
    if (experimental is Map) {
      for (final objectKey in ["clash_api", "cache_file"]) {
        final value = experimental[objectKey];
        if (value != null && value is! Map) {
          return ReturnResultError("experimental.$objectKey must be an object");
        }
      }
    }
    return null;
  }

  static String defaultConfig() {
    const encoder = JsonEncoder.withIndent('  ');
    return encoder.convert({
      "log": {"level": "info", "timestamp": true},
      "experimental": {
        "clash_api": {},
        "cache_file": {"enabled": true},
      },
      "dns": {
        "servers": [
          {
            "tag": "tailscale-dns",
            "type": "tailscale",
            "endpoint": "tailscale",
            "accept_default_resolvers": true,
          },
        ],
      },
      "endpoints": [
        {
          "type": "tailscale",
          "tag": "tailscale",
          "state_directory": "tailscale",
          "auth_key": "",
          "control_url": "",
          "hostname": "",
          "accept_routes": true,
          "exit_node": "",
          "exit_node_allow_lan_access": true,
        },
      ],
      "inbounds": [
        {
          "type": "tun",
          "tag": "tun-in",
          "address": ["172.19.0.1/30"],
          "auto_route": true,
          "strict_route": false,
        },
      ],
      "outbounds": [
        {"type": "direct", "tag": "direct"},
        {"type": "block", "tag": "block"},
      ],
      "route": {"final": "direct", "auto_detect_interface": true, "rules": []},
    });
  }
}
