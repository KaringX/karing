// ignore_for_file: non_constant_identifier_names, prefer_interpolation_to_compose_strings

import 'dart:math';

import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/clash_yaml.dart';
import 'package:karing/app/utils/singbox_json.dart';

abstract final class ClashToSingbox {
  static ReturnResultError? convert(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var typeMap = {
      "ss": {
        "type": SingboxOutboundType.shadowsocks.name,
        "fun": convertShadowsocks
      },
      "ssr": {
        "type": SingboxOutboundType.shadowsocksr.name,
        "fun": convertShadowsocksr
      },
      "vmess": {"type": SingboxOutboundType.vmess.name, "fun": convertVmess},
      "vless": {"type": SingboxOutboundType.vless.name, "fun": convertVless},
      "trojan": {"type": SingboxOutboundType.trojan.name, "fun": convertTrojan},
      "socks": {"type": SingboxOutboundType.socks.name, "fun": convertSocks},
      "http": {"type": SingboxOutboundType.http.name, "fun": convertHttp},
      "hysteria": {
        "type": SingboxOutboundType.hysteria.name,
        "fun": convertHysteria
      },
      "hysteria2": {
        "type": SingboxOutboundType.hysteria2.name,
        "fun": convertHysteria2
      },
      "wireguard": {
        "type": SingboxOutboundType.wireguard.name,
        "fun": convertWireguard
      },
      "tuic": {"type": SingboxOutboundType.tuic.name, "fun": convertTuic},
      "ssh": {"type": SingboxOutboundType.ssh.name, "fun": convertSSH},
    };
    dynamic obj = typeMap[clash.type];
    if (obj == null) {
      return ReturnResultError("unsupported type [${clash.type}]");
    }

    singbox.tag = clash.name;
    singbox.type = obj["type"];
    singbox.attach = clash.attach;
    singbox.server = clash.server;
    singbox.server_port = int.tryParse(clash.port) ?? 0;
    if (clash.detour != null && clash.detour!.isNotEmpty) {
      singbox.dialer ??= SingboxJsonDialerOptions();
      singbox.dialer?.detour = clash.detour;
    } else {
      singbox.dialer?.detour = null;
    }

    if (singbox.server_port == 0 || singbox.server_port > 65535) {
      return ReturnResultError("invalid port [${clash.port}]");
    }

    var err = obj["fun"](clash, singbox);
    return err;
  }

