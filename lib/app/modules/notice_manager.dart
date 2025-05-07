// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/karing_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:vpn_service/state.dart';

class NoticeItem {
  String ispId = "";
  bool readed = true;
  String updateTime = "";
  String expireTime = "";
  String title = "";
  String content = "";
  String url = "";

  Map<String, dynamic> toJson() => {
        "isp_id": ispId,
        "readed": readed,
        'update_time': updateTime,
        'expire_time': expireTime,
        "title": title,
        "content": content,
        "url": url,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    ispId = map["isp_id"] ?? "";
    readed = map["readed"] ?? true;
    updateTime = map["update_time"] ?? "";
    expireTime = map["expire_time"] ?? "";
    title = map["title"] ?? "";
    content = map["content"] ?? "";
    url = map["url"] ?? "";
  }

  static NoticeItem fromJsonStatic(Map<String, dynamic>? map) {
    NoticeItem config = NoticeItem();
    config.fromJson(map);
    return config;
  }
}

class Notice {
  String latestCheck = "";
  List<NoticeItem> items = [];

  Map<String, dynamic> toJson() => {
        'latest_check': latestCheck,
        "items": items,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    latestCheck = map["latest_check"] ?? "";
    var its = map["items"];
    var now = DateTime.now();
    for (var i in its) {
      NoticeItem item = NoticeItem.fromJsonStatic(i);
      DateTime? et = DateTime.tryParse(item.expireTime);
      DateTime? ut = DateTime.tryParse(item.updateTime);
      if (et != null && now.isAfter(et)) {
        continue;
      }
      if (ut != null && now.difference(ut).inDays > 30) {
        continue;
      }

      items.add(item);
    }
    items.sort(sort);
  }

  static Notice fromJsonStatic(Map<String, dynamic>? map) {
    Notice config = Notice();
    config.fromJson(map);
    return config;
  }

  NoticeItem? getByUpdateTime(String updateTime) {
    for (var i in items) {
      if (i.updateTime == updateTime) {
        return i;
      }
    }
    return null;
  }

  NoticeItem? getFirstUnread() {
    for (var i in items) {
      if (i.readed == false) {
        return i;
      }
    }
    return null;
  }

  int sort(NoticeItem a, NoticeItem b) {
    DateTime ua = DateTime.parse(a.updateTime);
    DateTime ub = DateTime.parse(b.updateTime);

    return ub.compareTo(ua);
  }
}

class NoticeLoadAndCheck {
  bool _checking = false;
  Duration _checkDuration = const Duration(hours: 3);
  Duration _duration = const Duration(hours: 3);
  Notice _notice = Notice();
  String ispId = "";
  String name = "";
  String url = "";
  String filePath = "";
  Function()? checkUpdate;
  Notice get notice => _notice;

  Future<Notice> _loadConfig(String filePath) async {
    var file = File(filePath);
    bool exists = await file.exists();
    if (!exists) {
      return Notice();
    }
    try {
      String content = await file.readAsString();
      if (content.isNotEmpty) {
        var config = jsonDecode(content);
        Notice notice = Notice();
        notice.fromJson(config);
        return notice;
      }
    } catch (err, stacktrace) {}
    return Notice();
  }

  Future<void> loadConfig() async {
    if (filePath.isEmpty) {
      return;
    }
    _notice = await _loadConfig(filePath);
  }

  void clear() {
    _notice.latestCheck = "";
    _notice.items.clear();
  }

  Future<void> saveConfig() async {
    if (filePath.isEmpty) {
      return;
    }
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(_notice.toJson());
    try {
      await File(filePath).writeAsString(content, flush: true);
      if (!await FileUtils.validJsonFile(filePath)) {
        await File(filePath).writeAsString(content, flush: true);
      }
    } catch (err, stacktrace) {
      ErrorReporterUtils.tryReportNoSpace(err.toString());
    }
  }

