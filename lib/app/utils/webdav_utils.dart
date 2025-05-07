// ignore_for_file: unused_catch_stack
import 'dart:io';

import 'package:dio/io.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:webdav_client/webdav_client.dart';

class WebdavUtils {
  static const String _prefix = "karing/";
  static Future<ReturnResult<Client>> connect(
      int? proxyPort, String url, String user, String password) async {
    var client = newClient(
      url.trim(),
      user: user.trim(),
      password: password.trim(),
      debug: !const bool.fromEnvironment("dart.vm.product"),
    );
    if (proxyPort != null && proxyPort != 0) {
      client.c.httpClientAdapter = IOHttpClientAdapter(
        createHttpClient: () {
          final client = HttpClient()..idleTimeout = const Duration(seconds: 3);
          client.findProxy = (Uri uri) => "PROXY 127.0.0.1:$proxyPort";
          return client;
        },
      );
    }

    client.setHeaders({'accept-charset': 'utf-8'});

    // Set the connection server timeout time in milliseconds.
    client.setConnectTimeout(8000);

    // Set send data timeout time in milliseconds.
    /* _client!.setSendTimeout(8000);

    // Set transfer data time in milliseconds.
    _client!.setReceiveTimeout(8000);*/

    // Test whether the service can connect
    try {
      await client.ping();
    } catch (err, stacktrace) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
    try {
      await client.mkdir(_prefix);
    } catch (err, stacktrace) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
    return ReturnResult(data: client);
  }

  static Future<ReturnResult<List<String>>> list(Client client) async {
    try {
      final list = await client.readDir(_prefix);
      final names = <String>[];
      for (final item in list) {
        if ((item.isDir ?? true) || item.name == null) continue;
        names.add(item.name!);
      }
      return ReturnResult(data: names);
    } catch (err, stacktrace) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<ReturnResultError?> upload(
    Client client, {
    required String relativePath,
    required String localPath,
  }) async {
    try {
      await client.writeFromFile(
        localPath,
        _prefix + relativePath,
      );
    } catch (err, stacktrace) {
      return ReturnResultError(err.toString());
    }
    return null;
  }

  static Future<ReturnResultError?> delete(
      Client client, String relativePath) async {
    try {
      await client.remove(_prefix + relativePath);
    } catch (err, stacktrace) {
      return ReturnResultError(err.toString());
    }
    return null;
  }

  static Future<ReturnResultError?> download(
    Client client, {
    required String relativePath,
    required String localPath,
  }) async {
    try {
      await client.read2File(
        _prefix + relativePath,
        localPath,
      );
    } catch (err, stacktrace) {
      return ReturnResultError(err.toString());
    }
    return null;
  }
}