  static ReturnResultError? convertShadowsocks(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var shadowsocks = clash.shadowsocks!;
    if (shadowsocks.plugin == "shadow-tls") {
      singbox.type = "shadowtls";
      singbox.shadowtls ??= SingboxJsonOutboundShadowTLSOptions(
        version: shadowsocks.plugin_opts_shadowtls!.version,
        password: shadowsocks.plugin_opts_shadowtls!.password,
      );
      singbox.shadowtls!.tls = SingboxJsonTLSOptions();
      singbox.shadowtls!.tls!.enabled = true;
      if (shadowsocks.plugin_opts_shadowtls != null) {
        if (shadowsocks.plugin_opts_shadowtls!.version != null) {
          int v = shadowsocks.plugin_opts_shadowtls!.version!;
          if (v != 1 && v != 2 && v != 3) {
            return ReturnResultError("invalid shadowtls version [$v]");
          }
        }

        singbox.shadowtls!.tls!.server_name =
            shadowsocks.plugin_opts_shadowtls!.host;
      }

      return null;
    }

    singbox.shadowsocks ??= SingboxJsonOutboundShadowsocksOptions();
    if (shadowsocks.tls == true) {
      //singbox.shadowsocks.tls =
      //     makeTls(clash, shadowsocks.tls_opts, null);
      //ReturnResultError? err = checkTls(singbox.shadowsocks!.tls);
      //if (err != null) {
      //  return err;
      //}
    }
    if (shadowsocks.tfo == true) {
      singbox.dialer ??=
          SingboxJsonDialerOptions(tcp_fast_open: shadowsocks.tfo);
    }
    singbox.shadowsocks!.multiplex = makeMux(shadowsocks.mux);
    singbox.shadowsocks!.method = shadowsocks.cipher ?? "";

    List<dynamic> methods =
        SingboxJsonOutboundShadowsocksOptions.getAttributes()["method"]!;

    if (!methods.contains(singbox.shadowsocks!.method)) {
      return ReturnResultError(
          "unsupported shadowsocks method [${singbox.shadowsocks!.method}]");
    }

    singbox.shadowsocks!.password = shadowsocks.password ?? "";
    if (shadowsocks.udp == false) {
      singbox.shadowsocks!.network = "tcp";
    }
    if (shadowsocks.udp_over_tcp == true) {
      singbox.shadowsocks!.udp_over_tcp ??=
          SingboxJsonUDPOverTCPOptions(enabled: true);
    }
    if (shadowsocks.plugin == "obfs" ||
        shadowsocks.plugin == "obfs-local" ||
        shadowsocks.plugin == "simple-obfs") {
      singbox.shadowsocks!.plugin = "obfs-local";
      List<String> options = [];
      if ((shadowsocks.plugin_opts_obfs!.mode != null) &&
          shadowsocks.plugin_opts_obfs!.mode!.isNotEmpty) {
        if (shadowsocks.plugin_opts_obfs!.mode != "tls" &&
            shadowsocks.plugin_opts_obfs!.mode != "http") {
          return ReturnResultError(
              "invalid shadowsocks plugin mode [${shadowsocks.plugin_opts_obfs!.mode!}], should be tls or http");
        }
        String v = shadowsocks.plugin_opts_obfs!.mode!.replaceAll("=;", "\\");
        options.add("obfs=$v");
      }
      if ((shadowsocks.plugin_opts_obfs!.host != null) &&
          shadowsocks.plugin_opts_obfs!.host!.isNotEmpty) {
        String v = shadowsocks.plugin_opts_obfs!.host!.replaceAll("=;", "\\");
        options.add("obfs-host=$v");
      }
      singbox.shadowsocks!.plugin_opts = options.join(";");
    } else if (shadowsocks.plugin == "v2ray-plugin") {
      singbox.shadowsocks!.plugin = "v2ray-plugin";
      List<String> options = [];
      if (shadowsocks.plugin_opts_v2ray!.tls == true) {
        options.add("tls");
      }
      if ((shadowsocks.plugin_opts_v2ray!.host != null) &&
          shadowsocks.plugin_opts_v2ray!.host!.isNotEmpty) {
        String v = shadowsocks.plugin_opts_v2ray!.host!.replaceAll("=;", "\\");
        options.add("host=$v");
      }
      if ((shadowsocks.plugin_opts_v2ray!.path != null) &&
          shadowsocks.plugin_opts_v2ray!.path!.isNotEmpty) {
        String v = shadowsocks.plugin_opts_v2ray!.path!.replaceAll("=;", "\\");
        options.add("path=$v");
      }
      if ((shadowsocks.plugin_opts_v2ray!.mode != null) &&
          shadowsocks.plugin_opts_v2ray!.mode!.isNotEmpty) {
        String v = shadowsocks.plugin_opts_v2ray!.mode!.replaceAll("=;", "\\");
        options.add("mode=$v");
      }
      if (shadowsocks.plugin_opts_v2ray!.mux != null) {
        String v = shadowsocks.plugin_opts_v2ray!.mux!;
        options.add("mux=$v");
      }
      singbox.shadowsocks!.plugin_opts = options.join(";");
    } else if (shadowsocks.plugin != null && shadowsocks.plugin!.isNotEmpty) {
      return ReturnResultError(
          "unsupported shadowsocks plugin [${singbox.shadowsocks!.plugin}]");
    }

    return null;
  }

  static ReturnResultError? convertShadowsocksr(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var shadowsocksr = clash.shadowsocksr!;
    singbox.shadowsocksr ??= SingboxJsonOutboundShadowsocksROptions(
      method: shadowsocksr.cipher ?? "",
      password: shadowsocksr.password ?? "",
      obfs: shadowsocksr.obfs,
      protocol_param: shadowsocksr.protocol_param,
      protocol: shadowsocksr.protocol,
      obfs_param: shadowsocksr.obfs_param,
    );

    List<dynamic> methods =
        SingboxJsonOutboundShadowsocksROptions.getAttributes()["method"]!;

    if (!methods.contains(singbox.shadowsocksr!.method)) {
      return ReturnResultError(
          "unsupported shadowsocksr method [${singbox.shadowsocksr!.method}]");
    }

    if (shadowsocksr.tfo == true) {
      singbox.dialer ??=
          SingboxJsonDialerOptions(tcp_fast_open: shadowsocksr.tfo);
    }
    if (shadowsocksr.udp == false) {
      singbox.shadowsocksr!.network = "tcp";
    }

    return null;
  }

