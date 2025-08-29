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
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/websocket.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/diversion_group_custom_edit_screen.dart';
import 'package:karing/screens/diversion_group_custom_screen.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/group_screen.dart';
import 'package:karing/screens/net_connections_filter_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/sheet.dart';

enum ConnectionsSortType {
  none,
  downloadSpeed,
  uploadSpeed,
  download,
  upload,
}

typedef SortCallback = int Function(NetConnectionStateIn, NetConnectionStateIn);

class Connections {
  DateTime? startTime;
  num downloadTotal = 0;
  num uploadTotal = 0;
  num downloadTotalDirect = 0;
  num uploadTotalDirect = 0;
  num downloadSpeed = 0;
  num uploadSpeed = 0;
  List<ConnectionIn> connectionsIn = [];
  List<ConnectionOut> connectionsOut = [];
  num connectionsOutCount = 0;
  num connectionsInCount = 0;
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
    connectionsOutCount = map["connectionsOutCount"] ?? 0;
    connectionsInCount = map["connectionsInCount"] ?? 0;
    goroutines = map["goroutines"] ?? 0;
    threadCount = map["threadCount"] ?? 0;
    if (withConnectsions) {
      if (map["connections"] != null) {
        for (var i in map["connections"]) {
          ConnectionIn tr = ConnectionIn();
          tr.fromJson(i);
          connectionsIn.add(tr);
        }
      }
      if (map["connectionsOut"] != null) {
        for (var i in map["connectionsOut"]) {
          ConnectionOut tr = ConnectionOut();
          tr.fromJson(i);
          connectionsOut.add(tr);
        }
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

class ConnectionOut {
  DateTime? startTime;
  String network = "";
  String source = "";
  String destination = "";
  String fqdn = "";
  String outbound = "";

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    startTime = DateTime.tryParse(map["startTime"] ?? "");
    network = map["network"] ?? "";
    source = map["source"] ?? "";
    destination = map["destination"] ?? "";
    fqdn = map["fqdn"] ?? "";
    outbound = map["outbound"] ?? "";
  }
}

class ConnectionIn {
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

class NetConnectionStateIn {
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

class NetConnectionStateOut {
  DateTime? start;
  String network = "";
  String source = "";
  String destination = "";
  String fqdn = "";
  String outbound = "";

  NetConnectionStateOut(this.start, this.network, this.source, this.destination,
      this.fqdn, this.outbound);
}

class NetConnectionsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "NetConnectionsScreen");
  }

  final String connectionsUrl;
  final bool checkStarted;
  const NetConnectionsScreen(
      {super.key, required this.connectionsUrl, required this.checkStarted});

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
  final Map<String, NetConnectionStateIn> _states = {};
  List<NetConnectionStateIn> _connectionInList = [];
  final List<NetConnectionStateOut> _connectionOutList = [];
  AndroidPackageManager? _pkgMgr;
  Websocket? _websocket;
  final Map<String, PackageInfoEx> _applicationInfoList = {};
  bool _pause = false;
  ConnectionsSortType _sortType = ConnectionsSortType.none;
  bool _showConnectionIn = true;
  NetConnectionFilter _filter = NetConnectionFilter();

  @override
  void initState() {
    ServerConfigGroupItem item = ServerManager.getCustomGroup();
    item.remark = t.meta.custom;

    ServerDiversionGroupItem? itemDiversion =
        ServerManager.getDiversionCustomGroup();

    itemDiversion.remark = t.meta.custom;
    _connectToService();
    getInstalledPackages();
    super.initState();
  }

  Future<void> getInstalledPackages() async {
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
  }

  Future<String> getAppName(String? packageName) async {
    if (packageName == null) {
      return "";
    }
    return await _pkgMgr!.getApplicationLabel(packageName: packageName) ?? "";
  }

  String getConnectionInStateKey(ConnectionIn connection) {
    return connection.metadata.processPath +
        connection.metadata.packageName +
        connection.metadata.sourceIP +
        connection.metadata.host +
        connection.metadata.destinationIP +
        //connection.metadata.destinationPort +
        connection.metadata.network +
        connection.chains.join();
  }

  List<ConnectionIn> mergeConnectionsIn(List<ConnectionIn> connections) {
    Map<String, ConnectionIn> newTrackers = {};
    for (var connection in connections) {
      String key = getConnectionInStateKey(connection);
      var find = newTrackers[key];
      if (find == null) {
        newTrackers[key] = connection;
      } else {
        find.download += connection.download;
        find.upload += connection.upload;
        if (find.start.difference(connection.start).inMilliseconds < 0) {
          find.start = connection.start;
        }
      }
    }
    return newTrackers.values.toList();
  }

  bool convertConnectionsIn(List<ConnectionIn> connections) {
    if (!mounted) {
      return false;
    }
    if (_pause) {
      return false;
    }
    _states.forEach((key, value) {
      var list = value.ids.keys.toList();
      for (int i = 0; i < list.length; i++) {
        var id = list[i];
        bool hasId = false;
        for (var connection in connections) {
          if (connection.id == id) {
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

    for (var connection in connections) {
      String key = getConnectionInStateKey(connection);
      NetConnectionStateIn? find = _states[key];
      if (find == null) {
        NetConnectionStateIn state = NetConnectionStateIn();
        state.process = connection.metadata.processPath;
        state.package = connection.metadata.packageName;
        state.protocol = connection.metadata.protocol;
        state.sourceip = connection.metadata.sourceIP;
        state.sourceport = connection.metadata.sourcePort;
        state.host = connection.metadata.host;
        state.ip = connection.metadata.destinationIP;
        state.port = connection.metadata.destinationPort;
        state.network = connection.metadata.network;
        state.chains = connection.chains;
        state.rule = connection.rule;
        state.start = connection.start;
        state.end = state.start;

        state.showHost =
            getShortHost(state.host.isNotEmpty ? state.host : state.ip);
        state.showProcess = state.getProcessName();
        state.showChain = getChain(state.chains);
        state.showRule = getRule(state.rule);

        NetConnectionTranffic tranffic = NetConnectionTranffic();
        tranffic.lastDownload = connection.download;
        tranffic.lastUpload = connection.upload;
        tranffic.download = connection.download;
        tranffic.upload = connection.upload;
        state.ids[connection.id] = tranffic;

        _states[key] = state;
      } else {
        var id = find.ids[connection.id];
        if (id == null) {
          NetConnectionTranffic tranffic = NetConnectionTranffic();
          tranffic.lastDownload = connection.download;
          tranffic.lastUpload = connection.upload;
          tranffic.download = connection.download;
          tranffic.upload = connection.upload;
          find.ids[connection.id] = tranffic;
        } else {
          id.lastDownload = id.download;
          id.lastUpload = id.upload;
          id.download = connection.download;
          id.upload = connection.upload;
        }
      }
    }
    ajustProcess();
    return true;
  }

  bool convertConnectionsOut(List<ConnectionOut> connections) {
    if (!mounted) {
      return false;
    }
    if (_pause) {
      return false;
    }
    _connectionOutList.clear();
    for (var connect in connections) {
      _connectionOutList.add(NetConnectionStateOut(
          connect.startTime,
          connect.network,
          connect.source,
          connect.destination,
          connect.fqdn,
          getTagName(connect.outbound)));
    }

    return true;
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
                          child: Tooltip(
                              message: tcontext.meta.more,
                              child: const SizedBox(
                                width: 50,
                                height: 30,
                                child: Icon(
                                  Icons.more_vert_outlined,
                                  size: 30,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: _showConnectionIn
                        ? _loadListViewConnectionsIn(context)
                        : _loadListViewConnectionsOut(context),
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
      return tcontext.outboundRuleMode.urltest;
    } else if (ServerManager.isUrltestTagForCustom(tag)) {
      tag = ServerManager.removeUrltestTagPrefixForCustom(tag);
      return "${tcontext.outboundRuleMode.urltest}[$tag]";
    } else if (tag == kOutboundTagDirect) {
      return tcontext.outboundRuleMode.direct;
    } else if (tag == kOutboundTagBlock) {
      return tcontext.outboundRuleMode.block;
    } else if (tag == kOutboundTagDns) {
      return tcontext.meta.dns;
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

  Widget _loadListViewConnectionsIn(BuildContext context) {
    Size windowSize = MediaQuery.of(context).size;
    _connectionInList = _states.values.toList();
    if (_filter.networks.isNotEmpty) {
      for (int i = 0; i < _connectionInList.length; ++i) {
        if (!_filter.networks.contains(_connectionInList[i].network)) {
          _connectionInList.removeAt(i);
          --i;
        }
      }
    }
    if (_filter.hosts.isNotEmpty) {
      for (int i = 0; i < _connectionInList.length; ++i) {
        if (!_filter.hosts.contains(_connectionInList[i].showHost)) {
          _connectionInList.removeAt(i);
          --i;
        }
      }
    }
    if (_filter.ports.isNotEmpty) {
      for (int i = 0; i < _connectionInList.length; ++i) {
        if (!_filter.ports.contains(_connectionInList[i].port)) {
          _connectionInList.removeAt(i);
          --i;
        }
      }
    }
    if (_filter.process.isNotEmpty) {
      for (int i = 0; i < _connectionInList.length; ++i) {
        if (!_filter.process.contains(_connectionInList[i].showProcess)) {
          _connectionInList.removeAt(i);
          --i;
        }
      }
    }
    if (_filter.chains.isNotEmpty) {
      for (int i = 0; i < _connectionInList.length; ++i) {
        if (!_filter.chains.contains(_connectionInList[i].showChain)) {
          _connectionInList.removeAt(i);
          --i;
        }
      }
    }
    if (_filter.rules.isNotEmpty) {
      for (int i = 0; i < _connectionInList.length; ++i) {
        if (!_filter.rules.contains(_connectionInList[i].showRule)) {
          _connectionInList.removeAt(i);
          --i;
        }
      }
    }
    sortConnectionIn(_connectionInList);
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.separated(
          itemCount: _connectionInList.length,
          itemBuilder: (BuildContext context, int index) {
            var current = _connectionInList[index];
            return createWidgetConnectionIn(current, index + 1, windowSize);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 1,
              thickness: 0.3,
            );
          },
        ));
  }

  Widget _loadListViewConnectionsOut(BuildContext context) {
    sortConnectionOut(_connectionOutList);
    Size windowSize = MediaQuery.of(context).size;
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.separated(
          itemCount: _connectionOutList.length,
          itemBuilder: (BuildContext context, int index) {
            var current = _connectionOutList[index];
            return createWidgetConnectionOut(current, index + 1, windowSize);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 1,
              thickness: 0.3,
            );
          },
        ));
  }

  Future<void> _connectToService() async {
    if (widget.checkStarted) {
      bool started = await VPNService.getStarted();
      if (!started) {
        return;
      }
    }

    if (!mounted) {
      return;
    }
    _websocket ??= Websocket(
        url: widget.connectionsUrl,
        userAgent: await HttpUtils.getUserAgent(),
        onMessage: (String message) {
          var obj = jsonDecode(message);
          Connections con = Connections();
          con.fromJson(obj, true);
          if (!mounted) {
            return;
          }
          bool refreshIn = convertConnectionsIn(con.connectionsIn);
          bool refreshOut = convertConnectionsOut(con.connectionsOut);
          if (refreshIn || refreshOut) {
            setState(() {});
          }
        },
        onDone: () {
          _disconnectToService();
        },
        onError: (err) {
          _disconnectToService();
        });
    await _websocket!.connect();
  }

  Future<void> _disconnectToService() async {
    await _websocket?.disconnect();
  }

  Widget createWidgetConnectionIn(
      NetConnectionStateIn current, int index, Size windowSize) {
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
    double height = 100;
    Image? processIcon;
    String processName = current.showProcess;
    if (processName.isNotEmpty) {
      String appName = current.getMacosAppName();
      if (appName.isNotEmpty) {
        processName = "$appName[$processName]";
      }
      height += 18;
      if (Platform.isAndroid) {
        if (current.package.isNotEmpty) {
          processIcon = _applicationInfoList[current.package]?.icon;
        }
      } else if (Platform.isWindows) {
      } else if (Platform.isMacOS) {
      } else if (Platform.isLinux) {}
    }
    if (current.package.isNotEmpty) {
      height += 18;
    }

    String lastUpload = ProxyConfUtils.convertTrafficToStringDouble(
        current.getUpload() - current.getLastUpload());
    String lastDownload = ProxyConfUtils.convertTrafficToStringDouble(
        current.getDownload() - current.getLastDownload());
    String noSpeed = "0 B";
    return Material(
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
                        color:
                            current.ids.isNotEmpty ? Colors.green : Colors.grey,
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
                          SizedBox(
                            width: centerWidth - 5 - 40 - 10,
                            child: Text(
                              "${current.showHost}:${current.port}",
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
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
                        if (processName.isNotEmpty) ...[
                          Row(children: [
                            if (processIcon != null) ...[
                              SizedBox(
                                  width: 12, height: 12, child: processIcon)
                            ],
                            Text(
                              processName,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ])
                        ],
                        if (current.package.isNotEmpty) ...[
                          Row(children: [
                            Text(
                              current.package,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ])
                        ],
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
                              color:
                                  current.ids.length > 100 ? Colors.red : null,
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
                          if (current.ids.isNotEmpty &&
                              (lastUpload != noSpeed)) ...[
                            const Icon(
                              Icons.upload,
                              size: 10,
                              color: Colors.green,
                            ),
                            Text(
                              "$lastUpload/s",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.green,
                              ),
                            )
                          ],
                          const SizedBox(
                            width: 5,
                          ),
                          if (current.ids.isNotEmpty &&
                              (lastDownload != noSpeed)) ...[
                            const Icon(
                              Icons.download,
                              size: 10,
                              color: Colors.green,
                            )
                          ],
                          if (current.ids.isNotEmpty &&
                              (lastDownload != noSpeed)) ...[
                            Text(
                              "$lastDownload/s",
                              style: const TextStyle(
                                fontSize: 12,
                                color: Colors.green,
                              ),
                            )
                          ],
                        ]),
                        Row(
                          children: [
                            SizedBox(
                              width: centerWidth,
                              child: Text(
                                current.showRule,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
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
                                maxLines: 1,
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
    );
  }

  Widget createWidgetConnectionOut(
      NetConnectionStateOut current, int index, Size windowSize) {
    const double padding = 4;
    double height = 60;
    double centerWidth = windowSize.width - 5 - 30 - padding * 2 * 2;
    String durTime = "";
    if (current.start != null) {
      Duration dur = DateTime.now().difference(current.start!);
      durTime = dur.toString().split(".")[0];
    }
    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
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
                        SizedBox(
                          width: centerWidth - 5 - 40,
                          child: Text(
                            current.fqdn.isEmpty
                                ? current.destination
                                : "${current.fqdn} [${current.destination}]",
                            style: const TextStyle(
                              fontSize: 12,
                              overflow: TextOverflow.ellipsis,
                            ),
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
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        child: Text(
                          current.network,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        current.outbound,
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void onTapMore() {
    final tcontext = Translations.of(context);
    List<Widget> widgets = [
      ListTile(
        title: Text(
          _pause ? tcontext.meta.start : tcontext.meta.pause,
        ),
        leading: Icon(
          _pause ? Icons.play_arrow_outlined : Icons.pause_outlined,
        ),
        onTap: () async {
          Navigator.pop(context);
          onTapPause();
        },
      ),
      ListTile(
        title: Text(
          _showConnectionIn ? tcontext.meta.outbound : tcontext.meta.inbound,
        ),
        leading: Icon(
          Icons.exit_to_app_outlined,
        ),
        onTap: () async {
          Navigator.pop(context);
          _showConnectionIn = !_showConnectionIn;
          setState(() {});
        },
      ),
      if (_showConnectionIn) ...[
        ListTile(
          title: Text(
            tcontext.meta.filter,
          ),
          leading: Icon(
            Icons.filter_list_alt,
          ),
          onTap: () async {
            Navigator.pop(context);
            onTapFilter();
          },
        ),
        ListTile(
          title: Text(
            tcontext.meta.copy,
          ),
          leading: Icon(
            Icons.copy,
          ),
          onTap: () async {
            Navigator.pop(context);
            onTapCopy();
          },
        ),
        ListTile(
          title: Text(
            "${tcontext.meta.sort}-${tcontext.meta.bydefault}",
            style: TextStyle(
                color: _sortType == ConnectionsSortType.none
                    ? ThemeDefine.kColorBlue
                    : null),
          ),
          leading: Icon(
            Icons.sort_by_alpha,
          ),
          onTap: () async {
            Navigator.pop(context);
            _sortType = ConnectionsSortType.none;
          },
        ),
        ListTile(
          title: Text(
            "${tcontext.meta.sort}-${tcontext.meta.downloadSpeed}",
            style: TextStyle(
                color: _sortType == ConnectionsSortType.downloadSpeed
                    ? ThemeDefine.kColorBlue
                    : null),
          ),
          leading: Icon(
            Icons.sort,
          ),
          onTap: () async {
            Navigator.pop(context);
            _sortType = ConnectionsSortType.downloadSpeed;
            setState(() {});
          },
        ),
        ListTile(
          title: Text(
            "${tcontext.meta.sort}-${tcontext.meta.uploadSpeed}",
            style: TextStyle(
                color: _sortType == ConnectionsSortType.uploadSpeed
                    ? ThemeDefine.kColorBlue
                    : null),
          ),
          leading: Icon(
            Icons.sort,
          ),
          onTap: () async {
            Navigator.pop(context);
            _sortType = ConnectionsSortType.uploadSpeed;
            setState(() {});
          },
        ),
        ListTile(
          title: Text(
            "${tcontext.meta.sort}-${tcontext.meta.download}",
            style: TextStyle(
                color: _sortType == ConnectionsSortType.download
                    ? ThemeDefine.kColorBlue
                    : null),
          ),
          leading: Icon(
            Icons.sort,
          ),
          onTap: () async {
            Navigator.pop(context);
            _sortType = ConnectionsSortType.download;
            setState(() {});
          },
        ),
        ListTile(
          title: Text(
            "${tcontext.meta.sort}-${tcontext.meta.upload}",
            style: TextStyle(
                color: _sortType == ConnectionsSortType.upload
                    ? ThemeDefine.kColorBlue
                    : null),
          ),
          leading: Icon(
            Icons.sort,
          ),
          onTap: () async {
            Navigator.pop(context);
            _sortType = ConnectionsSortType.upload;
            setState(() {});
          },
        ),
      ],
    ];

    showSheetWidgets(context: context, widgets: widgets);
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
    sortConnectionIn(list);
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

  void onTapItem(NetConnectionStateIn current) async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [];

      if (current.host.isNotEmpty) {
        options.add(GroupItemOptions(
            pushOptions: GroupItemPushOptions(
                name: tcontext.meta.domain,
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
                name: tcontext.meta.ip,
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
                name: tcontext.meta.port,
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
                name: tcontext.meta.appPackage,
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
                name: tcontext.meta.processName,
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
                name: tcontext.meta.processPath,
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

  bool isSelf(NetConnectionStateIn current) {
    var remoteConfig = RemoteConfigManager.getConfig();
    if (current.host.isNotEmpty) {
      if (current.host == remoteConfig.host ||
          current.host.contains(".${remoteConfig.host}") ||
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

  void sortConnectionOut(List<NetConnectionStateOut> list) {
    list.sort(sortCompareDestination);
  }

  void sortConnectionIn(List<NetConnectionStateIn> list) {
    list.sort(sortCompareConnected);
    int index = -1;
    for (var i = 0; i < list.length; i++) {
      if (list[i].ids.isEmpty) {
        index = i - 1;
        break;
      }
    }
    late SortCallback sortCallback;
    switch (_sortType) {
      case ConnectionsSortType.downloadSpeed:
        sortCallback = sortCompareDownloadSpeed;
        break;
      case ConnectionsSortType.uploadSpeed:
        sortCallback = sortCompareUploadSpeed;
        break;
      case ConnectionsSortType.download:
        sortCallback = sortCompareDownload;
        break;
      case ConnectionsSortType.upload:
        sortCallback = sortCompareUpload;
        break;
      default:
        sortCallback = Platform.isIOS ? sortCompareHost : sortCompareProcess;
        break;
    }

    if (index != -1) {
      var nlc = list.take(index + 1).toList();
      var nlnc = list.skip(index + 1).toList();
      nlc.sort(sortCallback);
      nlnc.sort(sortCallback);
      list.clear();
      list.insertAll(0, nlc);
      list.addAll(nlnc);
    } else {
      list.sort(sortCallback);
    }
  }

  int sortCompareDestination(NetConnectionStateOut a, NetConnectionStateOut b) {
    String addrA =
        a.fqdn.isEmpty ? a.destination : "${a.fqdn} [${a.destination}]";
    String addrB =
        b.fqdn.isEmpty ? b.destination : "${b.fqdn} [${b.destination}]";
    return addrA.compareTo(addrB);
  }

  int sortCompareConnected(NetConnectionStateIn a, NetConnectionStateIn b) {
    return b.ids.length - a.ids.length;
  }

  int sortCompareProcess(NetConnectionStateIn a, NetConnectionStateIn b) {
    return a.process.compareTo(b.process);
  }

  int sortCompareHost(NetConnectionStateIn a, NetConnectionStateIn b) {
    return a.host.compareTo(b.host);
  }

  int sortCompareUploadSpeed(NetConnectionStateIn a, NetConnectionStateIn b) {
    final aSpeed = a.getUpload() - a.getLastUpload();
    final bSpeed = b.getUpload() - b.getLastUpload();
    return (bSpeed - aSpeed).toInt();
  }

  int sortCompareDownloadSpeed(NetConnectionStateIn a, NetConnectionStateIn b) {
    final aSpeed = a.getDownload() - a.getLastDownload();
    final bSpeed = b.getDownload() - b.getLastDownload();
    return (bSpeed - aSpeed).toInt();
  }

  int sortCompareUpload(NetConnectionStateIn a, NetConnectionStateIn b) {
    return (b.getUpload() - a.getUpload()).toInt();
  }

  int sortCompareDownload(NetConnectionStateIn a, NetConnectionStateIn b) {
    return (b.getDownload() - a.getDownload()).toInt();
  }
}
