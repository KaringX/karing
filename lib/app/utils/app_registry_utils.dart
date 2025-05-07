// ignore_for_file: unused_catch_stack

import 'dart:io';

import 'package:karing/app/utils/path_utils.dart';
import 'package:win32_registry/win32_registry.dart';

abstract final class AppRegistryUtils {
  static const String _registryPath = 'Software\\Karing';
  static const String _registryValueNameDid = 'did';
  static String? getDid() {
    return _getAsString(_registryValueNameDid);
  }

  static void saveDid(String did) {
    _saveAsString(_registryValueNameDid, did);
  }

  static String? _getAsString(String name) {
    if (!Platform.isWindows) {
      return null;
    }
    if (PathUtils.portableMode()) {
      return null;
    }

    try {
      RegistryValue? value =
          Registry.currentUser.getValue(name, path: _registryPath);
      if (value == null || value.type != RegistryValueType.string) {
        return null;
      }
      String file = value.data as String;
      return file;
    } catch (err) {}
    return null;
  }

  static void _saveAsString(String name, String value) {
    if (!Platform.isWindows) {
      return;
    }
    if (PathUtils.portableMode()) {
      return;
    }
    try {
      var key = Registry.currentUser.createKey(_registryPath);
      key.createValue(RegistryValue(name, RegistryValueType.string, value));
    } catch (err) {}
  }
}