  static ReturnResultError? convertVmess(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var vmess = clash.vmess!;
    singbox.vmess ??= SingboxJsonOutboundVMessOptions();
    if (vmess.tls == true) {
      singbox.vmess!.tls =
          makeTls(clash, vmess.tls_opts, true, vmess.servername);
      ReturnResultError? err = checkTls(singbox.vmess!.tls);
      if (err != null) {
        return err;
      }
    }
    if (vmess.tfo == true) {
      singbox.dialer ??= SingboxJsonDialerOptions(tcp_fast_open: vmess.tfo);
    }

    singbox.vmess!.multiplex = makeMux(vmess.mux);
    singbox.vmess!.alter_id = vmess.alter_id;
    singbox.vmess!.uuid = vmess.uuid ?? "";
    singbox.vmess!.security = vmess.cipher ?? "";
    //if (singbox.vmess!.security == "chacha20-ietf-poly1305") {
    //  singbox.vmess!.security = "chacha20-poly1305";
    //}
    if (singbox.vmess!.security.isEmpty) {
      singbox.vmess!.security = "auto";
    }
    List<dynamic> security =
        SingboxJsonOutboundVMessOptions.getAttributes()["security"]!;

    if (!security.contains(singbox.vmess!.security)) {
      return ReturnResultError(
          "unsupported vmess security [${singbox.vmess!.security}]");
    }

    if (vmess.packet_encoding != null) {
      List<dynamic> packet_encoding =
          SingboxJsonOutboundVMessOptions.getAttributes()["packet_encoding"]!;
      if (!packet_encoding.contains(vmess.packet_encoding)) {
        return ReturnResultError(
            "unsupported vmess packet_encoding [${vmess.packet_encoding}]");
      }

      singbox.vmess!.packet_encoding = vmess.packet_encoding;
    }
    if (singbox.vmess!.uuid.isEmpty || singbox.vmess!.security.isEmpty) {
      return ReturnResultError(
          "uuid or security not set uuid=[${singbox.vmess!.uuid}] security=[${singbox.vmess!.security}]");
    }
    if (((vmess.ws_opts != null) &&
            (vmess.ws_opts!.path != null) &&
            vmess.ws_opts!.path!.isNotEmpty) ||
        vmess.network == "ws") {
      vmess.ws_opts ??= ClashYamlWSOptions();
      singbox.vmess!.transport = makeWsOpts(
          vmess.ws_opts, clash.server, vmess.servername, vmess.tls_opts);
      return null;
    }
    if (((vmess.grpc_opts != null) &&
            (vmess.grpc_opts!.service_name != null) &&
            vmess.grpc_opts!.service_name!.isNotEmpty) ||
        vmess.network == "grpc") {
      vmess.grpc_opts ??= ClashYamlGRPCOptions();
      singbox.vmess!.transport = makeGrpcOpts(vmess.grpc_opts);
      return null;
    }
    if (((vmess.httpupgrade_opts != null) &&
            (vmess.httpupgrade_opts!.path != null) &&
            vmess.httpupgrade_opts!.path!.isNotEmpty) ||
        vmess.network == "h2") {
      vmess.httpupgrade_opts ??= ClashYamlHttpupgradeOptions();
      singbox.vmess!.transport = makeHttpupgradeOpts(
          vmess.httpupgrade_opts, vmess.servername, clash.server);
      return null;
    }
    if (((vmess.http_opts != null) &&
            (vmess.http_opts!.method != null) &&
            vmess.http_opts!.method!.isNotEmpty) ||
        vmess.network == "http") {
      vmess.http_opts ??= ClashYamlHTTPOptions();
      singbox.vmess!.transport =
          makeHttpOpts(vmess.http_opts!, vmess.servername, clash.server);
      return null;
    }
    if (vmess.network == "quic") {
      singbox.vmess!.transport = makeQuicOpts();
      return null;
    }
    return null;
  }

