// ignore_for_file: empty_catches

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:path/path.dart' as path;
import 'package:open_dir/open_dir.dart';
import 'package:tuple/tuple.dart';

abstract final class FileUtils {
  static Future<Tuple2<String, bool>?> readAsString(String filePath,
      int? maxBytesLength, bool splitIfMoreThanMaxLength) async {
    var file = File(filePath);

    try {
      if (await file.exists()) {
        if (maxBytesLength == null) {
          return Tuple2(await file.readAsString(), false);
        }
        var fileSize = await file.length();
        if (fileSize < maxBytesLength) {
          return Tuple2(await file.readAsString(), false);
        }

        RandomAccessFile raf = await file.open(mode: FileMode.read);
        await raf.setPosition(0);
        Uint8List data = await raf.read(maxBytesLength);
        await raf.close();
        String content = utf8.decode(data);
        if (splitIfMoreThanMaxLength) {
          for (int i = 0; i < content.length; i++) {
            if (content[i] == '\n' || content[i] == '\r\n') {
              content = content.substring(i + 1);
              break;
            }
          }
        }
        return Tuple2(content, true);
      }
    } catch (err) {
      return null;
    }

    return null;
  }

  static Future<Tuple2<String, bool>?> readAsStringReverse(String filePath,
      int? maxBytesLength, bool splitIfMoreThanMaxLength) async {
    var file = File(filePath);

    try {
      if (await file.exists()) {
        if (maxBytesLength == null) {
          return Tuple2(await file.readAsString(), false);
        }
        var fileSize = await file.length();
        if (fileSize < maxBytesLength) {
          return Tuple2(await file.readAsString(), false);
        }

        RandomAccessFile raf = await file.open(mode: FileMode.read);
        await raf.setPosition(fileSize - maxBytesLength);
        Uint8List data = await raf.read(maxBytesLength);
        await raf.close();
        String content = utf8.decode(data);
        if (splitIfMoreThanMaxLength) {
          for (int i = 0; i < content.length; i++) {
            if (content[i] == '\n' || content[i] == '\r\n') {
              content = content.substring(i + 1);
              break;
            }
          }
        }
        return Tuple2(content, true);
      }
    } catch (err) {
      return null;
    }

    return null;
  }

  static Future<Tuple2<Uint8List, bool>?> readAsUint8List(
      String filePath, int? maxBytesLength) async {
    var file = File(filePath);

    try {
      if (await file.exists()) {
        if (maxBytesLength == null) {
          return Tuple2(await file.readAsBytes(), false);
        }
        var fileSize = await file.length();
        if (fileSize < maxBytesLength) {
          return Tuple2(await file.readAsBytes(), false);
        }

        RandomAccessFile raf = await file.open(mode: FileMode.read);
        await raf.setPosition(0);
        Uint8List data = await raf.read(maxBytesLength);
        await raf.close();

        return Tuple2(data, true);
      }
    } catch (err) {
      return null;
    }

    return null;
  }

  static Future<Tuple2<Uint8List, bool>?> readAsUint8ListReverse(
      String filePath, int? maxLength) async {
    var file = File(filePath);

    try {
      if (await file.exists()) {
        if (maxLength == null) {
          return Tuple2(await file.readAsBytes(), false);
        }
        var fileSize = await file.length();
        if (fileSize < maxLength) {
          return Tuple2(await file.readAsBytes(), false);
        }

        RandomAccessFile raf = await file.open(mode: FileMode.read);
        await raf.setPosition(fileSize - maxLength);
        Uint8List data = await raf.read(maxLength);
        await raf.close();
        return Tuple2(data, true);
      }
    } catch (err) {
      return null;
    }

    return null;
  }

  static Future<bool> deletePath(String path, {bool recursive = false}) async {
    if (path.isEmpty) return false;

    try {
      var fileSystemEntity = FileSystemEntity.typeSync(path);
      switch (fileSystemEntity) {
        case FileSystemEntityType.directory:
          await Directory(path).delete(recursive: recursive);
          break;
        case FileSystemEntityType.file:
          await File(path).delete();
          break;
        default:
          return true;
      }
    } catch (e) {
      return false;
    }

    return true;
  }

  static Future<bool> deleteFile(File file) async {
    bool exist = await file.exists();
    if (exist) {
      try {
        await file.delete();
      } catch (err) {
        return false;
      }
    }
    return true;
  }

  static Future<String?> readAndDelete(String filePath) async {
    if (filePath.isEmpty) return null;

    try {
      var file = File(filePath);
      if (await file.exists()) {
        String content = await file.readAsString();
        await file.delete();
        return content;
      }
    } catch (e) {}

    return null;
  }

  static Future<void> createDir(String path) async {
    if (path.isEmpty) return;

    try {
      var dir = Directory(path);
      await dir.create(recursive: true);
    } catch (e) {}
  }

  static Future<bool> openDirectory(String path) async {
    final rs =
        await OpenDir().openNativeDir(path: path, highlightedFileName: "");
    if (null == rs) {
      return false;
    }

    return rs;
  }

  static List<String> recursionFile(String dirPath,
      {bool recursive = false, Set<String>? extensionFilter}) {
    Directory dir = Directory(dirPath);
    if (!dir.existsSync()) {
      return [];
    }

    List<String> allFiles = [];

    try {
      List<FileSystemEntity> lists = dir.listSync();

      for (FileSystemEntity entity in lists) {
        if (entity is File) {
          if (extensionFilter != null && extensionFilter.isNotEmpty) {
            if (extensionFilter.contains(path.extension(entity.path))) {
              allFiles.add(entity.path);
            }
          } else {
            allFiles.add(entity.path);
          }
        } else if (entity is Directory && recursive) {
          var subDir = entity;
          List<String> filesInSubDir = recursionFile(subDir.path,
              recursive: true, extensionFilter: extensionFilter);

          if (filesInSubDir.isNotEmpty) {
            allFiles.addAll(filesInSubDir);
          }
        }
      }
    } catch (e) {}

    return allFiles;
  }

  static Future<bool> validJsonFile(String filePath) async {
    var data = await FileUtils.readAsString(filePath, 2, false);
    if (data != null && data.item1.isNotEmpty) {
      if (data.item1[0] != '{') {
        return false;
      }
    }
    return true;
  }

  static Future<bool> append(String filePath, String content) async {
    if (filePath.isEmpty) return false;

    try {
      var file = File(filePath);
      if (await file.exists()) {
        final raf = await file.open(mode: FileMode.append);
        await raf.writeString(content);
        await raf.close();
        return true;
      }
    } catch (e) {}

    return false;
  }

  static Future<String?> readLastLineStartWith(
      String filePath, String startsWith) async {
    if (filePath.isEmpty) return null;

    try {
      var file = File(filePath);
      if (await file.exists()) {
        final raf = await file.open(mode: FileMode.read);
        final size = await file.length();
        final pos = size > 4096 ? size - 4096 : 0;
        await raf.setPosition(pos);
        final data = await raf.read(4096);
        await raf.close();
        String str = utf8.decode(data);
        List<String> lines = str.split('\n');
        if (lines.isNotEmpty) {
          for (var i = lines.length - 1; i >= 0; i--) {
            if (lines[i].startsWith(startsWith)) {
              return lines[i];
            }
          }
        }
      }
    } catch (e) {}
    return null;
  }
}
