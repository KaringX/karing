import 'dart:io';

import 'package:package_info_plus/package_info_plus.dart';

abstract final class AppUtils {
  static Future<String> getPackgetVersion() async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      return "${packageInfo.version}.${packageInfo.buildNumber}";
    } catch (e) {
      return getBuildinVersion();
    }
  }

  static String getName() {
    return "Karing";
  }

  static String getReleaseVersion() {
    List<String> v = getBuildinVersion().split(".");
    return "${v[0]}.${v[1]}.${v[2]}+${v[3]}";
  }

  static String getBuildinVersion() {
    return "1.1.3.703";
  }

  static String getId() {
    return "com.nebula.karing";
  }

  static String getGroupId() {
    return "group.com.nebula.karing";
  }

  static String getBundleId() {
    if (Platform.isIOS || Platform.isMacOS) {
      return "com.nebula.karing.karingService";
    }
    return "";
  }

  static String getICloudContainerId() {
    return "iCloud.com.nebula.karing";
  }

  static String getTermsOfServiceUrl() {
    switch (Platform.operatingSystem) {
      case "android":
        return "https://play.google.com/intl/en-US_us/about/play-terms/index.html";
      case "ios":
      case "macos":
        return "https://www.apple.com/legal/internet-services/itunes/dev/stdeula/";
      default:
        return "";
    }
  }
}