  static ReturnResultError? convertVless(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var vless = clash.vless!;
    singbox.vless ??= SingboxJsonOutboundVLESSOptions();
    if (vless.tls == true) {
      singbox.vless!.tls =
          makeTls(clash, vless.tls_opts, true, vless.servername);
      ReturnResultError? err = checkTls(singbox.vless!.tls);
      if (err != null) {
        return err;
      }
    }

    if (vless.tfo == true) {
      singbox.dialer ??= SingboxJsonDialerOptions(tcp_fast_open: vless.tfo);
    }
    singbox.vless!.multiplex = makeMux(vless.mux);
    singbox.vless!.uuid = vless.uuid ?? "";
    if ((vless.flow != null)) {
      List<dynamic> flow =
          SingboxJsonOutboundVLESSOptions.getAttributes()["flow"]!;
      if (!flow.contains(vless.flow ?? "")) {
        return ReturnResultError("unsupported flow [${vless.flow}]");
      }
    }
    singbox.vless!.flow = vless.flow;

    if (vless.udp == false) {
      singbox.vless!.network = "tcp"; //tcp or udp
    }
    singbox.vless!.packet_encoding = "xudp"; // clash meta default XUDP
    if (vless.packet_encoding != null) {
      List<dynamic> packet_encoding =
          SingboxJsonOutboundVLESSOptions.getAttributes()["packet_encoding"]!;
      if (!packet_encoding.contains(vless.packet_encoding)) {
        return ReturnResultError(
            "unsupported vless packet_encoding [${vless.packet_encoding}]");
      }

      singbox.vless!.packet_encoding = vless.packet_encoding;
    }

    if ((vless.reality_opts != null) &&
        (vless.reality_opts!.public_key != null) &&
        vless.reality_opts!.public_key!.isNotEmpty) {
      singbox.vless!.tls ??= SingboxJsonTLSOptions();
      singbox.vless!.tls!.reality ??= SingboxJsonRealityOptions(
        enabled: true,
        public_key: vless.reality_opts!.public_key,
        short_id: vless.reality_opts!.short_id,
      );
    }
    if (((vless.ws_opts != null) &&
            (vless.ws_opts!.path != null) &&
            vless.ws_opts!.path!.isNotEmpty) ||
        vless.network == "ws") {
      vless.ws_opts ??= ClashYamlWSOptions();
      singbox.vless!.transport = makeWsOpts(
          vless.ws_opts, clash.server, vless.servername, vless.tls_opts);

      return null;
    }
    if (((vless.grpc_opts != null) &&
            (vless.grpc_opts!.service_name != null) &&
            vless.grpc_opts!.service_name!.isNotEmpty) ||
        vless.network == "grpc") {
      vless.grpc_opts ??= ClashYamlGRPCOptions();
      singbox.vless!.transport = makeGrpcOpts(vless.grpc_opts);
      return null;
    }
    if (((vless.httpupgrade_opts != null) &&
            (vless.httpupgrade_opts!.path != null) &&
            vless.httpupgrade_opts!.path!.isNotEmpty) ||
        vless.network == "h2") {
      vless.httpupgrade_opts ??= ClashYamlHttpupgradeOptions();
      singbox.vless!.transport = makeHttpupgradeOpts(
          vless.httpupgrade_opts, vless.servername, clash.server);
      return null;
    }
    if (((vless.http_opts != null)) || vless.network == "http") {
      vless.http_opts ??= ClashYamlHTTPOptions();
      singbox.vless!.transport =
          makeHttpOpts(vless.http_opts!, vless.servername, clash.server);
      return null;
    }
    return null;
  }

  static ReturnResultError? convertTrojan(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var trojan = clash.trojan!;
    singbox.trojan ??= SingboxJsonOutboundTrojanOptions();
    singbox.trojan!.multiplex = makeMux(trojan.mux);
    if (trojan.tls != false) {
      singbox.trojan!.tls = makeTls(clash, trojan.tls_opts, true, null);
      ReturnResultError? err = checkTls(singbox.trojan!.tls);
      if (err != null) {
        return err;
      }
    }

    if (trojan.tfo == true) {
      singbox.dialer ??= SingboxJsonDialerOptions(tcp_fast_open: trojan.tfo);
    }
    singbox.trojan!.password = trojan.password ?? "";
    if (trojan.udp == false) {
      singbox.trojan!.network = "tcp";
    }
    /*if (singbox.trojan!.network == null &&
        (trojan.network != null) &&
        trojan.network!.isNotEmpty) {
      singbox.trojan!.network = trojan.network!;
    }*/
    if (((trojan.ws_opts != null) &&
            (trojan.ws_opts!.path != null) &&
            trojan.ws_opts!.path!.isNotEmpty) ||
        trojan.network == "ws") {
      trojan.ws_opts ??= ClashYamlWSOptions();
      singbox.trojan!.transport =
          makeWsOpts(trojan.ws_opts, clash.server, null, trojan.tls_opts);

      return null;
    }
    if (((trojan.grpc_opts != null) &&
            (trojan.grpc_opts!.service_name != null) &&
            trojan.grpc_opts!.service_name!.isNotEmpty) ||
        trojan.network == "grpc") {
      trojan.grpc_opts ??= ClashYamlGRPCOptions();
      singbox.trojan!.transport = makeGrpcOpts(trojan.grpc_opts);
      return null;
    }
    if (trojan.network == "quic") {
      singbox.trojan!.transport = makeQuicOpts();
      return null;
    }
    return null;
  }

  static ReturnResultError? convertSocks(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var socks = clash.socks!;
    singbox.socks ??= SingboxJsonOutboundSocksOptions(
      username: socks.username,
      password: socks.password,
    );
    //singbox.socks!.tls = makeTls(clash, socks.tls_opts, true, null);
    //ReturnResultError? err = checkTls(singbox.socks!.tls);
    //if (err != null) {
    //  return err;
    //}
    //singbox.socks!.multiplex = makeMux(socks.mux);

    if (socks.udp == false) {
      singbox.socks!.network = "tcp";
    }
    return null;
  }

  static ReturnResultError? convertHttp(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var http = clash.http!;
    singbox.http ??= SingboxJsonOutboundHTTPOptions(
      username: http.username,
      password: http.password,
    );
    if (http.tls == true) {
      singbox.http!.tls = makeTls(clash, http.tls_opts, false, null);
      ReturnResultError? err = checkTls(singbox.http!.tls);
      if (err != null) {
        return err;
      }
    }

    return null;
  }

