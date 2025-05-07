import 'dart:async';
import 'dart:io';

import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/log.dart';

abstract final class DownloadUtils {
  static Future<ReturnResult<HttpHeaders>> download(
      Uri uri, String downloadPath) async {
    List<int?> ports = await VPNService.getPortsByPrefer(true);
    late ReturnResult<HttpHeaders> result;
    for (var port in ports) {
      result = await downloadWithPort(uri, downloadPath, null, port);
      if (result.error == null) {
        return result;
      }
      if (result.error!.message.contains("404")) {
        return result;
      }
    }
    return result;
  }

  static Future<ReturnResult<HttpHeaders>> downloadWithPort(
      Uri uri, String downloadPath, String? useAgent, int? port) async {
    String downloadPathTemp = "$downloadPath.tmp";
    if (!await FileUtils.deletePath(downloadPathTemp)) {
      return ReturnResult(
          error: ReturnResultError("delete $downloadPathTemp failed"));
    }

    ReturnResult<HttpHeaders> result = await HttpUtils.httpDownload(
        uri, downloadPathTemp, port, useAgent, null);

    if (result.error != null) {
      await FileUtils.deletePath(downloadPathTemp);
      return ReturnResult(error: ReturnResultError(result.error!.message));
    }
    try {
      var file = File(downloadPathTemp);
      if (await file.exists()) {
        await FileUtils.deletePath(downloadPath);
        await file.rename(downloadPath);
      }
    } catch (err) {
      Log.w(
          "DownloadUtils.download exception ${uri.toString()} ${err.toString()} ");
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
    return result;
  }
}
