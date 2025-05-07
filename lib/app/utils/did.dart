import 'dart:io';
import 'package:karing/app/utils/app_registry_utils.dart';
import 'package:karing/app/utils/secure_storage_utils.dart';
import 'package:uuid/uuid.dart';

abstract final class Did {
  static final DateTime _startTime = DateTime.now();
  static String? _did;
  static bool _firstTime = false;

  static Future<void> _init() async {
    try {
      var deviceIdKey = _getDeviceIdKey();
      var did = _tryLoadFromPlatformSpecificLocation();

      if (did == null || did.isEmpty) {
        did = await SecureStorageUtils.read(deviceIdKey);
      }

      if (did == null || did.isEmpty) {
        _firstTime = true;
        did = newUUID();
        _trySaveToPlatformSpecificLocation(did);
        await SecureStorageUtils.write(deviceIdKey, did);
      }

      _did = did;
    } catch (e) {}
  }

  static String? _tryLoadFromPlatformSpecificLocation() {
    if (Platform.isWindows) {
      return AppRegistryUtils.getDid();
    }
    return null;
  }

  static void _trySaveToPlatformSpecificLocation(String did) {
    if (Platform.isWindows) {
      AppRegistryUtils.saveDid(did);
    }
  }

  static String _getDeviceIdKey() {
    if (Platform.isIOS) {
      return 'KaringDevIdIOS';
    } else if (Platform.isMacOS) {
      return 'KaringDevIdMacOS';
    }

    return 'KaringDevId';
  }

  static Future<String> getDid() async {
    if (_did == null || _did!.isEmpty) {
      await _init();
    }
    return _did!;
  }

  static Future<bool> getFirstTime() async {
    if (_did == null || _did!.isEmpty) {
      await _init();
    }

    var hoursSinceStart = DateTime.now().difference(_startTime).inHours;
    if (hoursSinceStart > 24) {
      _firstTime = false;
    }

    return _firstTime;
  }

  static String newUUID() => const Uuid().v7().replaceAll(RegExp('[{}-]'), '');
}