  Future<void> check() async {
    if (url.isEmpty) {
      return;
    }
    if (_checking) {
      return;
    }

    var last = DateTime.tryParse(_notice.latestCheck);
    DateTime now = DateTime.now();
    if (last != null) {
      Duration dur = now.difference(last);
      if (dur.inSeconds < _duration.inSeconds) {
        return;
      }
    }

    _notice.latestCheck = now.toString();
    _checking = true;

    try {
      ReturnResult<KaringNoticeItem> gnotice = await KaringUtils.getNotice(url);
      if (gnotice.error != null) {
        _checking = false;
        _duration = const Duration(minutes: 10);
        saveConfig();
        return;
      }
      _duration = _checkDuration;
      if (gnotice.data!.content.isEmpty && gnotice.data!.url.isEmpty) {
        _checking = false;
        saveConfig();
        return;
      }
      NoticeItem? item = _notice.getByUpdateTime(gnotice.data!.updateTime);
      if (item != null) {
        _checking = false;
        saveConfig();
        return;
      }
      if (url.isEmpty) {
        return;
      }
      NoticeItem newItem = NoticeItem();
      newItem.readed = false;
      newItem.updateTime = gnotice.data!.updateTime;
      newItem.expireTime = gnotice.data!.expireTime;
      newItem.ispId = ispId;
      newItem.title =
          name.isEmpty ? gnotice.data!.title : "[$name]${gnotice.data!.title}";
      newItem.content = gnotice.data!.content;
      newItem.url = gnotice.data!.url;
      _notice.items.insert(0, newItem);
      saveConfig();

      Future.delayed(const Duration(milliseconds: 300), () async {
        checkUpdate?.call();
      });
    } catch (err, _) {
      Log.w("NoticeManager._check exception ${err.toString()}");
    }

    _checking = false;
    Future.delayed(_duration, () async {
      await check();
    });
  }
}

class NoticeManager {
  static final List<void Function()> onEventCheck = [];

  static final NoticeLoadAndCheck _selfNotice = NoticeLoadAndCheck();
  static final NoticeLoadAndCheck _ispNotice = NoticeLoadAndCheck();

  static Future<void> init() async {
    var remoteConfig = RemoteConfigManager.getConfig();

    _selfNotice.url = remoteConfig.notice;
    _selfNotice.filePath = await PathUtils.noticeFilePath();
    _selfNotice.checkUpdate = _onCheckUpdate;
    await _selfNotice.loadConfig();

    await resetISP();
    VPNService.onEventStateChanged
        .add((FlutterVpnServiceState state, Map<String, String> params) async {
      if (state == FlutterVpnServiceState.connected) {
        Future.delayed(const Duration(seconds: 3), () async {
          _selfNotice.check();
          _ispNotice.check();
        });
      }
    });
    AppLifecycleStateNofity.onStateResumed(null, () {
      Future.delayed(const Duration(seconds: 3), () async {
        _selfNotice.check();
        _ispNotice.check();
      });
    });
    Future.delayed(const Duration(seconds: 3), () async {
      _selfNotice.check();
      _ispNotice.check();
    });
  }

  static Future<void> uninit() async {}
  static Future<void> resetISP() async {
    var remoteISPConfig = RemoteISPConfigManager.getConfig();
    if (remoteISPConfig.id.isNotEmpty) {
      _ispNotice.url = remoteISPConfig.notice;
      _ispNotice.filePath = await PathUtils.ispNoticeFilePath();
      _ispNotice.checkUpdate = _onCheckUpdate;
      _ispNotice.ispId = remoteISPConfig.id;
      _ispNotice.name = remoteISPConfig.name;
      _ispNotice._checkDuration = remoteISPConfig.noticeUpdateInterval;
      await _ispNotice.loadConfig();
    } else {
      _ispNotice.url = "";
      _ispNotice.filePath = "";
      _ispNotice.checkUpdate = null;
      _ispNotice.ispId = "";
      _ispNotice.name = "";
      _ispNotice.clear();
      await _ispNotice.saveConfig();
    }
  }

  static List<Notice> getNotices() {
    var remoteISPConfig = RemoteISPConfigManager.getConfig();
    if (remoteISPConfig.id.isNotEmpty) {
      return [_selfNotice.notice, _ispNotice.notice];
    }
    return [_selfNotice.notice];
  }

  static void _onCheckUpdate() {
    Future.delayed(const Duration(milliseconds: 300), () async {
      for (var callback in onEventCheck) {
        callback();
      }
    });
  }

  static Future<void> saveConfig() async {
    await _selfNotice.saveConfig();

    var remoteISPConfig = RemoteISPConfigManager.getConfig();
    if (remoteISPConfig.id.isNotEmpty) {
      await _ispNotice.saveConfig();
    }
  }
}
