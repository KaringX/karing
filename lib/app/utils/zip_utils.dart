// ignore_for_file: unused_catch_stack

import 'dart:io' as io;
import 'dart:typed_data';

import 'package:archive/archive_io.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:path/path.dart' as path;

class ZipUtils {
  static Future<ReturnResult<Uint8List>> zipToBytes(
      List<String> filePaths) async {
    try {
      final archive = Archive();
      List<String> newFilePaths = [];
      for (var filePath in filePaths) {
        var file = io.File(filePath);
        if (await file.exists()) {
          int length = await file.length();
          if (length > 0) {
            newFilePaths.add(filePath);
          }
        }
      }
      if (newFilePaths.isEmpty) {
        return ReturnResult(error: ReturnResultError("no files to zip"));
      }
      for (var filePath in newFilePaths) {
        archive.addFile(ArchiveFile.stream(
            path.basename(filePath), InputFileStream(filePath)));
      }
      final zipBytes = ZipEncoder().encodeBytes(archive);
      return ReturnResult(data: zipBytes);
    } catch (err, stacktrace) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<ReturnResultError?> zip(
      List<String> filePaths, String zipPath) async {
    await FileUtils.deletePath(zipPath);
    try {
      var encoder = ZipFileEncoder();
      encoder.create(zipPath);
      for (var filePath in filePaths) {
        final file = io.File(filePath);
        final dir = io.Directory(filePath);
        if (await file.exists()) {
          await encoder.addFile(file);
        } else if (await dir.exists() && (await dir.list().length > 0)) {
          await encoder.addDirectory(dir);
        }
      }
      encoder.close();
      return null;
    } catch (err, stacktrace) {
      await FileUtils.deletePath(zipPath);
      return ReturnResultError(err.toString());
    }
  }

  static Future<ReturnResultError?> unzip(String zipPath, String dir,
      {Set<String> whiteList = const {}}) async {
    try {
      final bytes = await io.File(zipPath).readAsBytes();
      final archive = ZipDecoder().decodeBytes(bytes);
      for (final file in archive) {
        if (whiteList.isNotEmpty) {
          if (!whiteList.contains(file.name.toLowerCase())) {
            continue;
          }
        }
        final filePath = "$dir/${file.name}";
        if (file.isFile) {
          final data = file.content as List<int>;
          await io.File(filePath).writeAsBytes(data, flush: true);
        } else {
          io.Directory(filePath).create(recursive: true);
        }
      }
    } catch (err, stacktrace) {
      return ReturnResultError(err.toString());
    }

    return null;
  }

  static Future<ReturnResult<List<String>>> list(String zipPath) async {
    try {
      List<String> filelist = [];
      final bytes = await io.File(zipPath).readAsBytes();
      final archive = ZipDecoder().decodeBytes(bytes);
      for (final file in archive) {
        if (file.isFile) {
          filelist.add(file.name);
        }
      }
      return ReturnResult(data: filelist);
    } catch (err, stacktrace) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }
}
