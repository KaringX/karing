// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:android_package_manager/android_package_manager.dart';
import 'package:csv/csv.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/diversion_group_custom_edit_screen.dart';
import 'package:karing/screens/diversion_group_custom_screen.dart';
import 'package:karing/screens/group_item.dart';
import 'package:karing/screens/group_screen.dart';
import 'package:karing/screens/net_connections_filter_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:web_socket_channel/io.dart';

class Connection {
  DateTime? startTime;
  num downloadTotal = 0;
  num uploadTotal = 0;
  num downloadTotalDirect = 0;
  num uploadTotalDirect = 0;
  num downloadSpeed = 0;
  num uploadSpeed = 0;
  List<Tracker> connections = [];
  num connectionsOut = 0;
  num connectionsIn = 0;
  num goroutines = 0;
  num threadCount = 0;
  num memory = 0;

  void fromJson(Map<String, dynamic>? map, bool withConnectsions) {
    if (map == null) {
      return;
    }
    startTime = DateTime.tryParse(map["startTime"] ?? "");
    downloadTotal = map["downloadTotal"] ?? 0;
    uploadTotal = map["uploadTotal"] ?? 0;
    downloadTotalDirect = map["downloadTotalDirect"] ?? 0;
    uploadTotalDirect = map["uploadTotalDirect"] ?? 0;
    downloadSpeed = map["downloadSpeed"] ?? 0;
    uploadSpeed = map["uploadSpeed"] ?? 0;
    memory = map["memory"] ?? 0;
    connectionsOut = map["connectionsOut"] ?? 0;
    connectionsIn = map["connectionsIn"] ?? 0;
    goroutines = map["goroutines"] ?? 0;
    threadCount = map["threadCount"] ?? 0;
    if (withConnectsions && map["connections"] != null) {
      for (var i in map["connections"]) {
        Tracker tr = Tracker();
        tr.fromJson(i);
        connections.add(tr);
      }
    }
  }
}

class TrackerMetaData {
  String network = "";
  String type = "";
  String sourceIP = "";
  String destinationIP = "";
  String sourcePort = "";
  String destinationPort = "";
  String host = "";
  String dnsMode = "";
  String processPath = "";
  String packageName = "";
  String user = "";
  String protocol = "";
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    network = map["network"] ?? "";
    type = map["type"] ?? "";
    sourceIP = map["sourceIP"] ?? "";
    destinationIP = map["destinationIP"] ?? "";
    sourcePort = map["sourcePort"] ?? "";
    destinationPort = map["destinationPort"] ?? "";
    host = map["host"] ?? "";
    dnsMode = map["dnsMode"] ?? "";
    processPath = map["processPath"] ?? "";
    packageName = map["packageName"] ?? "";
    user = map["user"] ?? "";
    protocol = map["protocol"] ?? "";
    if (Platform.isAndroid) {
      if (int.tryParse(processPath) != null) {
        processPath = "";
      }
    }
  }
}

class Tracker {
  bool connected = true;
  DateTime? lastConnected;
  List<String> chains = [];
  num download = 0;
  num upload = 0;
  String id = "";
  String rule = "";
  String rulePayload = "";
  DateTime start = DateTime.now();
  TrackerMetaData metadata = TrackerMetaData();

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    if (map["chains"] != null) {
      for (var i in map["chains"]) {
        chains.add(i);
      }
    }

    download = map["download"] ?? 0;
    upload = map["upload"] ?? 0;
    id = map["id"] ?? "";
    rule = map["rule"] ?? "";
    rulePayload = map["rulePayload"] ?? "";
    start = DateTime.parse(map["start"]);
    metadata.fromJson(map["metadata"]);
  }
}

class NetConnectionTranffic {
  num download = 0;
  num upload = 0;
  num lastDownload = 0;
  num lastUpload = 0;
}

class NetConnectionState {
  String process = ""; //https://crates.io/crates/netstat2
  String package = "";
  String protocol = "";
  String sourceip = "";
  String sourceport = "";
  String host = "";
  String ip = "";
  String port = "";
  String network = "";
  DateTime start = DateTime.now();
  DateTime end = DateTime.now();
  Map<String, NetConnectionTranffic> ids = {};
  Map<String, NetConnectionTranffic> removedIds = {};
  List<String> chains = [];
  String rule = "";

