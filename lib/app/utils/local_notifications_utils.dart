// ignore_for_file: unused_catch_stack, empty_catches

import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/sentry_utils.dart';

abstract final class LocalNotifications {
  static FlutterLocalNotificationsPlugin? _localNotifications;
  static bool _notificationsEnabled = false;
  static bool? _init = false;

  static Future<void> init() async {
    if (!Platform.isAndroid) {
      return;
    }

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('@mipmap/ic_launcher');

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
    );
    _localNotifications = FlutterLocalNotificationsPlugin();
    try {
      _init = await _localNotifications!.initialize(
        initializationSettings,
      );
    } catch (err, stacktrace) {
      SentryUtils.captureException(
        'LocalNotifications init exception',
        [],
        err,
        stacktrace,
      );
      Log.w("LocalNotifications init exception ${err.toString()}");

      return;
    }

    if (_init != true) {
      Log.w("LocalNotifications init failed");
    }

    isAndroidPermissionGranted();
  }

  static Future<void> uninit() async {}
  static bool notificationsEnabled() {
    return _notificationsEnabled;
  }

  static Future<bool> isPermissionGranted() async {
    if (_init != true) {
      return false;
    }
    if (Platform.isAndroid) {
      return await isAndroidPermissionGranted();
    }
    return false;
  }

  static Future<bool> isAndroidPermissionGranted() async {
    if (_init != true) {
      return false;
    }
    if (!Platform.isAndroid) {
      return false;
    }
    if (_localNotifications == null) {
      return false;
    }
    try {
      _notificationsEnabled = await _localNotifications!
              .resolvePlatformSpecificImplementation<
                  AndroidFlutterLocalNotificationsPlugin>()
              ?.areNotificationsEnabled() ??
          false;
    } catch (err, stacktrace) {}

    return _notificationsEnabled;
  }

  static Future<void> notifiy(int id, String channelId, String title,
      String content, String payload, Function() callback) async {
    if (_init != true) {
      return;
    }
    if (!Platform.isAndroid) {
      return;
    }
    if (!_notificationsEnabled) {
      return;
    }
    try {
      /*final MessagingStyleInformation messagingStyle = MessagingStyleInformation(me,
        groupConversation: true,
        conversationTitle: 'Team lunch',
        htmlFormatContent: true,
        htmlFormatTitle: true,
        messages: messages);*/
      AndroidNotificationDetails androidNotificationDetails =
          AndroidNotificationDetails(
        channelId,
        AppUtils.getName(),
        channelDescription: channelId,
        channelShowBadge: false,
        importance: Importance.low,
        priority: Priority.low,
        playSound: false,
        enableVibration: false,
        enableLights: false,
        autoCancel: false,
        ongoing: true,
        silent: true,
        onlyAlertOnce: true,
        category: AndroidNotificationCategory.service,
        //styleInformation: messagingStyle
      );
      NotificationDetails notificationDetails =
          NotificationDetails(android: androidNotificationDetails);
      _localNotifications!
          .show(id, title, content, notificationDetails, payload: payload);
    } catch (err, stacktrace) {}
  }

  static Future<void> remove(int id) async {
    if (!Platform.isAndroid) {
      return;
    }
    try {
      _localNotifications!.cancel(id);
    } catch (err, stacktrace) {}
  }
}
