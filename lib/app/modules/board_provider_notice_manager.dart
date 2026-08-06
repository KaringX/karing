// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/board_provider_manager.dart';
import 'package:karing/app/private/app_url_utils_private.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/did.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/notice_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:vpn_service/state.dart';

class BoardProviderNoticeItem {
  String providerId = "";
  bool readed = true;
  String updateTime = "";
  String expireTime = "";
  String title = "";
  String content = "";
  String url = "";

  Map<String, dynamic> toJson() => {
    "provider_id": providerId,
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
    providerId = map["provider_id"] ?? "";
    readed = map["readed"] ?? true;
    updateTime = map["update_time"] ?? "";
    expireTime = map["expire_time"] ?? "";
    title = map["title"] ?? "";
    content = map["content"] ?? "";
    url = map["url"] ?? "";
  }

  static BoardProviderNoticeItem fromJsonStatic(Map<String, dynamic>? map) {
    BoardProviderNoticeItem config = BoardProviderNoticeItem();
    config.fromJson(map);
    return config;
  }
}

class BoardProviderNotice {
  String latestCheck = "";
  List<BoardProviderNoticeItem> items = [];

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
      BoardProviderNoticeItem item = BoardProviderNoticeItem.fromJsonStatic(i);
      if (item.providerId.isEmpty) {
        continue;
      }
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

  static BoardProviderNotice fromJsonStatic(Map<String, dynamic>? map) {
    BoardProviderNotice config = BoardProviderNotice();
    config.fromJson(map);
    return config;
  }

  BoardProviderNoticeItem? getByUpdateTime(
    String providerId,
    String updateTime,
  ) {
    for (var i in items) {
      if (i.providerId == providerId && i.updateTime == updateTime) {
        return i;
      }
    }
    return null;
  }

  BoardProviderNoticeItem? getFirstUnread(String providerId) {
    for (var i in items) {
      if (i.providerId == providerId && i.readed == false) {
        return i;
      }
    }
    return null;
  }

  int sort(BoardProviderNoticeItem a, BoardProviderNoticeItem b) {
    DateTime ua = DateTime.parse(a.updateTime);
    DateTime ub = DateTime.parse(b.updateTime);

    return ub.compareTo(ua);
  }
}

class BoardProviderNoticeLoadAndCheck {
  String _providerId = "";
  bool _checking = false;
  final Duration _checkDuration = const Duration(hours: 3);
  Duration _duration = const Duration(hours: 3);
  BoardProviderNotice _notice = BoardProviderNotice();

  String name = "";
  String filePath = "";
  Function()? checkUpdate;
  BoardProviderNotice get notice => _notice;

  Future<BoardProviderNotice> _loadConfig(String filePath) async {
    var file = File(filePath);
    bool exists = await file.exists();
    if (!exists) {
      return BoardProviderNotice();
    }
    try {
      String content = await file.readAsString();
      if (content.isNotEmpty) {
        var config = jsonDecode(content);
        BoardProviderNotice notice = BoardProviderNotice();
        notice.fromJson(config);
        return notice;
      }
    } catch (err, stacktrace) {}
    return BoardProviderNotice();
  }

  Future<void> load() async {
    if (filePath.isEmpty) {
      return;
    }
    _notice = await _loadConfig(filePath);
  }

  void clear() {
    _notice.latestCheck = "";
    _notice.items.clear();
  }

