import 'dart:io';
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

class VersionHelper {
  static VersionHelper instance = VersionHelper._();

  /// Whether the current OS is Windows 10 Redstone 5 or later.
  /// This is used to determine whether the modern Share UI i.e. `DataTransferManager` is available or not.
  ///
  /// References: https://en.wikipedia.org/wiki/Windows_10_version_history
  ///             https://docs.microsoft.com/en-us/windows/win32/api/winnt/ns-winnt-osversioninfoexa
  ///
  ///
  int majorVersion = 0;
  int minorVersion = 0;
  int buildNumber = 0;
  bool isWindows10RS5OrGreater = false;

  static const int kWindows10RS5BuildNumber = 17763;

  VersionHelper._() {
    if (Platform.isWindows && majorVersion == 0) {
      final pointer = calloc<OSVERSIONINFOEX>();
      pointer.ref
        ..dwOSVersionInfoSize = sizeOf<OSVERSIONINFOEX>()
        ..dwBuildNumber = 0
        ..dwMajorVersion = 0
        ..dwMinorVersion = 0
        ..dwPlatformId = 0
        ..szCSDVersion = ''
        ..wServicePackMajor = 0
        ..wServicePackMinor = 0
        ..wSuiteMask = 0
        ..wProductType = 0
        ..wReserved = 0;
      final rtlGetVersion = DynamicLibrary.open('ntdll.dll').lookupFunction<
          Void Function(Pointer<OSVERSIONINFOEX>),
          void Function(Pointer<OSVERSIONINFOEX>)>('RtlGetVersion');
      rtlGetVersion(pointer);
      majorVersion = pointer.ref.dwMajorVersion;
      minorVersion = pointer.ref.dwMinorVersion;
      buildNumber = pointer.ref.dwBuildNumber;
      isWindows10RS5OrGreater = buildNumber >= kWindows10RS5BuildNumber;
      calloc.free(pointer);
    }
  }
}