  String showHost = "";
  String showProcess = "";
  String showChain = "";
  String showRule = "";
  num getIdDownload() {
    return ids.values.fold(0, (prev, e) => prev + e.download);
  }

  num getRemoveIdDownload() {
    return removedIds.values.fold(0, (prev, e) => prev + e.download);
  }

  num getDownload() {
    return getIdDownload() + getRemoveIdDownload();
  }

  num getIdUpload() {
    return ids.values.fold(0, (prev, e) => prev + e.upload);
  }

  num getRemoveIdUpload() {
    return removedIds.values.fold(0, (prev, e) => prev + e.upload);
  }

  num getUpload() {
    return getIdUpload() + getRemoveIdUpload();
  }

  num getIdLastDownload() {
    return ids.values.fold(0, (prev, e) => prev + e.lastDownload);
  }

  num getRemoveIdLastDownload() {
    return removedIds.values.fold(0, (prev, e) => prev + e.lastDownload);
  }

  num getLastDownload() {
    return getIdLastDownload() + getRemoveIdLastDownload();
  }

  num getIdLastUpload() {
    return ids.values.fold(0, (prev, e) => prev + e.lastUpload);
  }

  num getRemoveIdLastUpload() {
    return removedIds.values.fold(0, (prev, e) => prev + e.lastUpload);
  }

  num getLastUpload() {
    return getIdLastUpload() + getRemoveIdLastUpload();
  }

  String getProcessName() {
    int n = process.lastIndexOf("/");
    if (n > 0) {
      return process.substring(n + 1);
    }
    n = n = process.lastIndexOf("\\");
    if (n > 0) {
      return process.substring(n + 1);
    }

    return process;
  }

  String getMacosAppName() {
    if (!Platform.isMacOS) {
      return "";
    }
    List<String> parts = process.split("/");
    for (var part in parts) {
      if (part.endsWith(".app")) {
        return part.replaceAll(".app", "");
      }
    }
    return "";
  }
}

class NetConnectionsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "NetConnectionsScreen");
  }

  final String connectionsUrl;
  const NetConnectionsScreen({super.key, required this.connectionsUrl});

  @override
  State<NetConnectionsScreen> createState() => _NetConnectionsScreenState();
}

class PackageInfoEx {
  late PackageInfo info;
  String name = "";
  Image? icon;
}