  Future<void> save() async {
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
    var provider = BoardProviderManager.getBindedProvider();
    if (provider != null && provider.notificationPush) {
      if (_providerId.isNotEmpty) {
        if (provider.id != _providerId) {
          _providerId = provider.id;
          _notice.latestCheck = "";
        }
      } else {
        _providerId = provider.id;
        _notice.latestCheck = "";
      }
      if (_providerId.isEmpty) {
        return;
      }
    } else {
      _providerId = "";
      return;
    }

    final providerId = _providerId;
    var last = DateTime.tryParse(_notice.latestCheck);
    DateTime now = DateTime.now();
    if (last != null) {
      Duration dur = now.difference(last);
      if (dur.inSeconds < _duration.inSeconds) {
        return;
      }
    }

    _notice.latestCheck = now.toString();
    if (_checking) {
      return;
    }
    _checking = true;

    try {
      var headers = {
        HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
      };
      final urlAndbody = BoardProviderPrivate.getNoticePushUrlAndBody(
        app: AppUtils.getName(),
        version: AppUtils.getBuildinVersion(),
        did: await Did.getDid(),
        pid: providerId,
      );
      var result = await HttpUtils.httpPostRequest(
        urlAndbody.item1,
        null,
        headers,
        urlAndbody.item3,
        const Duration(seconds: 10),
        null,
        null,
        null,
        checkStatuscode: false,
      );
      _checking = false;
      if (result.error != null) {
        _duration = const Duration(minutes: 10);
        save();
        return;
      }
      RawNoticeItem? gnotice;
      try {
        gnotice = await NoticeUtils.parseNotice(result.data!.item2);
      } catch (err, _) {
        Log.i('KaringUtils parseNotice exception ${err.toString()}');
        _duration = const Duration(hours: 1);
        save();
        return;
      }
      if (gnotice == null) {
        Log.i('KaringUtils parseNotice exception gnotice is null');
        _duration = const Duration(hours: 1);
        save();
        return;
      }
      _duration = _checkDuration;
      BoardProviderNoticeItem? item = _notice.getByUpdateTime(
        providerId,
        gnotice.updateTime,
      );
      if (item != null) {
        save();
        return;
      }
      BoardProviderNoticeItem newItem = BoardProviderNoticeItem();
      newItem.providerId = providerId;
      newItem.readed = false;
      newItem.updateTime = gnotice.updateTime;
      newItem.expireTime = gnotice.expireTime;
      newItem.title = name.isEmpty ? gnotice.title : "[$name]${gnotice.title}";
      newItem.content = gnotice.content;
      newItem.url = gnotice.url;
      _notice.items.insert(0, newItem);
      save();

      Future.delayed(const Duration(milliseconds: 300), () async {
        checkUpdate?.call();
      });
    } catch (err, _) {
      _checking = false;
      Log.w("BoardProviderNoticeManager._check exception ${err.toString()}");
    }

    Future.delayed(_duration, () async {
      await check();
    });
  }
}

class BoardProviderNoticeManager {
  static final List<void Function()> onEventCheck = [];
  static Timer? _timerChecker;
  static final BoardProviderNoticeLoadAndCheck _selfNotice =
      BoardProviderNoticeLoadAndCheck();

  static Future<void> init() async {
    _selfNotice.filePath = await PathUtils.providerNoticeFilePath();
    _selfNotice.checkUpdate = _onCheckUpdate;
    await _selfNotice.load();

    BoardProviderManager.onEventProvidersBinded.add(() {
      _selfNotice.check();
    });
    BoardProviderManager.onEventProvidersUnBinded.add(() {});
    VPNService.onEventStateChanged.add((
      FlutterVpnServiceState state,
      Map<String, String> params,
    ) async {
      if (state == FlutterVpnServiceState.connected) {
        Future.delayed(const Duration(seconds: 3), () async {
          _selfNotice.check();
        });
      }
    });
    AppLifecycleStateNofity.onStateResumed(null, () {
      Future.delayed(const Duration(seconds: 3), () async {
        _selfNotice.check();
      });
    });
    Future.delayed(const Duration(seconds: 3), () async {
      _selfNotice.check();
    });
    if (PlatformUtils.isPC()) {
      _timerChecker = Timer.periodic(const Duration(minutes: 30), (timer) {
        _selfNotice.check();
      });
    }
  }

  static Future<void> uninit() async {
    _timerChecker?.cancel();
    _timerChecker = null;
  }

  static List<BoardProviderNotice> getNotices() {
    return [_selfNotice.notice];
  }

  static void _onCheckUpdate() {
    Future.delayed(const Duration(milliseconds: 300), () async {
      for (var callback in onEventCheck) {
        callback();
      }
    });
  }

  static Future<void> save() async {
    await _selfNotice.save();
  }
}
