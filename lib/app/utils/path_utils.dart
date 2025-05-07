// ignore_for_file: unused_catch_stack, empty_catches

import "dart:io";

import "package:karing/app/utils/app_utils.dart";
import "package:karing/app/utils/file_utils.dart";
import "package:path/path.dart" as path;
import "package:path_provider/path_provider.dart";
import "package:vpn_service/vpn_service.dart";

class PathUtils {
  static bool _fixCopyed = false;
  static String _appAssetsDir = "";
  static String _profileDir = "";
  static bool _portableMode = false;
  static bool portableMode() {
    return _portableMode;
  }

  static Future<void> fixAndriodStoragePath(Directory sharedDirectory) async {
    if (Platform.isAndroid) {
      //490
      if (!_fixCopyed) {
        _fixCopyed = true;
        Directory? extPath = await getExternalStorageDirectory();
        var list = [
          storageFileName(),
          subscribeFileName(),
          diversionGroupFileName(),
          subscribeUseFileName(),
          settingFileName(),
        ];
        for (var fileName in list) {
          String dstPath = path.join(sharedDirectory.path, fileName);
          String srcPath = path.join(extPath!.path, fileName);
          var df = File(dstPath);
          bool dsf = await df.exists();
          if (!dsf) {
            var sf = File(srcPath);
            bool bsf = await sf.exists();
            if (bsf) {
              try {
                await sf.copy(dstPath);
              } catch (err, stacktrace) {}
            }
          }
        }
      }
    }
  }

  static String appAssetsDir() {
    if (_appAssetsDir.isNotEmpty) {
      return _appAssetsDir;
    }

    if (Platform.isIOS) {
      _appAssetsDir = frameworkDir();
      _appAssetsDir = path.join(_appAssetsDir, "App.framework");
    } else if (Platform.isMacOS) {
      _appAssetsDir = frameworkDir();
      _appAssetsDir = path.join(_appAssetsDir, "App.framework", "Resources");
    } else if (Platform.isAndroid) {
      _appAssetsDir = "";
    } else if (Platform.isLinux) {
      _appAssetsDir = frameworkDir();
      _appAssetsDir = path.join(_appAssetsDir, "assets");
    } else if (Platform.isWindows) {
      _appAssetsDir = frameworkDir();
      _appAssetsDir = path.join(_appAssetsDir, "data");
    }
    return _appAssetsDir;
  }

  static String flutterAssetsDir() {
    return path.join(appAssetsDir(), "flutter_assets");
  }

  static String assetsDir() {
    return path.join(flutterAssetsDir(), "assets");
  }

  static String profileDirForPortableMode() {
    return path.join(exeDir(), "profiles");
  }

  static Future<String> profileDirNonPortable() async {
    Directory? sharedDirectory =
        await FlutterVpnService.getAppGroupDirectory(AppUtils.getGroupId());
    if (sharedDirectory != null) {
      if (!await sharedDirectory.exists()) {
        await sharedDirectory.create(recursive: true);
      }
      await fixAndriodStoragePath(sharedDirectory);
      return sharedDirectory.path;
    }
    return "";
  }

  static Future<String> profileDir() async {
    if (_profileDir.isNotEmpty) {
      return _profileDir;
    }
    if (Platform.isWindows) {
      try {
        String profileDir = profileDirForPortableMode();
        var file = Directory(profileDir);
        bool exist = await file.exists();
        if (exist) {
          var testDir = Directory(path.join(profileDir, "__test_dir__"));
          await testDir.create(recursive: true);
          await testDir.delete();
          _profileDir = profileDir;
          _portableMode = true;
          return _profileDir;
        }
      } catch (err, stacktrace) {}
    }

    _profileDir = await profileDirNonPortable();
    return _profileDir;
  }

  static Future<String> profilesDir() async {
    String dir = await profileDir();
    String cdir = path.join(dir, profilesName());
    await FileUtils.createDir(cdir);
    return cdir;
  }

  static String profilesName() {
    return "profiles";
  }

  static Future<String> backupDir() async {
    String dir = await profileDir();
    String cdir = path.join(dir, "backup");
    await FileUtils.createDir(cdir);
    return cdir;
  }

  static Future<String> cacheDir() async {
    String dir = await profileDir();
    String cdir = path.join(dir, "cache");
    await FileUtils.createDir(cdir);
    return cdir;
  }

  static Future<String> webviewCacheDir() async {
    String dir = await profileDirNonPortable();
    String cdir = path.join(dir, "webviewCache");
    await FileUtils.createDir(cdir);
    return cdir;
  }

  static Future<String> profileDataDir() async {
    String dir = await profileDir();
    String cdir = path.join(dir, "datas");
    await FileUtils.createDir(cdir);
    return cdir;
  }

  static String exeDir() {
    String dir = path.dirname(Platform.resolvedExecutable);
    return dir;
  }

