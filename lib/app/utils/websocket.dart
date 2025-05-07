// ignore_for_file: empty_catches

import 'dart:async';

import 'dart:io';

import 'package:karing/app/utils/log.dart';
import 'package:web_socket_channel/io.dart';

class Websocket {
  final String url;
  final Duration? connectionTimeout;
  final String? userAgent;
  final String? proxy;
  final Function(String message) onMessage;
  final Function()? onDone;
  final Function(dynamic error)? onError;

  bool _connecting = false;
  HttpClient? _httpClient;
  StreamSubscription<dynamic>? _subscriptions;

  Websocket(
      {required this.url,
      this.connectionTimeout,
      this.userAgent,
      this.proxy,
      required this.onMessage,
      this.onDone,
      this.onError});

  Future<void> connect() async {
    if (_httpClient != null) {
      return;
    }
    if (_connecting) {
      return;
    }
    _connecting = true;
    try {
      await _subscriptions?.cancel();
      _httpClient?.close(force: true);
      _httpClient = null;
      _httpClient = HttpClient();
      _httpClient!.userAgent = userAgent;
      _httpClient!.connectionTimeout =
          connectionTimeout ?? const Duration(seconds: 3);
      _httpClient!.findProxy = (Uri uri) => proxy ?? "DIRECT";

      {
        WebSocket webSocket =
            await WebSocket.connect(url, customClient: _httpClient);

        _subscriptions = IOWebSocketChannel(webSocket).stream.listen((message) {
          onMessage.call(message);
        }, onDone: () {
          disconnect();
          onDone?.call();
        }, onError: (error) {
          onError?.call(error);
        });
      }
    } catch (err) {
      Log.w("Websocket.connect exception ${err.toString()}");
      disconnect();
    }
    _connecting = false;
  }

  Future<void> disconnect() async {
    await _subscriptions?.cancel();
    _subscriptions = null;
    _httpClient?.close();
    _httpClient = null;
    _connecting = false;
  }

  bool connected() {
    return _subscriptions != null;
  }
}
