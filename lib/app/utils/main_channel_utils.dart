// ignore_for_file: unused_catch_stack

import 'dart:io';

import 'package:flutter/services.dart';
import 'package:karing/app/utils/log.dart';

typedef MethodCallHandler = dynamic Function(MethodCall);

class MainChannel {
  static MethodChannel? _methodChannel;
  static final Map<String, MethodCallHandler> _methodCallHandlers = {};

  static void init() {
    if (!Platform.isAndroid) {
      return;
    }
    _methodChannel = const MethodChannel('channel_main_method');
    _methodChannel!.setMethodCallHandler(_methodCallHandler);
  }

  static void uninit() {
    if (!Platform.isAndroid) {
      return;
    }
    _methodChannel?.setMethodCallHandler(null);
  }

  static void register(String method, MethodCallHandler handler) {
    if (!Platform.isAndroid) {
      return;
    }
    _methodCallHandlers[method] = handler;
  }

  static void unregister(String method) {
    if (!Platform.isAndroid) {
      return;
    }
    _methodCallHandlers.remove(method);
  }

  static Future<dynamic> call(String method, [dynamic arguments]) async {
    if (!Platform.isAndroid) {
      return;
    }
    try {
      return await _methodChannel?.invokeMethod(method, arguments);
    } catch (err, stacktrace) {
      Log.i("MainChannel call exception: ${err.toString()}");
    }
    return null;
  }

  static Future<dynamic> _methodCallHandler(MethodCall call) async {
    final handler = _methodCallHandlers[call.method];
    if (handler == null) {
      return null;
    }
    dynamic result = handler(call);
    return result;
  }
}
