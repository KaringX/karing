import 'dart:io';

import 'package:karing/app/runtime/return_result.dart';
import 'package:launch_at_startup/launch_at_startup.dart';

/// Linux per-user desktop autostart integration.
///
/// The autostart entry is intentionally created in the user's XDG autostart
/// directory. This keeps the setting user-scoped and works for both packaged
/// installs and relocatable bundles.
class LinuxStartup {
  static const appName = 'Karing';
  static const startupArgument = '--launch_startup';

  static bool get supported => Platform.isLinux;

  static void setup() {
    if (!supported) {
      return;
    }
    launchAtStartup.setup(
      appName: appName,
      appPath: Platform.resolvedExecutable,
      args: [startupArgument],
    );
  }

  /// Rewrites an existing entry so a moved portable bundle does not leave a
  /// stale executable path in the user's autostart configuration.
  static Future<void> init() async {
    if (!supported) {
      return;
    }
    setup();
    if (await launchAtStartup.isEnabled()) {
      await launchAtStartup.enable();
    }
  }

  static Future<bool> isEnabled() async {
    if (!supported) {
      return false;
    }
    setup();
    return launchAtStartup.isEnabled();
  }

  static Future<ReturnResultError?> setEnabled(bool enabled) async {
    if (!supported) {
      return null;
    }
    try {
      setup();
      final changed = enabled
          ? await launchAtStartup.enable()
          : await launchAtStartup.disable();
      if (!changed) {
        return ReturnResultError(
          'Unable to ${enabled ? 'enable' : 'disable'} Linux startup',
        );
      }
    } catch (error, stacktrace) {
      return ReturnResultError(error.toString(), stacktrace: stacktrace);
    }
    return null;
  }
}
