// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:convert';
import 'dart:io';

import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/log.dart';

class ProxyClusterNode {
  String name = "";
  String type = "";
  String latency = "";
  int port = 0;

  Map<String, dynamic> toJson() =>
      {'name': name, 'type': type, 'latency': latency, 'port': port};
}

class ProxyCluster {
  static const int kOutboundMaxCount = 380; //windows
  static HttpServer? _server;
  static List<ProxyClusterNode> _proxyNodes = [];
  static final List<String> _routerGet = [];
  static final List<Function> _requestCallback = [];

  static Future<String?> start() async {
    if (_server != null) {
      return null;
    }
    var proxy = SettingManager.getConfig().proxy;
    try {
      _server = await HttpServer.bind(proxy.clusterHost, proxy.clusterPort);
    } catch (err, stacktrace) {
      return err.toString();
    }

    _server!.listen((HttpRequest req) async {
      switch (req.method) {
        case "GET":
          await _getRouting(req.uri.path, req);
          break;
        default:
          req.response
            ..statusCode = HttpStatus.notImplemented
            ..write('Not Implemented')
            ..close();
          break;
      }
    });

    get("/get_proxies", (HttpRequest httpRequest) async {
      const JsonEncoder encoder = JsonEncoder.withIndent('  ');
      String configContent = encoder.convert(_proxyNodes);
      return httpRequest.response
        ..statusCode = HttpStatus.ok
        ..headers.contentType = ContentType.json
        ..write(configContent)
        ..close();
    });

    return null;
  }

  static Future<void> stop() async {
    _routerGet.clear();
    _requestCallback.clear();
    if (_server != null) {
      await _server!.close();
      _server = null;
    }
  }

  static get(String routing, Function(HttpRequest httpRequest) callback) {
    _routerGet.add(routing);
    _requestCallback.add(callback);
  }

  static _getRouting(String routing, HttpRequest httpRequest) {
    if (_routerGet.contains(routing)) {
      int index = _routerGet.indexOf(routing);
      return _requestCallback.elementAt(index).call(httpRequest);
    }
  }

  static Future<List<dynamic>> inboundsAndRulesFrom(
      List<ProxyConfig> allOutboundProxys, List<dynamic> rules) async {
    _proxyNodes = [];
    final List<ServerSocket> sockets = [];
    final List<dynamic> inbounds = [];

    var proxy = SettingManager.getConfig().proxy;
    var ports = [
      proxy.mixedRulePort,
      proxy.mixedDirectPort,
      proxy.mixedForwordPort,
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
        var listenPort =
            await NetworkUtils.getAvaliablePortNotCloseSocket(ports, sockets);
        if (listenPort == 0) {
          continue;
        }

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
          "outbound": node.name
        });
        if (rules.length >= kOutboundMaxCount) {
          break;
        }
      }
    } catch (err) {
      Log.w("ProxyCluster.inboundsAndRulesFrom exception ${err.toString()}");
    }

    for (var sock in sockets) {
      try {
        await sock.close();
      } catch (err) {}
    }
    return inbounds;
  }
}