  static String frameworkDir() {
    String filepath = PathUtils.exeDir();
    if (Platform.isIOS) {
      filepath = path.join(filepath, "Frameworks");
    } else if (Platform.isMacOS) {
      filepath = path.dirname(filepath);
      filepath = path.join(filepath, "Frameworks");
    } else if (Platform.isWindows) {
    } else if (Platform.isAndroid) {
      return "";
    } else if (Platform.isLinux) {
    } else {
      throw "unsupport platform";
    }
    return filepath;
  }

  static String macosDir() {
    if (Platform.isMacOS) {
      String filepath = PathUtils.exeDir();
      filepath = path.dirname(filepath);
      filepath = path.join(filepath, "MacOS");
      return filepath;
    }
    return "";
  }

  static String tunnelServiceSEPath() {
    if (Platform.isMacOS) {
      String filepath = PathUtils.exeDir();
      filepath = path.dirname(filepath);
      filepath = path.join(filepath, "Library", "SystemExtensions",
          "com.nebula.karing.karingServiceSE.systemextension");
      return filepath;
    }
    return "";
  }

  static String getExeName() {
    if (Platform.isWindows) {
      return "karing.exe";
    }
    if (Platform.isMacOS) {
      return "Karing";
    }
    if (Platform.isLinux) {
      return "Karing";
    }
    return "";
  }

  static String serviceExeName() {
    if (Platform.isLinux) {
      return "karingService.so";
    } else if (Platform.isWindows) {
      return "karingService.exe";
    }
    return "";
  }

  static String serviceExePath() {
    String filePath = "";
    if (Platform.isLinux) {
      filePath = path.join(filePath, serviceExeName());
    } else if (Platform.isWindows) {
      filePath = exeDir();
      filePath = path.join(filePath, serviceExeName());
    }
    return filePath;
  }

  static String logFileName() {
    return "app.log";
  }

  static Future<String> logFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, logFileName());
  }

  static String serviceStdErrorFileName() {
    return "service_error.log";
  }

  static Future<String> serviceStdErrorFilePath() async {
    String filePath = await PathUtils.profileDir();
    return path.join(filePath, serviceStdErrorFileName());
  }

  static String serviceLogFileName() {
    return "service_core.log";
  }

  static Future<String> serviceLogFilePath() async {
    String filePath = await PathUtils.profileDir();
    return path.join(filePath, serviceLogFileName());
  }

  static String serviceConfigFileName() {
    return "service.json";
  }

  static Future<String> serviceConfigFilePath() async {
    String filePath = await PathUtils.profileDir();
    return path.join(filePath, serviceConfigFileName());
  }

  static String serviceCoreConfigFileName() {
    return "service_core.json";
  }

  static Future<String> serviceCoreConfigFilePath() async {
    String filePath = await PathUtils.profileDir();
    return path.join(filePath, serviceCoreConfigFileName());
  }

  static String cacheDBFileName() {
    return "cache.db";
  }

  static Future<String> cacheDBFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, cacheDBFileName());
  }

  static String diversionGroupFileName() {
    return "karing_routing_group.json";
  }

  static Future<String> diversionGroupFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, diversionGroupFileName());
  }

  static String subscribeFileName() {
    return "karing_subscribe.json";
  }

  static Future<String> subscribeFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, subscribeFileName());
  }

  static String subscribeUseFileName() {
    return "karing_subscribe_use.json";
  }

  static Future<String> subscribeUseFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, subscribeUseFileName());
  }

  static String settingFileName() {
    return "karing_setting.json";
  }

  static Future<String> settingFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, settingFileName());
  }

  static String autoUpdateFileName() {
    return "auto_update.json";
  }

  static Future<String> autoUpdateFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, autoUpdateFileName());
  }

  static String noticeFileName() {
    return "notice.json";
  }

  static Future<String> noticeFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, noticeFileName());
  }

  static String ispNoticeFileName() {
    return "isp_notice.json";
  }

  static Future<String> ispNoticeFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, ispNoticeFileName());
  }

  static String remoteConfigFileName() {
    return "remote_config.json";
  }

  static Future<String> remoteConfigFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, remoteConfigFileName());
  }

  static String remoteISPConfigFileName() {
    return "isp_config.json";
  }

  static Future<String> remoteISPConfigFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, remoteISPConfigFileName());
  }

  static String storageFileName() {
    return "karing_storage.json";
  }

  static Future<String> storageFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, storageFileName());
  }

  static String cloudflareWarpFileName() {
    return "cloudflare_warp.json";
  }

  static Future<String> cloudflareWarpFilePath() async {
    String filePath = await profileDir();
    return path.join(filePath, cloudflareWarpFileName());
  }

  static Future<String> geoSiteDir() async {
    String assertPath = assetsDir();
    return path.join(assertPath, "datas", "geosite");
  }

  static Future<String> geoIpDir() async {
    String assertPath = assetsDir();
    return path.join(assertPath, "datas", "geoip");
  }

  static Future<String> geoAclDir() async {
    String assertPath = assetsDir();
    return path.join(assertPath, "datas", "acl");
  }
}
