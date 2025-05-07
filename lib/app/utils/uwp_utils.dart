// ignore_for_file: unused_catch_stack, non_constant_identifier_names

import 'dart:io';
import 'dart:ffi';

import 'package:karing/app/runtime/return_result.dart';
import 'package:win32_registry/win32_registry.dart';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

final _shlwapi = DynamicLibrary.open('shlwapi.dll');

int SHLoadIndirectString(Pointer<Utf16> pszSource, Pointer<Utf16> pszOutBuf,
        int cchOutBuf, Pointer<Pointer> ppv) =>
    _SHLoadIndirectString(pszSource, pszOutBuf, cchOutBuf, ppv);

final _SHLoadIndirectString = _shlwapi.lookupFunction<
    Int32 Function(Pointer<Utf16> pszSource, Pointer<Utf16> pszOutBuf,
        Uint32 cchOutBuf, Pointer<Pointer> ppv),
    int Function(Pointer<Utf16> pszSource, Pointer<Utf16> pszOutBuf,
        int cchOutBuf, Pointer<Pointer> ppv)>('SHLoadIndirectString');

class UWPMappings {
  String name = "";
  String sid = "";
  UWPMappings(this.name, this.sid);
}

abstract final class UWPUtils {
  static Future<List<UWPMappings>> getMappings() async {
    List<UWPMappings> data = [];
    try {
      RegistryKey key = Registry.openPath(RegistryHive.currentUser,
          path:
              'Software\\Classes\\Local Settings\\Software\\Microsoft\\Windows\\CurrentVersion\\AppContainer\\Mappings');
      //Software\\Classes\\Local Settings\\Software\\Microsoft\\Windows\\CurrentVersion\\AppModel\\Repository\\Packages
      //HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\SharedAccess\Parameters\FirewallPolicy\RestrictedServices\AppIso\FirewallRules
      try {
        for (final subKeyName in key.subkeyNames.toList()) {
          RegistryValue? value = key.getValue("DisplayName", path: subKeyName);
          if (value == null || value.type != RegistryValueType.string) {
            continue;
          }
          String displayName = value.data as String;
          if (displayName.startsWith('@{')) {
            final pszSource = displayName.toNativeUtf16();
            final pszOutBuf = wsalloc(MAX_PATH);

            int result = SHLoadIndirectString(
                pszSource, pszOutBuf, MAX_PATH, Pointer.fromAddress(0));
            if (result == S_OK) {
              displayName = pszOutBuf.toDartString();
            }
            free(pszOutBuf);
            free(pszSource);
          }

          data.add(UWPMappings(displayName, subKeyName));
        }
      } catch (err) {}
      key.close();
    } catch (err) {}

    return data;
  }

  static Future<ReturnResult<Set<String>>> getNetIsolation() async {
    late ProcessResult result;
    try {
      result = await Process.run("CheckNetIsolation", ["loopbackexempt", "-s"]);
    } catch (err) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
    Set<String> netIsolation = {};
    if (result.stdout is String) {
      String res = result.stdout as String;
      List<String> sids = res.split("\n");
      for (var value in sids) {
        if (value.contains("SID:")) {
          value = value.replaceAll("SID:", "").trim();
          netIsolation.add(value);
        }
      }
    }
    return ReturnResult(data: netIsolation);
  }

  static Future<ReturnResultError?> ClearNetIsolation() async {
    try {
      await Process.run("CheckNetIsolation", ["loopbackexempt", "-c"]);
    } catch (err) {
      return ReturnResultError(err.toString());
    }

    return null;
  }

  static Future<ReturnResultError?> SetNetIsolation(
      Set<String> sids, bool enable) async {
    try {
      for (var sid in sids) {
        await Process.run("CheckNetIsolation",
            ["loopbackexempt", enable ? "-a" : "-d", "-p=$sid"]);
      }
    } catch (err) {
      return ReturnResultError(err.toString());
    }

    return null;
  }
}
