// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:karing/app/modules/remote_isp_config.dart';
import 'package:karing/app/utils/path_utils.dart';

class RemoteISPConfigManager {
  static RemoteISPConfig _config = RemoteISPConfig();

  static RemoteISPConfig getConfig() {
    return _config;
  }

  static Future<RemoteISPConfig> loadConfig() async {
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
          return _config;
        }
      }
    } catch (err, stacktrace) {}
    return _config;
  }
}
