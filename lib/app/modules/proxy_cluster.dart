// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/log.dart';

import 'package:vpn_service/vpn_service.dart';

class ProxyClusterNode {
  String name = "";
  String type = "";
  String latency = "";
  int port = 0;

  Map<String, dynamic> toJson() => {
    'name': name,
    'type': type,
    'latency': latency,
    'port': port,
  };
}

class ProxyCluster {
  static const int kOutboundMaxCount = 380; //windows
  static HttpServer? _server;
  static List<ProxyClusterNode> _proxyNodes = [];
  static final Map<String, Future<void> Function(HttpRequest)> _routes = {};
  static final Map<String, int> _tagPorts = {};

  static Future<String?> start() async {
    if (_server != null) {
      return null;
    }
    var settingConfig = SettingManager.getConfig();
    var proxy = settingConfig.proxy;
    try {
      _server = await HttpServer.bind(proxy.clusterHost, proxy.clusterPort);
    } catch (err, stacktrace) {
      return err.toString();
    }
    get("/get_proxies", (HttpRequest httpRequest) async {
      if (proxy.clusterSecret.isNotEmpty) {
        final secret = httpRequest.uri.queryParameters["secret"];
        if (secret != proxy.clusterSecret) {
          httpRequest.response
            ..statusCode = HttpStatus.unauthorized
            ..close();
          return;
        }
      }
      const JsonEncoder encoder = JsonEncoder.withIndent('  ');
      String configContent = encoder.convert(_proxyNodes);
      httpRequest.response
        ..statusCode = HttpStatus.ok
        ..headers.contentType = ContentType.json
        ..write(configContent)
        ..close();
    });
    _server!.listen((HttpRequest req) async {
      switch (req.method) {
        case "GET":
          _getRouting(req.uri.path, req);
          break;
        default:
          req.response
            ..statusCode = HttpStatus.notImplemented
            ..write('Not Implemented')
            ..close();
          break;
      }
    });

    return null;
  }

  static Future<void> stop() async {
    _routes.clear();
    if (_server != null) {
      await _server!.close();
      _server = null;
    }
  }

  static void get(
    String routing,
    Future<void> Function(HttpRequest httpRequest) callback,
  ) {
    _routes[routing] = callback;
  }

  static void _getRouting(String routing, HttpRequest httpRequest) {
    final callback = _routes[routing];
    if (callback != null) {
      callback(httpRequest);
    } else {
      httpRequest.response
        ..statusCode = HttpStatus.notFound
        ..write('Not Found')
        ..close();
    }
  }

  static Future<List<dynamic>> inboundsAndRulesFrom(
    List<ProxyConfig> allOutboundProxys,
    List<dynamic> rules,
  ) async {
    _proxyNodes = [];
    final List<ServerSocket> sockets = [];
    final List<dynamic> inbounds = [];

    var proxy = SettingManager.getConfig().proxy;
    var ports = [
      proxy.mixedRulePort,
      proxy.mixedDirectPort,
      proxy.mixedForwardPort,
      proxy.mixedRuleNetSharePort,
      proxy.mixedForwardNetSharePort,
      proxy.controlPort,
      proxy.clusterPort,
    ];

    try {
      for (var outbound in allOutboundProxys) {
        if (outbound.type == kOutboundTypeUrltest ||
            outbound.type == kOutboundTypeSelector ||
            outbound.type == kOutboundTypeDns ||
            outbound.type == kOutboundTypeDirect ||
            outbound.type == kOutboundTypeBlock) {
          continue;
        }
        if (_tagPorts.containsKey(outbound.tag)) {
          continue;
        }
        int listenPort = _tagPorts[outbound.tag] ?? 0;
        if (listenPort == 0) {
          listenPort = await NetworkUtils.getAvaliablePortNotCloseSocket(
            ports,
            sockets,
          );
          if (listenPort == 0) {
            continue;
          }
        }
        _tagPorts[outbound.tag] = listenPort;
        final node = ProxyClusterNode()
          ..name = outbound.tag
          ..type = outbound.type
          ..port = listenPort
          ..latency = outbound.latency;
        _proxyNodes.add(node);

        SingboxInboundMixedOptions mixedInboundOptions =
            SingboxInboundMixedOptions()
              ..listen = proxy.clusterHost
              ..listen_port = listenPort
              ..tag = "mixed_in:cluster:${outbound.tag}";
        inbounds.add(mixedInboundOptions);

        rules.add({
          "inbound": [mixedInboundOptions.tag],
          "outbound": node.name,
        });
        if (rules.length >= kOutboundMaxCount) {
          Log.w(
            "ProxyCluster.inboundsAndRulesFrom rules.length >= $kOutboundMaxCount",
          );
          break;
        }
      }
    } catch (err) {
      Log.w("ProxyCluster.inboundsAndRulesFrom exception ${err.toString()}");
    }

    List<int> firewallPorts = [];
    for (var sock in sockets) {
      firewallPorts.add(sock.port);
    }
    if (firewallPorts.isNotEmpty &&
        Platform.isWindows &&
        proxy.autoAddToFirewall &&
        SettingManager.getConfig().proxy.getClusterAllowAllInbounds()) {
      FlutterVpnService.firewallAddPorts(
        firewallPorts,
        PathUtils.serviceExeName(),
      );
    }

    for (var sock in sockets) {
      try {
        await sock.close();
      } catch (err) {}
    }
    return inbounds;
  }
}
