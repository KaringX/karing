import 'dart:io';

abstract final class ErrorReporterUtils {
  static void Function()? _callback;
  static bool _reporting = false;
  static void register(void Function()? callback) {
    _callback = callback;
  }

  static bool tryReportNoSpace(String err) {
    bool noSpace = false;
    if (Platform.isWindows) {
      if (err.contains("errno = 112")) {
        noSpace = true;
      }
    } else {
      if (err.contains("No space left on device")) {
        noSpace = true;
      }
    }
    if (!noSpace) {
      return false;
    }
    if (_reporting) {
      return noSpace;
    }
    _reporting = true;
    if (_callback != null) {
      _callback!();
    }
    _reporting = false;
    return noSpace;
  }
}
