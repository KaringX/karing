import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/log.dart';
import 'package:zxing2/qrcode.dart';

class QrcodeUtils {
  static ReturnResult<Image> toImage(String content) {
    try {
      var hints = EncodeHints();
      hints.put<CharacterSetECI>(
          EncodeHintType.characterSet, CharacterSetECI.UTF8);
      hints.put<bool>(EncodeHintType.gs1Format, true);
      var qrcode =
          Encoder.encode(content, ErrorCorrectionLevel.h, hints: hints);
      var matrix = qrcode.matrix!;
      var scale = 4;
      var image = img.Image(
          width: matrix.width * scale,
          height: matrix.height * scale,
          numChannels: 4);
      for (var x = 0; x < matrix.width; x++) {
        for (var y = 0; y < matrix.height; y++) {
          if (matrix.get(x, y) == 1) {
            img.fillRect(image,
                x1: x * scale,
                y1: y * scale,
                x2: x * scale + scale,
                y2: y * scale + scale,
                color: img.ColorRgba8(0, 0, 0, 0xFF));
          }
        }
      }
      final png = img.encodePng(image);
      return ReturnResult(data: Image.memory(png));
    } catch (err) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<bool> saveAsImage(String content, String path) async {
    try {
      var qrcode = Encoder.encode(content, ErrorCorrectionLevel.h);
      var matrix = qrcode.matrix!;
      var scale = 4;
      var image = img.Image(
          width: matrix.width * scale,
          height: matrix.height * scale,
          numChannels: 4);
      for (var x = 0; x < matrix.width; x++) {
        for (var y = 0; y < matrix.height; y++) {
          if (matrix.get(x, y) == 1) {
            img.fillRect(image,
                x1: x * scale,
                y1: y * scale,
                x2: x * scale + scale,
                y2: y * scale + scale,
                color: img.ColorRgba8(0, 0, 0, 0xFF));
          }
        }
      }
      final png = img.encodePng(image);
      await File(path).writeAsBytes(png);
    } catch (err) {
      Log.w("QrcodeUtils.saveAsImage exception ${err.toString()}");
      return false;
    }
    return true;
  }

  static Future<String?> scanFromFile(String filePath) async {
    var image = await img.decodeImageFile(filePath);
    if (image == null) {
      return null;
    }
    LuminanceSource source = RGBLuminanceSource(
        image.width,
        image.height,
        image
            .convert(numChannels: 4)
            .getBytes(order: img.ChannelOrder.abgr)
            .buffer
            .asInt32List());
    var bitmap = BinaryBitmap(GlobalHistogramBinarizer(source));
    var reader = QRCodeReader();
    var result = reader.decode(bitmap);

    return result.text;
  }

  static Future<String?> scanFromImageData(Uint8List data) async {
    var image = img.decodeImage(data);
    if (image == null) {
      return null;
    }
    LuminanceSource source = RGBLuminanceSource(
        image.width,
        image.height,
        image
            .convert(numChannels: 4)
            .getBytes(order: img.ChannelOrder.abgr)
            .buffer
            .asInt32List());
    var bitmap = BinaryBitmap(GlobalHistogramBinarizer(source));
    var reader = QRCodeReader();
    var result = reader.decode(bitmap);

    return result.text;
  }
}