  static ReturnResultError? convertHysteria(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var hysteria = clash.hysteria!;
    singbox.hysteria ??= SingboxJsonOutboundHysteriaOptions();
    singbox.hysteria!.tls = makeTls(clash, hysteria.tls_opts, false, null);
    ReturnResultError? err = checkTls(singbox.hysteria!.tls);
    if (err != null) {
      return err;
    }
    if ((hysteria.auth != null) && hysteria.auth!.isNotEmpty) {
      singbox.hysteria!.auth = hysteria.auth;
    }
    if ((hysteria.auth_str != null) && hysteria.auth_str!.isNotEmpty) {
      singbox.hysteria!.auth_str = hysteria.auth_str;
    }
    singbox.hysteria!.obfs = hysteria.obfs;

    if ((hysteria.protocol != null) &&
        hysteria.protocol!.isNotEmpty &&
        hysteria.protocol != "udp") {
      return ReturnResultError("unsupported protocol [${hysteria.protocol}]");
    }
    if (hysteria.up != null) {
      if (hysteria.up!.contains("ps")) {
        //singbox里文档和代码实现不一致, 代码里不能有ps,但是文档写的可以
        singbox.hysteria!.up = hysteria.up!.replaceAll("ps", "");
      } else {
        singbox.hysteria!.up_mbps = int.tryParse(hysteria.up!) ?? 0;
      }
    }
    if (hysteria.down != null) {
      if (hysteria.down!.contains("ps")) {
        singbox.hysteria!.down = hysteria.down!.replaceAll("ps", "");
      } else {
        singbox.hysteria!.down_mbps = int.tryParse(hysteria.down!) ?? 0;
      }
    }
    if ((hysteria.recv_window != null) && hysteria.recv_window != 0) {
      singbox.hysteria!.recv_window = hysteria.recv_window;
    }
    if ((hysteria.recv_window_conn != null) && hysteria.recv_window_conn != 0) {
      singbox.hysteria!.recv_window_conn = hysteria.recv_window_conn;
    }
    if ((hysteria.ca != null) && hysteria.ca!.isNotEmpty) {
      singbox.hysteria!.tls!.certificate = [hysteria.ca!];
    }
    if ((hysteria.ca_str != null) && hysteria.ca_str!.isNotEmpty) {
      singbox.hysteria!.tls!.certificate = [hysteria.ca_str!];
    }
    singbox.hysteria!.disable_mtu_discovery = hysteria.disable_mtu_discovery;
    if (hysteria.relay != null) {
      singbox.hysteria!.turn_relay = SingboxJsonTurnRelayOptions(
        server: hysteria.relay!.server,
        server_port: hysteria.relay!.server_port,
        username: hysteria.relay!.username,
        password: hysteria.relay!.password,
        realm: hysteria.relay!.realm,
      );
    }
    singbox.hysteria!.hop_ports = hysteria.ports;
    singbox.hysteria!.hop_interval = hysteria.hop_interval;

    return null;
  }

  static ReturnResultError? convertHysteria2(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var hysteria2 = clash.hysteria2!;
    singbox.hysteria2 ??= SingboxJsonOutboundHysteria2Options(
      up_mbps: convertToMbps(hysteria2.up),
      down_mbps: convertToMbps(hysteria2.down),
      password: hysteria2.password,
    );
    singbox.hysteria2!.tls = makeTls(clash, hysteria2.tls_opts, false, null);
    ReturnResultError? err = checkTls(singbox.hysteria2!.tls);
    if (err != null) {
      return err;
    }

    if ((hysteria2.obfs_password != null) &&
        hysteria2.obfs_password!.isNotEmpty) {
      if ((hysteria2.obfs != null) &&
          hysteria2.obfs!.isNotEmpty &&
          hysteria2.obfs != "salamander") {
        return ReturnResultError("unsupported obfs type [${hysteria2.obfs}]");
      }
      singbox.hysteria2!.obfs = SingboxJsonObfsHysteria2Options(
        type: hysteria2.obfs,
        password: hysteria2.obfs_password,
      );
    }
    if (hysteria2.relay != null) {
      singbox.hysteria2!.turn_relay = SingboxJsonTurnRelayOptions(
        server: hysteria2.relay!.server,
        server_port: hysteria2.relay!.server_port,
        username: hysteria2.relay!.username,
        password: hysteria2.relay!.password,
        realm: hysteria2.relay!.realm,
      );
    }
    singbox.hysteria2!.hop_ports = hysteria2.ports;
    singbox.hysteria2!.hop_interval = hysteria2.hop_interval;
    /*if (hysteria2.ports != null && hysteria2.ports!.isNotEmpty) { //core 1.11
      singbox.hysteria2!.server_ports = [];
      hysteria2.ports!.split(",").forEach((element) {
        singbox.hysteria2!.server_ports!.add(element.replaceAll("-", ":"));
      });
    }

    //singbox.hysteria2!.hop_ports = hysteria2.ports;
    if (hysteria2.hop_interval != null) {
      singbox.hysteria2!.hop_interval = SingboxConfigBuilder.durationTo(
          Duration(seconds: hysteria2.hop_interval!), "");
    }*/

    return null;
  }