class _NetConnectionsScreenState
    extends LasyRenderingState<NetConnectionsScreen> {
  final Map<String, NetConnectionState> _states = {};
  List<NetConnectionState> _statesList = [];
  AndroidPackageManager? _pkgMgr;
  HttpClient? _httpClient;
  StreamSubscription<dynamic>? _subscriptions;
  final Map<String, PackageInfoEx> _applicationInfoList = {};
  bool _pause = false;
  NetConnectionFilter _filter = NetConnectionFilter();

  @override
  void initState() {
    ServerConfigGroupItem item = ServerManager.getCustomGroup();
    item.remark = t.custom;

    ServerDiversionGroupItem? itemDiversion =
        ServerManager.getDiversionCustomGroup();

    itemDiversion.remark = t.custom;
    _connectToService();
    if (Platform.isAndroid) {
      _pkgMgr = AndroidPackageManager();
      _pkgMgr!
          .getInstalledPackages(
        flags: PackageInfoFlags(
          {
            PMFlag.getMetaData,
          },
        ),
      )
          .then((value) async {
        if (!mounted) {
          return;
        }
        if (value == null) {
          return;
        }

        for (var app in value) {
          if (app.packageName == null) {
            continue;
          }
          PackageInfoEx info = PackageInfoEx();
          info.info = app;
          info.name = await getAppName(app.packageName!);

          if (!mounted) {
            return;
          }
          _applicationInfoList[app.packageName!] = info;
        }
      });
    }

    super.initState();
  }

  Future<String> getAppName(String? packageName) async {
    if (packageName == null) {
      return "";
    }
    return await _pkgMgr!.getApplicationLabel(packageName: packageName) ?? "";
  }

  String getConnectionStateKey(Tracker tracker) {
    return tracker.metadata.processPath +
        tracker.metadata.packageName +
        tracker.metadata.sourceIP +
        tracker.metadata.host +
        tracker.metadata.destinationIP +
        //tracker.metadata.destinationPort +
        tracker.metadata.network +
        tracker.chains.join();
  }

  List<Tracker> merge(List<Tracker> trackers) {
    Map<String, Tracker> newTrackers = {};
    for (var tracker in trackers) {
      String key = getConnectionStateKey(tracker);
      var find = newTrackers[key];
      if (find == null) {
        newTrackers[key] = tracker;
      } else {
        find.download += tracker.download;
        find.upload += tracker.upload;
        if (find.start.difference(tracker.start).inMilliseconds < 0) {
          find.start = tracker.start;
        }
      }
    }
    return newTrackers.values.toList();
  }

  void track(List<Tracker> trackers) {
    if (_pause) {
      return;
    }
    _states.forEach((key, value) {
      var list = value.ids.keys.toList();
      for (int i = 0; i < list.length; i++) {
        var id = list[i];
        bool hasId = false;
        for (var tracker in trackers) {
          if (tracker.id == id) {
            hasId = true;
            break;
          }
        }
        if (!hasId) {
          var ret = value.ids.remove(id);
          if (ret != null) {
            value.removedIds[id] = ret;
          }
        }
        if (value.ids.isEmpty) {
          value.end = DateTime.now();
          break;
        }
      }
    });

    for (var tracker in trackers) {
      String key = getConnectionStateKey(tracker);
      NetConnectionState? find = _states[key];
      if (find == null) {
        NetConnectionState state = NetConnectionState();
        state.process = tracker.metadata.processPath;
        state.package = tracker.metadata.packageName;
        state.protocol = tracker.metadata.protocol;
        state.sourceip = tracker.metadata.sourceIP;
        state.sourceport = tracker.metadata.sourcePort;
        state.host = tracker.metadata.host;
        state.ip = tracker.metadata.destinationIP;
        state.port = tracker.metadata.destinationPort;
        state.network = tracker.metadata.network;
        state.chains = tracker.chains;
        state.rule = tracker.rule;
        state.start = tracker.start;
        state.end = state.start;

        state.showHost =
            getShortHost(state.host.isNotEmpty ? state.host : state.ip);
        state.showProcess = state.getProcessName();
        state.showChain = getChain(state.chains);
        state.showRule = getRule(state.rule);

        NetConnectionTranffic tranffic = NetConnectionTranffic();
        tranffic.lastDownload = tracker.download;
        tranffic.lastUpload = tracker.upload;
        tranffic.download = tracker.download;
        tranffic.upload = tracker.upload;
        state.ids[tracker.id] = tranffic;

        _states[key] = state;
      } else {
        var id = find.ids[tracker.id];
        if (id == null) {
          NetConnectionTranffic tranffic = NetConnectionTranffic();
          tranffic.lastDownload = tracker.download;
          tranffic.lastUpload = tracker.upload;
          tranffic.download = tracker.download;
          tranffic.upload = tracker.upload;
          find.ids[tracker.id] = tranffic;
        } else {
          id.lastDownload = id.download;
          id.lastUpload = id.upload;
          id.download = tracker.download;
          id.upload = tracker.upload;
        }
      }
    }
    ajustProcess();
    setState(() {});
  }

  void ajustProcess() {
    if (Platform.isAndroid) {
      if (_applicationInfoList.isNotEmpty) {
        _states.forEach((key, value) {
          if (value.process.isEmpty && value.package.isNotEmpty) {
            PackageInfoEx? info = _applicationInfoList[value.package];
            if (info != null) {
              value.process = info.name;
            }
          }
        });
      }
    }
  }

  @override
  void dispose() {
    _disconnectToService();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    return PopScope(
        canPop: true,
        onPopInvokedWithResult: (didPop, result) {},
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.zero,
            child: AppBar(),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.arrow_back_ios_outlined,
                              size: 26,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: windowSize.width - 50 * 2,
                          child: Text(
                            tcontext.NetConnectionsScreen.title,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: ThemeConfig.kFontWeightTitle,
                                fontSize: ThemeConfig.kFontSizeTitle),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            onTapMore();
                          },
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.more_vert_outlined,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: _loadListView(context),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  String getShortHost(String host) {
    if (host.length > 40) {
      host =
          "${host.substring(0, 20)}...${host.substring(host.length - 20, host.length)}";
    }
    return host;
  }

  String getTagName(String tag) {
    final tcontext = Translations.of(context);
    if (tag == kOutboundTagUrltest) {
      return tcontext.outboundActionUrltest;
    } else if (ServerManager.isUrltestTagForCustom(tag)) {
      tag = ServerManager.removeUrltestTagPrefixForCustom(tag);
      return "${tcontext.outboundActionUrltest}[$tag]";
    } else if (tag == kOutboundTagDirect) {
      return tcontext.outboundActionDirect;
    } else if (tag == kOutboundTagBlock) {
      return tcontext.outboundActionBlock;
    } else if (tag == kOutboundTagDns) {
      return tcontext.dns;
    }
    return tag;
  }

  String getChain(List<String> chain) {
    if (chain.isEmpty) {
      return "";
    }

    for (var i = 0; i < chain.length; i++) {
      chain[i] = getTagName(chain[i]);
    }
    if (chain.length >= 2) {
      return "${chain[1]} -> ${chain[0]}";
    }
    return chain[0];
  }

  String getRule(String rule) {
    List<String> parts = rule.split("=>");
    if (parts.length != 2) {
      return rule;
    }
    return parts[0].trim();
  }

  Widget _loadListView(BuildContext context) {
    Size windowSize = MediaQuery.of(context).size;
    _statesList = _states.values.toList();
    if (_filter.networks.isNotEmpty) {
      for (int i = 0; i < _statesList.length; ++i) {
        if (!_filter.networks.contains(_statesList[i].network)) {
          _statesList.removeAt(i);
          --i;
        }
      }
    }
    if (_filter.hosts.isNotEmpty) {
      for (int i = 0; i < _statesList.length; ++i) {
        if (!_filter.hosts.contains(_statesList[i].showHost)) {
          _statesList.removeAt(i);
          --i;
        }
      }
    }
    if (_filter.ports.isNotEmpty) {
      for (int i = 0; i < _statesList.length; ++i) {
        if (!_filter.ports.contains(_statesList[i].port)) {
          _statesList.removeAt(i);
          --i;
        }
      }
    }
    if (_filter.process.isNotEmpty) {
      for (int i = 0; i < _statesList.length; ++i) {
        if (!_filter.process.contains(_statesList[i].showProcess)) {
          _statesList.removeAt(i);
          --i;
        }
      }
    }
    if (_filter.chains.isNotEmpty) {
      for (int i = 0; i < _statesList.length; ++i) {
        if (!_filter.chains.contains(_statesList[i].showChain)) {
          _statesList.removeAt(i);
          --i;
        }
      }
    }
    if (_filter.rules.isNotEmpty) {
      for (int i = 0; i < _statesList.length; ++i) {
        if (!_filter.rules.contains(_statesList[i].showRule)) {
          _statesList.removeAt(i);
          --i;
        }
      }
    }
    sort(_statesList);
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemCount: _statesList.length,
          itemBuilder: (BuildContext context, int index) {
            var current = _statesList[index];
            return createWidget(current, index + 1, windowSize);
          },
        ));
  }

  Future<void> _connectToService() async {
    bool started = await VPNService.started();
    if (!started) {
      return;
    }
    if (!mounted) {
      return;
    }
    if (_httpClient != null) {
      return;
    }

    String connectionsUrl = widget.connectionsUrl;
    if (!mounted) {
      return;
    }
    try {
      await _subscriptions?.cancel();
      _httpClient?.close(force: true);
      _httpClient ??= HttpClient();
      _httpClient!.userAgent = await HttpUtils.getUserAgent();
      _httpClient!.connectionTimeout = const Duration(seconds: 3);
      _httpClient!.findProxy = (Uri uri) => "DIRECT";

      {
        WebSocket webSocket =
            await WebSocket.connect(connectionsUrl, customClient: _httpClient);
        _subscriptions = IOWebSocketChannel(webSocket).stream.listen((message) {
          var obj = jsonDecode(message);
          Connection con = Connection();
          con.fromJson(obj, true);
          track(con.connections);
        }, onDone: () {
          _disconnectToService();
        }, onError: (error) {});
      }
    } catch (err) {
      Log.w("_connectToService exception ${err.toString()}");
      _disconnectToService();
    }
  }

  Future<void> _disconnectToService() async {
    await _subscriptions?.cancel();
    _subscriptions = null;
    _httpClient?.close();
    _httpClient = null;
  }

  Widget createWidget(NetConnectionState current, int index, Size windowSize) {
    if (current.showProcess.isEmpty) {
      current.showProcess = current.getProcessName();
    }
    bool isself = isSelf(current);
    String durTime = "";

    if (current.ids.isNotEmpty) {
      Duration dur = DateTime.now().difference(current.start);
      durTime = dur.toString().split(".")[0];
    } else {
      Duration dur = current.end.difference(current.start);
      durTime = dur.toString().split(".")[0];
    }

    const double padding = 4;
    const double arrow_forward_ios_rounded = 14;
    double centerWidth = windowSize.width -
        8 -
        5 -
        30 -
        padding * 2 * 2 -
        arrow_forward_ios_rounded;
    double height = 90;
    String processName = current.showProcess;
    if (processName.isNotEmpty) {
      String appName = current.getMacosAppName();
      if (appName.isNotEmpty) {
        processName = "$appName[$processName]";
      }
      height += 18;
    }
    if (current.package.isNotEmpty) {
      height += 18;
    }
    String lastUpload = ProxyConfUtils.convertTrafficToStringDouble(
        current.getUpload() - current.getLastUpload());
    String lastDownload = ProxyConfUtils.convertTrafficToStringDouble(
        current.getDownload() - current.getLastDownload());

    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      child: Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          onTap: isself
              ? null
              : () {
                  onTapItem(current);
                },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: padding,
            ),
            width: double.infinity,
            height: height,
            child: Row(
              children: [
                Row(
                  children: [
                    Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: current.ids.isNotEmpty
                              ? Colors.green
                              : Colors.grey,
                          shape: BoxShape.circle,
                        )),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: 30,
                      child: Text(
                        index.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: centerWidth,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Text(
                              "${current.showHost}:${current.port}",
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                              child: Text(
                                durTime,
                                style: const TextStyle(
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ]),
                          Row(children: [
                            Text(
                              "${current.sourceip}:${current.sourceport}",
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              current.protocol,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ]),
                          processName.isNotEmpty
                              ? Row(children: [
                                  Text(
                                    processName,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ])
                              : const SizedBox.shrink(),
                          current.package.isNotEmpty
                              ? Row(children: [
                                  Text(
                                    current.package,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ])
                              : const SizedBox.shrink(),
                          Row(children: [
                            Text(
                              current.network,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              "(${current.ids.length}:${current.removedIds.length})",
                              style: TextStyle(
                                fontSize: 12,
                                color: current.ids.length > 100
                                    ? Colors.red
                                    : null,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.upload,
                              size: 10,
                            ),
                            Text(
                              ProxyConfUtils.convertTrafficToStringDouble(
                                  current.getUpload()),
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.download,
                              size: 10,
                            ),
                            Text(
                              ProxyConfUtils.convertTrafficToStringDouble(
                                  current.getDownload()),
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            current.ids.isNotEmpty
                                ? const Icon(
                                    Icons.upload,
                                    size: 10,
                                  )
                                : const SizedBox(
                                    width: 0,
                                  ),
                            Text(
                              current.ids.isNotEmpty ? "$lastUpload/s" : "",
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            current.ids.isNotEmpty
                                ? const Icon(
                                    Icons.download,
                                    size: 10,
                                  )
                                : const SizedBox(
                                    width: 0,
                                  ),
                            Text(
                              current.ids.isNotEmpty ? "$lastDownload/s" : "",
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ]),
                          Row(
                            children: [
                              SizedBox(
                                width: centerWidth,
                                child: Text(
                                  current.showRule,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: centerWidth,
                                child: Text(
                                  current.showChain,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(padding),
                      child: isself
                          ? const SizedBox(
                              width: arrow_forward_ios_rounded,
                            )
                          : const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: arrow_forward_ios_rounded,
                            ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onTapMore() {
    showMenu(
        context: context,
        position: const RelativeRect.fromLTRB(0.1, 0, 0, 0),
        items: [
          PopupMenuItem(
              value: 1,
              child: SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  _pause ? Icons.play_arrow_outlined : Icons.pause_outlined,
                  size: 30,
                ),
              ),
              onTap: () {
                onTapPause();
              }),
          PopupMenuItem(
              value: 1,
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  Icons.filter_list_alt,
                  size: 30,
                ),
              ),
              onTap: () {
                onTapFilter();
              }),
          PopupMenuItem(
            value: 1,
            child: const SizedBox(
              width: 30,
              height: 30,
              child: Icon(
                Icons.copy,
                size: 30,
              ),
            ),
            onTap: () {
              onTapCopy();
            },
          ),
        ]);
  }

  void onTapPause() {
    _pause = !_pause;
    setState(() {});
  }

  void onTapFilter() async {
    var statesList = _states.values.toList();
    NetConnectionFilter options = NetConnectionFilter();
    for (var s in statesList) {
      options.networks.add(s.network);
      if (s.showHost.isNotEmpty) {
        options.hosts.add(s.showHost);
      }
      options.ports.add(s.port);
      if (s.showProcess.isNotEmpty) {
        options.process.add(s.showProcess);
      }
      if (s.showChain.isNotEmpty) {
        options.chains.add(s.showChain);
      }
      if (s.showRule.isNotEmpty) {
        options.rules.add(s.showRule);
      }
    }
    NetConnectionFilter? newFilter = await Navigator.push(
        context,
        MaterialPageRoute(
            settings: NetConnectionsFilterScreen.routSettings(),
            builder: (context) =>
                NetConnectionsFilterScreen(options: options, filter: _filter)));
    if (newFilter == null) {
      return;
    }
    _filter = newFilter;
  }

  void onTapCopy() async {
    final tcontext = Translations.of(context);
    var list = _states.values.toList();
    sort(list);
    List<List<dynamic>> list2 = [];
    for (var i in list) {
      List<dynamic> list3 = [];
      list3.add(i.process);
      list3.add(i.package);
      list3.add(i.sourceip);
      list3.add(i.sourceport);
      list3.add(i.host);
      list3.add(i.ip);
      list3.add(i.port);
      list3.add(i.start);

      String durTime = "";
      if (i.ids.isNotEmpty) {
        Duration dur = DateTime.now().difference(i.start);
        durTime = dur.toString().split(".")[0];
      } else {
        Duration dur = i.end.difference(i.start);
        durTime = dur.toString().split(".")[0];
      }

      list3.add(durTime);
      list3.add(i.network);
      list3.add(i.ids.length);
      list3.add(i.removedIds.length);
      list3.add(i.showHost);
      list3.add(i.showProcess);
      list3.add(i.showChain);
      list3.add(i.showRule);

      list3.add(i.getUpload());
      list3.add(i.getDownload());
      list2.add(list3);
    }
    String csv = const ListToCsvConverter().convert(list2);
    try {
      await Clipboard.setData(ClipboardData(text: csv));
    } catch (e) {}

    if (!mounted) {
      return;
    }
    DialogUtils.showAlertDialog(
        context, tcontext.NetConnectionsScreen.copyAsCSV);
  }

  void onTapItem(NetConnectionState current) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      List<GroupItemOptions> options = [];

      if (current.host.isNotEmpty) {
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.domain,
                text: current.host,
                textWidthPercent: 0.33,
                onPush: () async {
                  DiversionGroupCustomEditOptions options =
                      DiversionGroupCustomEditOptions();
                  options.domain = current.host;

                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: DiversionGroupCustomScreen.routSettings(),
                          builder: (context) =>
                              DiversionGroupCustomScreen(options: options)));
                })));
      }
      if (current.ip.isNotEmpty) {
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.ip,
                text: current.ip,
                textWidthPercent: 0.33,
                onPush: () async {
                  DiversionGroupCustomEditOptions options =
                      DiversionGroupCustomEditOptions();
                  options.ipCidr = current.ip;

                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: DiversionGroupCustomScreen.routSettings(),
                          builder: (context) =>
                              DiversionGroupCustomScreen(options: options)));
                })));
      }
      if (current.port.isNotEmpty) {
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.port,
                text: current.port,
                textWidthPercent: 0.33,
                onPush: () async {
                  DiversionGroupCustomEditOptions options =
                      DiversionGroupCustomEditOptions();
                  options.port = current.port;

                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: DiversionGroupCustomScreen.routSettings(),
                          builder: (context) =>
                              DiversionGroupCustomScreen(options: options)));
                })));
      }
      if (Platform.isAndroid && current.package.isNotEmpty) {
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.appPackage,
                text: current.package,
                textWidthPercent: 0.33,
                onPush: () async {
                  DiversionGroupCustomEditOptions options =
                      DiversionGroupCustomEditOptions();
                  options.package = current.package;

                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: DiversionGroupCustomScreen.routSettings(),
                          builder: (context) =>
                              DiversionGroupCustomScreen(options: options)));
                })));
      }
      if (PlatformUtils.isPC() && current.process.isNotEmpty) {
        String processName = current.getProcessName();

        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.processName,
                text: processName,
                textWidthPercent: 0.33,
                onPush: () async {
                  DiversionGroupCustomEditOptions options =
                      DiversionGroupCustomEditOptions();
                  options.processName = processName;

                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: DiversionGroupCustomScreen.routSettings(),
                          builder: (context) =>
                              DiversionGroupCustomScreen(options: options)));
                })));

        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.processPath,
                text: "${current.process[0]}:/.../$processName",
                textWidthPercent: 0.4,
                onPush: () async {
                  DiversionGroupCustomEditOptions options =
                      DiversionGroupCustomEditOptions();
                  options.processPath = current.process;

                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: DiversionGroupCustomScreen.routSettings(),
                          builder: (context) =>
                              DiversionGroupCustomScreen(options: options)));
                })));
      }

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("selectType"),
            builder: (context) => GroupScreen(
                  title: tcontext.NetConnectionsScreen.selectType,
                  getOptions: getOptions,
                )));
    setState(() {});
  }

  bool isSelf(NetConnectionState current) {
    var remoteConfig = RemoteConfigManager.getConfig();
    if (current.host.isNotEmpty) {
      if (current.host.contains(remoteConfig.host) ||
          current.host.contains(remoteConfig.sentry)) {
        return true;
      }
    }
    if (PlatformUtils.isPC()) {
      if (current.process.toLowerCase() ==
          Platform.resolvedExecutable.toLowerCase()) {
        return true;
      }
    }

    if (Platform.isAndroid) {
      if (current.package == AppUtils.getId()) {
        return true;
      }
    }
    String rule = getRule(current.rule);
    if (rule == "protocol=dns") {
      return true;
    }
    return false;
  }

  void sort(List<NetConnectionState> list) {
    list.sort(sortCompareConnected);
    int index = -1;
    for (var i = 0; i < list.length; i++) {
      if (list[i].ids.isEmpty) {
        index = i - 1;
        break;
      }
    }
    var sortMethod = Platform.isIOS ? sortCompareHost : sortCompareProcess;
    if (index != -1) {
      var nlc = list.take(index + 1).toList();
      var nlnc = list.skip(index + 1).toList();
      nlc.sort(sortMethod);
      nlnc.sort(sortMethod);
      list.clear();
      list.insertAll(0, nlc);
      list.addAll(nlnc);
    } else {
      list.sort(sortMethod);
    }
  }

  int sortCompareConnected(NetConnectionState a, NetConnectionState b) {
    return b.ids.length - a.ids.length;
  }

  int sortCompareProcess(NetConnectionState a, NetConnectionState b) {
    return a.process.compareTo(b.process);
  }

  int sortCompareHost(NetConnectionState a, NetConnectionState b) {
    return a.host.compareTo(b.host);
  }

  int sortCompareIp(NetConnectionState a, NetConnectionState b) {
    return a.ip.compareTo(b.ip);
  }
}
