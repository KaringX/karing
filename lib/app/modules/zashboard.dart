// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:io';

import 'package:flutter/services.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/clash_api.dart';
import 'package:mime/mime.dart';
import 'package:path/path.dart';

class Zashboard {
  static HttpServer? _server;
  static Future<String> getUrl() async {
    String secret = await ClashApi.getSecret();
    var settingConfig = SettingManager.getConfig();
    return 'http://127.0.0.1:${settingConfig.htmlBoardPort}?hostname=127.0.0.1&port=${settingConfig.proxy.controlPort}&secret=$secret';
  }

  static Future<ReturnResult<String>> start() async {
    if (_server == null) {
      try {
        _server = await HttpServer.bind(
            "127.0.0.1", SettingManager.getConfig().htmlBoardPort);
      } catch (err, stacktrace) {
        return ReturnResult(error: ReturnResultError(err.toString()));
      }

      _server!.listen((req) async {
        try {
          if (req.method == "GET") {
            String path = req.requestedUri.path.replaceFirst('/', '');
            if (path.isEmpty) {
              path = 'index.html';
            }
            final name = basename(path);
            final mime = lookupMimeType(name) ?? 'text/plain';
            final data = await rootBundle.load("assets/zashboard/$path");

            req.response.headers.add('Content-Type', '$mime; charset=utf-8');
            req.response.add(data.buffer.asUint8List());
            req.response.close();
          } else {
            req.response.statusCode = HttpStatus.methodNotAllowed;
            req.response.close();
          }
        } catch (err, stacktrace) {
          req.response.statusCode = HttpStatus.notFound;
          req.response.close();
        }
      });
    }

    return ReturnResult(data: await getUrl());
  }

  static Future<void> stop() async {
    if (_server != null) {
      await _server!.close();
      _server = null;
    }
  }
}