  static ReturnResultError? convertWireguard(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var wg = clash.wg!;
    singbox.wg ??= SingboxJsonOutboundWireGuardOptions();
    singbox.wg!.peer_public_key = wg.public_key ?? "";
    singbox.wg!.pre_shared_key = wg.pre_shared_key;
    singbox.wg!.private_key = wg.private_key ?? "";
    singbox.wg!.reserved = wg.reserved;
    if (singbox.wg!.peer_public_key.isEmpty) {
      return ReturnResultError("peer_public_key is empty");
    }
    if (singbox.wg!.private_key.isEmpty) {
      return ReturnResultError("private_key is empty");
    }
    if (wg.udp == false) {
      singbox.wg!.network = "tcp";
    }
    /*if ((wg.dialer_proxy != null) && wg.dialer_proxy!.isNotEmpty) {
      singbox.dialer ??= SingboxJsonDialerOptions();
      singbox.dialer!.detour = wg.dialer_proxy;
    }*/

    if ((wg.ip != null) || (wg.ipv6 != null)) {
      singbox.wg!.local_address = [];
      if ((wg.ip != null) && wg.ip!.isNotEmpty) {
        if (!wg.ip!.contains("/")) {
          singbox.wg!.local_address!.add(wg.ip! + "/32");
        } else {
          singbox.wg!.local_address!.add(wg.ip!);
        }
      }
      if ((wg.ipv6 != null) && wg.ipv6!.isNotEmpty) {
        if (!wg.ipv6!.contains("/")) {
          singbox.wg!.local_address!.add(wg.ipv6! + "/128");
        } else {
          singbox.wg!.local_address!.add(wg.ipv6!);
        }
      }
    }
    if (singbox.wg!.local_address == null ||
        singbox.wg!.local_address!.isEmpty) {
      return ReturnResultError("local_address is empty");
    }

    singbox.wg!.mtu = wg.mtu;
    singbox.wg!.fake_packets = wg.fake_packets;
    singbox.wg!.fake_packets_size = wg.fake_packets_size;
    singbox.wg!.fake_packets_delay = wg.fake_packets_delay;
    singbox.wg!.fake_packets_mode = wg.fake_packets_mode;
    if ((wg.peers != null) && wg.peers!.isNotEmpty) {
      singbox.wg!.peers = [];
      for (var peer in wg.peers!) {
        SingboxJsonOutboundWireguardPeerOptions speer =
            SingboxJsonOutboundWireguardPeerOptions();

        speer.server = peer.server;
        speer.server_port = peer.port;
        speer.public_key = peer.public_key;
        speer.pre_shared_key = peer.pre_shared_key;
        speer.allowed_ips = peer.allowed_ips;
        speer.reserved = peer.reserved;

        singbox.wg!.peers!.add(speer);
      }
    }
    if (wg.relay != null) {
      singbox.wg!.turn_relay = SingboxJsonTurnRelayOptions(
        server: wg.relay!.server,
        server_port: wg.relay!.server_port,
        username: wg.relay!.username,
        password: wg.relay!.password,
        realm: wg.relay!.realm,
      );
    }
    return null;
  }

  static ReturnResultError? convertTuic(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var tuic = clash.tuic!;
    singbox.tuic ??= SingboxJsonOutboundTUICOptions();
    singbox.tuic!.tls = makeTls(clash, tuic.tls_opts, false, null);
    ReturnResultError? err = checkTls(singbox.tuic!.tls);
    if (err != null) {
      return err;
    }
    singbox.tuic!.uuid = tuic.uuid;
    singbox.tuic!.congestion_control = tuic.congestion_controller;
    List<dynamic> congestion_control =
        SingboxJsonOutboundTUICOptions.getAttributes()["congestion_control"]!;

    if (!congestion_control.contains(singbox.tuic!.congestion_control ?? "")) {
      return ReturnResultError(
          "unsupported tuic congestion_control [${singbox.tuic!.congestion_control}]");
    }

    singbox.tuic!.udp_relay_mode = tuic.udp_relay_mode;
    singbox.tuic!.zero_rtt_handshake = tuic.reduce_rtt;
    singbox.tuic!.heartbeat =
        tuic.heartbeat_interval != null ? "${tuic.heartbeat_interval}ms" : null;
    singbox.tuic!.password = tuic.password;
    if (tuic.relay != null) {
      singbox.tuic!.turn_relay = SingboxJsonTurnRelayOptions(
        server: tuic.relay!.server,
        server_port: tuic.relay!.server_port,
        username: tuic.relay!.username,
        password: tuic.relay!.password,
        realm: tuic.relay!.realm,
      );
    }

    return null;
  }

