// ignore_for_file: unused_catch_stack

import 'package:karing/app/extension/datetime.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/zip_utils.dart';
import 'package:path/path.dart' as path;
import 'package:tuple/tuple.dart';

class BackupAndSyncUtils {
  static String getZipExtension() => 'zip';

  static String getZipFileName() {
    final appName = AppUtils.getName();
    final appVersion = AppUtils.getBuildinVersion();
    var name =
        '${appName}_${appVersion}_${DateTime.now().formatLikeFileNameTimestamp}.backup.${getZipExtension()}';
    name = name.replaceAll(' ', '');
    return name;
  }

  static Future<String> getZipFilePath() async {
    final dir = await PathUtils.cacheDir();
    return path.join(dir, getZipFileName());
  }

  static List<Tuple2<String, bool>> getZipFileNameList() => [
        Tuple2(PathUtils.subscribeFileName(), true),
        Tuple2(PathUtils.diversionGroupFileName(), true),
        Tuple2(PathUtils.subscribeUseFileName(), true),
        Tuple2(PathUtils.settingFileName(), true),
        Tuple2(PathUtils.remoteISPConfigFileName(), false),
        //Tuple2(PathUtils.cloudflareWarpFileName(), true),
      ];

  static List<String> getFileNamesFromList(List<Tuple2<String, bool>> list) {
    return list.map((tuple) => tuple.item1).toList();
  }

  static Future<ReturnResultError?> validZip(String zipPath) async {
    final result = await ZipUtils.list(zipPath);
    if (result.error != null) {
      return result.error;
    }
    if (result.data!.isEmpty) {
      return ReturnResultError('backup zip file is empty');
    }

    final expectedFileNames = getFileNamesFromList(getZipFileNameList());
    final actualFileNames = result.data!;
    final intersection =
        expectedFileNames.toSet().intersection(actualFileNames.toSet());

    if (intersection.isEmpty) {
      return ReturnResultError('backup zip file is not compatible');
    }
    return null;
  }
}
