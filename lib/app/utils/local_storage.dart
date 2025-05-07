import 'dart:convert';
import 'dart:io';

import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/path_utils.dart';

abstract final class LocalStorage {
  static bool _loaded = false;
  static Map<String, dynamic> _storage = {};
  static Future<String?> read(String key) async {
    if (_loaded == false) {
      await _load();
    }
    return _storage[key];
  }

  static Future<void> write(String key, dynamic value) async {
    if (_loaded == false) {
      await _load();
    }
    _storage[key] = value;
    await _save();
  }

  static Future<void> _load() async {
    String filePath = await PathUtils.storageFilePath();
    var file = File(filePath);
    if (await file.exists()) {
      String content = await file.readAsString();
      if (content.isEmpty) {
        return;
      }
      try {
        _storage = jsonDecode(content);
      } catch (err, _) {
        Log.w("LocalStorage.load exception ${err.toString()}");
      }
    }
    _loaded = true;
  }

  static Future<void> _save() async {
    String filePath = await PathUtils.storageFilePath();
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(_storage);
    await File(filePath).writeAsString(content, flush: true);
    if (!await FileUtils.validJsonFile(filePath)) {
      await File(filePath).writeAsString(content, flush: true);
    }
  }
}
