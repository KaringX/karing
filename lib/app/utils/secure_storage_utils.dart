// ignore_for_file: unused_catch_stack, empty_catches

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/secure_storage.dart';

class SecureStorageUtils {
  static FlutterSecureStorage? _storage;

  static Future<String?> read(String key) async {
    String? value;
    try {
      value = await SecureStorage.read(key);
    } catch (err, stacktrace) {
      Log.w(
          'SecureStorageUtilsSecureStorageUtils read exception ${err.toString()}');

      try {
        _storage ??= _initStorage();
        value = await _storage!.read(key: key);
      } catch (err, stacktrace) {}
    }
    return value;
  }

  static Future<void> write(String key, String? value) async {
    try {
      return await SecureStorage.write(key, value);
    } catch (err, stacktrace) {
      Log.w('SecureStorageUtils write exception ${err.toString()}');
      try {
        _storage ??= _initStorage();
        return await _storage!.write(key: key, value: value);
      } catch (err, stacktrace) {}
    }
  }

  static FlutterSecureStorage _initStorage() {
    AndroidOptions getAndroidOptions() => const AndroidOptions(
          encryptedSharedPreferences: false,
        );
    return FlutterSecureStorage(aOptions: getAndroidOptions());
  }
}