  static ReturnResultError? convertSSH(
      ClashYamlOubboundOptions clash, SingboxJsonOptions singbox) {
    var ssh = clash.ssh!;
    singbox.ssh ??= SingboxJsonOutboundSSHOptions();
    singbox.ssh!.user = ssh.user;
    singbox.ssh!.password = ssh.password;
    singbox.ssh!.private_key = ssh.private_key;
    singbox.ssh!.private_key_path = ssh.private_key_path;
    singbox.ssh!.private_key_passphrase = ssh.private_key_passphrase;
    singbox.ssh!.host_key = ssh.host_key;
    singbox.ssh!.host_key_algorithms = ssh.host_key_algorithms;
    singbox.ssh!.client_version = ssh.client_version;

    return null;
  }

  static SingboxJsonTLSOptions? makeTls(
      ClashYamlOubboundOptions clash,
      ClashYamlOutboundTlsOptions tls_opts,
      bool enable_utls,
      String? servername) {
    SingboxJsonTLSOptions tls = SingboxJsonTLSOptions();
    tls.enabled = true;
    tls.disable_sni = tls_opts.disable_sni;
    if ((tls_opts.sni != null) && tls_opts.sni!.isNotEmpty) {
      tls.server_name = tls_opts.sni;
    } else if ((servername != null) && servername.isNotEmpty) {
      tls.server_name = servername;
    } else {
      tls.server_name = clash.server;
    }

    if (enable_utls) {
      tls.utls ??= SingboxJsonUtlsOptions(enabled: true);

      if ((tls_opts.client_fingerprint != null) &&
          tls_opts.client_fingerprint!.isNotEmpty) {
        tls.utls!.fingerprint = tls_opts.client_fingerprint;
      }
      if (tls.utls!.fingerprint == null || tls.utls!.fingerprint!.isEmpty) {
        if ((clash.global_client_fingerprint != null) &&
            clash.global_client_fingerprint!.isNotEmpty) {
          tls.utls!.fingerprint = clash.global_client_fingerprint;
        }
      }
      //if (tls.utls!.fingerprint == null || tls.utls!.fingerprint!.isEmpty) {
      //  tls.utls!.fingerprint = "chrome";
      //}
    }

    tls.insecure = tls_opts.skip_cert_verify;
    tls.alpn = tls_opts.alpn;

    if (tls_opts.tls_tricks.mixedcase_sni != null &&
        tls_opts.tls_tricks.padding_mode != null &&
        tls_opts.tls_tricks.padding_size != null &&
        tls_opts.tls_tricks.padding_sni != null) {
      if (tls_opts.tls_tricks.mixedcase_sni == true ||
          tls_opts.tls_tricks.padding_mode!.isNotEmpty ||
          tls_opts.tls_tricks.padding_size!.isNotEmpty ||
          tls_opts.tls_tricks.padding_sni!.isNotEmpty) {
        tls.tls_tricks = SingboxJsonTLSTricksOptions(
          mixedcase_sni: tls_opts.tls_tricks.mixedcase_sni,
          padding_mode: tls_opts.tls_tricks.padding_mode,
          padding_size: tls_opts.tls_tricks.padding_size,
          padding_sni: tls_opts.tls_tricks.padding_sni,
        );
      }
    }
    return tls;
  }

  static ReturnResultError? checkTls(SingboxJsonTLSOptions? options) {
    if (options != null) {
      if (options.utls != null) {
        List<dynamic> fingerprint =
            SingboxJsonUtlsOptions.getAttributes()["fingerprint"]!;

        if (!fingerprint.contains(options.utls!.fingerprint ?? "")) {
          return ReturnResultError(
              "unsupported fingerprint [${options.utls!.fingerprint}]");
        }
      }
    }
    return null;
  }

