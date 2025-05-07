// ignore_for_file: unused_catch_stack

import 'dart:async';

import 'package:icloud_storage/icloud_storage.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_utils.dart';

abstract final class ICloudUtils {
  static final String _containerId = AppUtils.getICloudContainerId();

  static Future<ReturnResult<List<ICloudFile>>> listFiles() async {
    try {
      var result = await ICloudStorage.gather(
        containerId: _containerId,
      );
      return ReturnResult(data: result);
    } catch (err, stacktrace) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<ReturnResult<List<String>>> list() async {
    var result = await listFiles();
    if (result.error != null) {
      return ReturnResult(error: result.error);
    }
    List<String> fileList = [];
    for (var file in result.data!) {
      var relativePath = file.relativePath;
      try {
        relativePath = Uri.decodeComponent(relativePath);
      } catch (err) {}
      fileList.add(relativePath);
    }
    return ReturnResult(data: fileList);
  }

  static Future<ReturnResultError?> upload({
    required String relativePath,
    required String localPath,
  }) async {
    final completer = Completer<ReturnResultError?>();
    try {
      await ICloudStorage.upload(
        containerId: _containerId,
        filePath: localPath,
        destinationRelativePath: relativePath,
        onProgress: (stream) {
          stream.listen(
            (progress) {},
            onDone: () {
              if (!completer.isCompleted) {
                completer.complete(null);
              }
            },
            onError: (e) {
              if (!completer.isCompleted) {
                completer.complete(
                  ReturnResultError(e.toString()),
                );
              }
            },
            cancelOnError: true,
          );
        },
      );
    } catch (err, stacktrace) {
      if (!completer.isCompleted) {
        completer.complete(ReturnResultError(err.toString()));
      }
    }

    return completer.future;
  }

  static Future<ReturnResultError?> delete(String relativePath) async {
    try {
      await ICloudStorage.delete(
        containerId: _containerId,
        relativePath: relativePath,
      );
      return null;
    } catch (err, stacktrace) {
      return ReturnResultError(err.toString());
    }
  }

  static Future<ReturnResultError?> download({
    required String relativePath,
    required String localPath,
  }) async {
    final completer = Completer<ReturnResultError?>();
    try {
      await ICloudStorage.download(
        containerId: _containerId,
        relativePath: relativePath,
        destinationFilePath: localPath,
        onProgress: (stream) {
          stream.listen(
            (progress) {},
            onDone: () => completer.complete(null),
            onError: (e) => completer.complete(
              ReturnResultError(e.toString()),
            ),
            cancelOnError: true,
          );
        },
      );
    } catch (err, stacktrace) {
      completer.complete(ReturnResultError(err.toString()));
    }
    return completer.future;
  }
}
