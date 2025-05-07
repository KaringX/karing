import 'dart:io';

import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/log.dart';

abstract final class WindowsTunFixUtils {
  static Future<ReturnResultError?> getDriverList() async {
    try {
      final result = await Process.run(
          "dism", ["/online", "/get-drivers", "/format:table"]);
      String content = result.stdout as String;
      List<String> drivers = content.split("\n");
      for (var driver in drivers) {
        if (driver.contains("oem") &&
            driver.contains(".inf") &&
            driver.contains("WireGuard LLC")) {
          driver = driver.replaceAll("\n", "").trim();
          List<String> parts = driver.split("|");
          if (parts.isNotEmpty) {
            final result =
                await Process.run("pnputil.exe", ["/d", parts[0].trim()]);
            Log.w(
              "try to fix [wintun: Failed to setup adapter] [$driver] ${result.stdout}",
            );
          }
        }
      }
    } catch (err) {
      return ReturnResultError(err.toString());
    }

    return null;
  }
}
