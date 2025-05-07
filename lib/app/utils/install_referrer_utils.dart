import 'dart:io';

import 'package:flutter_install_referrer/flutter_install_referrer.dart';
import 'package:karing/app/utils/log.dart';

abstract final class InstallReferrerUtils {
  static InstallationAppReferrer? _referrer;
  static Future<InstallationAppReferrer?> get() async {
    if (Platform.isAndroid || Platform.isIOS) {
      if (_referrer == null) {
        try {
          var app = await InstallReferrer.app;
          _referrer = app.referrer;
        } catch (err, _) {
          Log.i("InstallReferrerUtils.get exception ${err.toString()}");
        }
      }
    }

    return _referrer;
  }

  static Future<bool> isTestFlight() async {
    var referrer = await get();
    if (referrer == null) {
      return false;
    }
    return referrer == InstallationAppReferrer.iosTestFlight;
  }

  static Future<bool> isAppStore() async {
    var referrer = await get();
    if (referrer == null) {
      return false;
    }
    return referrer == InstallationAppReferrer.iosAppStore;
  }

  static String getAppleTestFlightName() {
    return "Apple - Test Flight";
  }

  static String getAppleAppstoreName() {
    return "Apple - App Store";
  }

  static Future<String> getString() async {
    var referrer = await get();
    if (referrer == null) {
      return Platform.operatingSystem;
    }
    switch (referrer) {
      case InstallationAppReferrer.iosAppStore:
        return getAppleAppstoreName();
      case InstallationAppReferrer.iosTestFlight:
        return getAppleTestFlightName();
      case InstallationAppReferrer.iosDebug:
        return "Apple - Debug";
      case InstallationAppReferrer.androidGooglePlay:
        return "Android - Google Play";
      case InstallationAppReferrer.androidAmazonAppStore:
        return "Android - Amazon App Store";
      case InstallationAppReferrer.androidHuaweiAppGallery:
        return "Android - Huawei App Gallery";
      case InstallationAppReferrer.androidOppoAppMarket:
        return "Android - Oppo App Market";
      case InstallationAppReferrer.androidSamsungAppShop:
        return "Android - Samsung App Shop";
      case InstallationAppReferrer.androidVivoAppStore:
        return "Android - Vivo App Store";
      case InstallationAppReferrer.androidXiaomiAppStore:
        return "Android - Xiaomi App Store";
      case InstallationAppReferrer.androidManually:
        return "Android - Manual installation";
      case InstallationAppReferrer.androidDebug:
        return "Android - Debug";
    }
  }
}
