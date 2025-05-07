// ignore_for_file: unused_catch_stack

import 'dart:io';

class PlatformUtils {
  static bool isPC() {
    return Platform.isLinux || Platform.isMacOS || Platform.isWindows;
  }

  static bool isMobile() {
    return Platform.isAndroid || Platform.isIOS;
  }

  static bool maybeTV() {
    if (Platform.isAndroid) {
      return true;
    }
    return false;
  }
}
