// ignore_for_file: non_constant_identifier_names, empty_catches

import 'dart:convert';

import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/clash_to_singbox.dart';
import 'package:karing/app/utils/clash_yaml.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_json.dart';
import 'package:karing/app/utils/stacktrace_utils.dart';
import 'package:karing/app/utils/tag_gen.dart';

class SSJsonData {
  String remarks = "";
  bool? udp;
  String server = "";
  int server_port = 0;
  String method = "";
  String password = "";
  String? plugin;
  Map<String, dynamic>? plugin_opts;

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    remarks = map["remarks"] ?? "";
    method = map["method"] ?? "";
    udp = map["udp"] ?? false;
    server = map["server"] ?? "";
    var portRaw = map["server_port"];
    if (portRaw is String) {
      server_port = int.parse(portRaw);
    } else if (portRaw is int) {
      server_port = portRaw;
    }
    password = map["password"] ?? "";
    plugin = map["plugin"];
    plugin_opts = map["plugin_opts"];
  }

  Map<String, dynamic> toJson() => {
        'remarks': remarks,
        'udp': udp,
        'server': server,
        'server_port': server_port,
        'method': method,
        'password': password,
        'plugin': plugin,
      };
}

class SSJsonUtils {
  static ReturnResultError? tryConvertJson(dynamic config,
      ServerConfigGroupItem proxyItem, TransExceptionAndUnsupport eu) {
    List<SSJsonData> ss = [];
    try {
      for (var con in config) {
        SSJsonData ssconfig = SSJsonData();
        ssconfig.fromJson(con);
        if (ssconfig.server.isNotEmpty &&
            ssconfig.server_port != 0 &&
            ssconfig.method.isNotEmpty) {
          ss.add(ssconfig);
        }
      }
    } catch (err, stacktrace) {
      return ReturnResultError(err.toString(), stacktrace: stacktrace);
    }
    return _convertProxy(ss, proxyItem, eu);
  }

  static ReturnResult<bool> tryConvert(String content,
      ServerConfigGroupItem proxyItem, TransExceptionAndUnsupport eu) {
    List<SSJsonData> ss = [];
    String? decoded;
    try {
      String de = base64.normalize(content);
      decoded = utf8.decode(base64.decode(de));
    } catch (err, _) {}
    try {
      var config = jsonDecode(decoded ?? content);
      for (var con in config) {
        SSJsonData ssconfig = SSJsonData();
        ssconfig.fromJson(con);
        if (ssconfig.server.isNotEmpty &&
            ssconfig.server_port != 0 &&
            ssconfig.method.isNotEmpty) {
          ss.add(ssconfig);
        }
      }
    } catch (err, stacktrace) {
      return ReturnResult(
        handled: false,
        error: ReturnResultError(err.toString(), stacktrace: stacktrace),
      );
    }

    ReturnResultError? error = _convertProxy(ss, proxyItem, eu);
    return ReturnResult(
      handled: error == null,
      error: error,
    );
  }

  static ReturnResultError? _convertProxy(List<SSJsonData> data,
      ServerConfigGroupItem proxyItem, TransExceptionAndUnsupport eu) {
    Map<String, int> tagSets = {};
    for (var item in proxyItem.servers) {
      tagSets[item.tag] = 0;
    }
    var tagGen = TagGen(tags: tagSets);

    for (var proxy in data) {
      try {
        ClashYamlOubboundOptions clash = ClashYamlOubboundOptions();
        clash.type = "ss";
        clash.name = proxy.remarks.trim();

        clash.server = proxy.server;
        clash.port = proxy.server_port.toString();
        clash.shadowsocks = ClashYamlOutboundShadowsocksOptions();
        clash.shadowsocks!.udp = proxy.udp;
        clash.shadowsocks!.cipher = proxy.method;
        clash.shadowsocks!.password = proxy.password;
        clash.shadowsocks!.plugin = proxy.plugin;
        if ((proxy.plugin != null) && (proxy.plugin_opts != null)) {
          switch (proxy.plugin) {
            case "obfs":
            case "obfs-local":
              clash.shadowsocks!.plugin_opts_obfs =
                  ClashYamlPluginObfsOptions();
              clash.shadowsocks!.plugin_opts_obfs!.mode =
                  proxy.plugin_opts!["mode"];
              clash.shadowsocks!.plugin_opts_obfs!.host =
                  proxy.plugin_opts!["host"];
              break;
            case "v2ray-plugin":
              clash.shadowsocks!.plugin_opts_v2ray =
                  ClashYamlPluginV2rayOptions();
              clash.shadowsocks!.plugin_opts_v2ray!.mode =
                  proxy.plugin_opts!["mode"];
              clash.shadowsocks!.plugin_opts_v2ray!.host =
                  proxy.plugin_opts!["host"];
              clash.shadowsocks!.plugin_opts_v2ray!.path =
                  proxy.plugin_opts!["path"];
              clash.shadowsocks!.plugin_opts_v2ray!.mux =
                  proxy.plugin_opts!["mux"];
              clash.shadowsocks!.plugin_opts_v2ray!.fingerprint =
                  proxy.plugin_opts!["fingerprint"];
              clash.shadowsocks!.plugin_opts_v2ray!.skip_cert_verify =
                  proxy.plugin_opts!["skip-cert-verify"];
              break;
            case "shadow-tls":
              clash.shadowsocks!.plugin_opts_shadowtls =
                  ClashYamlPluginShadowTlsOptions();
              clash.shadowsocks!.plugin_opts_shadowtls!.password =
                  proxy.plugin_opts!["password"];
              clash.shadowsocks!.plugin_opts_shadowtls!.host =
                  proxy.plugin_opts!["host"];
              clash.shadowsocks!.plugin_opts_shadowtls!.version =
                  proxy.plugin_opts!["version"];
              break;
          }
        }

        SingboxJsonOptions singbox = SingboxJsonOptions();
        var err = ClashToSingbox.convert(clash, singbox);
        if (err != null) {
          eu.unsupports.add(TransUnsupport(
            context: proxy.toJson().toString(),
            message: err.message,
          ));

          continue;
        }
        singbox.tag = tagGen.gen(singbox.tag);

        ProxyConfig conf = ProxyConfig();
        conf.fromJson(singbox.toJson());
        conf.groupid = proxyItem.groupid;

        proxyItem.servers.add(conf);
      } catch (err, stacktrace) {
        eu.exceptions.add(TransException(
            context: proxy.toJson().toString(),
            message: err.toString(),
            stack: StackTraceUtils.trim(stacktrace, 3)));
      }
    }
    proxyItem.filterServers();
    if (proxyItem.servers.isEmpty) {
      return ReturnResultError("ss: No server available");
    }

    return null;
  }
}