  static SingboxJsonTransportOptions? makeWsOpts(
      ClashYamlWSOptions? ws_opts,
      String server,
      String? serverName,
      ClashYamlOutboundTlsOptions? tls_opts) {
    SingboxJsonTransportOptions transport = SingboxJsonTransportOptions();
    transport.type = "ws";
    transport.ws_opts = SingboxJsonTransportWSOptions();
    transport.ws_opts!.headers = {};
    transport.ws_opts!.path = ws_opts?.path;
    transport.ws_opts!.early_data_header_name = ws_opts?.early_data_header_name;
    transport.ws_opts!.max_early_data = ws_opts?.max_early_data;

    if ((ws_opts != null) && (ws_opts.headers != null)) {
      ws_opts.headers!.forEach((key, value) {
        if (key.toLowerCase() == "host") {
          key = "Host";
        }
        transport.ws_opts!.headers![key] = [value];
      });
    }

    if (!transport.ws_opts!.headers!.containsKey("Host")) {
      if ((tls_opts != null) &&
          (tls_opts.sni != null) &&
          tls_opts.sni!.isNotEmpty) {
        transport.ws_opts!.headers!["Host"] = [tls_opts.sni!];
      }
    }
    if (!transport.ws_opts!.headers!.containsKey("Host")) {
      if ((serverName != null) && serverName.isNotEmpty) {
        transport.ws_opts!.headers!["Host"] = [serverName];
      }
    }
    if (!transport.ws_opts!.headers!.containsKey("Host")) {
      transport.ws_opts!.headers!["Host"] = [server];
    }
    return transport;
  }

  static SingboxJsonTransportOptions? makeGrpcOpts(
      ClashYamlGRPCOptions? grpc_opts) {
    SingboxJsonTransportOptions transport = SingboxJsonTransportOptions();
    transport.type = "grpc";
    transport.grpc_opts = SingboxJsonTransportGRPCOptions();
    transport.grpc_opts!.service_name = grpc_opts?.service_name;

    return transport;
  }

  static SingboxJsonTransportOptions? makeHttpOpts(
      ClashYamlHTTPOptions? http_opts, String? serverName, String server) {
    SingboxJsonTransportOptions transport = SingboxJsonTransportOptions();
    transport.type = "http";
    transport.http_opts = SingboxJsonTransportHTTPOptions();
    transport.http_opts!.headers = {};

    transport.http_opts!.method = http_opts?.method;
    if (http_opts != null) {
      if ((http_opts.path != null) && http_opts.path!.isNotEmpty) {
        transport.http_opts!.path = http_opts.path![0];
      }
      if (http_opts.headers != null) {
        http_opts.headers!.forEach((key, value) {
          if (key.toLowerCase() == "host") {
            key = "Host";
          }
          transport.http_opts!.headers![key] = [value];
        });
      }
    }
    if (!transport.http_opts!.headers!.containsKey("Host")) {
      if ((serverName != null) && serverName.isNotEmpty) {
        transport.http_opts!.headers!["Host"] = [serverName];
      }
    }
    if (!transport.http_opts!.headers!.containsKey("Host")) {
      transport.http_opts!.headers!["Host"] = [server];
    }

    return transport;
  }

  static SingboxJsonTransportOptions? makeHttpupgradeOpts(
      ClashYamlHttpupgradeOptions? httpupgrade_opts,
      String? serverName,
      String server) {
    SingboxJsonTransportOptions transport = SingboxJsonTransportOptions();
    transport.type = "httpupgrade";
    transport.httpupgrade_opts = SingboxJsonTransportHttpUpgradeOptions();
    transport.httpupgrade_opts!.host =
        httpupgrade_opts?.host != null && httpupgrade_opts!.host!.isNotEmpty
            ? httpupgrade_opts.host![0]
            : null;
    transport.httpupgrade_opts!.path = httpupgrade_opts?.path;
    transport.httpupgrade_opts!.headers =
        httpupgrade_opts?.headers != null ? {} : null;
    httpupgrade_opts?.headers?.forEach((key, value) {
      transport.httpupgrade_opts!.headers![key] = [value];
    });

    return transport;
  }

  static SingboxJsonTransportOptions? makeQuicOpts() {
    SingboxJsonTransportOptions transport = SingboxJsonTransportOptions();
    transport.type = "quic";
    return transport;
  }

  static SingboxJsonMultiplexOptions? makeMux(ClashYamlMuxOptions? mux) {
    if ((mux != null) && mux.enabled == true) {
      SingboxJsonMultiplexOptions multiplex = SingboxJsonMultiplexOptions(
        enabled: true,
        max_streams: mux.max_streams,
        padding: mux.padding,
        protocol: mux.protocol,
      );

      if (mux.max_streams == 0) {
        multiplex.min_streams = max(mux.min_streams ?? 0, 4);
        multiplex.max_connections = max(mux.max_connections ?? 0, 4);
      }
      return multiplex;
    }
    return null;
  }

  static int? convertToMbps(String? s) {
    if (s == null) {
      return null;
    }
    List<String> arr = s.split(' ');
    if (arr.length != 2) {
      return null;
    }
    int? v = int.tryParse(arr[0]);
    if (v == null) {
      return null;
    }

    String unit = arr[1][0];
    switch (unit) {
      case 'K':
        return v ~/ 1024;
      case 'M':
        return v;
      case 'G':
        return v * 1024;
      case 'T':
        return v * 1024 * 1024;
      case 'P':
        return v * 1024 * 1024 * 1024;
    }
    return 0;
  }
}
