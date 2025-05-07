// ignore_for_file: non_constant_identifier_names, empty_catches, no_leading_underscores_for_local_identifiers

import 'dart:convert';

import 'package:karing/app/utils/convert_utils.dart';
import 'package:karing/app/utils/emoji_utils.dart';
import 'package:yaml/yaml.dart';

//doc https://wiki.metacubex.one/config/proxies/
//https://github.com/MetaCubeX/mihomo/blob/Alpha/docs/config.yaml
class HiddifyServerOptions {
  String? server;
  int? server_port;

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }

    server = map["server"];
    if (map["server-port"] != null) {
      server_port = map["server-port"];
    }
  }

  static HiddifyServerOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    HiddifyServerOptions opt = HiddifyServerOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class HiddifyTurnRelayOptions extends HiddifyServerOptions {
  //HiddifyServerOptions
  String? username;
  String? password;
  String? realm;

  @override
  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }

    username = map["username"];
    password = map["password"];
    realm = map["realm"];
    super.fromYaml(map);
  }

  static HiddifyTurnRelayOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    HiddifyTurnRelayOptions opt = HiddifyTurnRelayOptions();
    opt.fromYaml(map);
    return opt;
  }
}

//hiddify
class HiddifyTLSFragmentOptions {
  bool? enabled;
  String? size;
  String? sleep;

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }

    enabled = map["fragment_enabled"];
    size = map["fragment_size"];
    sleep = map["fragment_sleep"];
  }

  static HiddifyTLSTricksOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    HiddifyTLSTricksOptions opt = HiddifyTLSTricksOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class HiddifyTLSTricksOptions {
  bool? mixedcase_sni;
  String? padding_mode;
  String? padding_size;
  String? padding_sni;

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }

    mixedcase_sni = map["mixedcase_sni"];
    padding_mode = map["padding_mode"];
    padding_size = map["padding_size"];
    padding_sni = map["padding_sni"];
  }

  static HiddifyTLSTricksOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    HiddifyTLSTricksOptions opt = HiddifyTLSTricksOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlMuxOptions {
  bool? enabled; //`"enabled,omitempty"`
  int? max_connections; //`"max-connections,omitempty"`
  int? max_streams; //`"max-streams,omitempty"`
  int? min_streams; // `"min-streams,omitempty"`
  bool? padding; //   `"padding,omitempty"`
  String? protocol; //`"protocol,omitempty"`

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    enabled = ConvertUtils.boolParseDynamic(map["enabled"], null);
    max_connections = ConvertUtils.intParseDynamic(map["max-connections"]);
    max_streams = ConvertUtils.intParseDynamic(map["max-streams"]);
    min_streams = ConvertUtils.intParseDynamic(map["min-streams"]);
    padding = ConvertUtils.boolParseDynamic(map["padding"], null);
    protocol = map["protocol"];
  }

  static ClashYamlMuxOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlMuxOptions opt = ClashYamlMuxOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlRealityOptions {
  String? public_key; //`:"public-key"`
  String? short_id; //`:"short-id"`

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    public_key = map["public-key"];
    short_id = map["short-id"];
  }

  static ClashYamlRealityOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlRealityOptions opt = ClashYamlRealityOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlWSOptions {
  String? path; //`"path,omitempty"`
  Map<String, String>? headers; //`"headers,omitempty"`
  int? max_early_data; //`"max-early-data,omitempty"`
  String? early_data_header_name; //`"early-data-header-name,omitempty"`

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    path = ConvertUtils.stringParse(map["path"]);
    headers = ConvertUtils.convertYMap(map["headers"]);
    max_early_data = ConvertUtils.intParseDynamic(map["max-early-data"]);
    early_data_header_name = map["early-data-header-name"];
    if ((path != null) &&
        (max_early_data == null) &&
        (early_data_header_name == null)) {
      Uri? uri = Uri.tryParse("https://localhost:8080${path!}");
      if ((uri != null) && uri.queryParameters.isNotEmpty) {
        int? ed = ConvertUtils.intParse(uri.queryParameters["ed"]);
        if (ed != null) {
          path = uri.path;
          max_early_data = ed;
          early_data_header_name = 'Sec-WebSocket-Protocol';
        }
      }
    }
  }

  static ClashYamlWSOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlWSOptions opt = ClashYamlWSOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlHTTPOptions {
  String? method; //`"method,omitempty"`
  List<String>? path; //`"path,omitempty"`
  Map<String, String>? headers; //`"headers,omitempty"`

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    method = map["method"];
    path = ConvertUtils.convertYList(map["path"]);
    headers = ConvertUtils.convertYMap(map["headers"]);
  }

  static ClashYamlHTTPOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlHTTPOptions opt = ClashYamlHTTPOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlHttpupgradeOptions {
  List<String>? host; //`"host,omitempty"`
  String? path; //`"path,omitempty"`
  Map<String, String>? headers; //`"headers,omitempty"`

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    host = ConvertUtils.convertYList(map["host"]);
    path = map["path"];
    headers = ConvertUtils.convertYMap(map["headers"]);
  }

  static ClashYamlHttpupgradeOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlHttpupgradeOptions opt = ClashYamlHttpupgradeOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlGRPCOptions {
  String? service_name; //`"grpc-service-name,omitempty"`

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    if (map["grpc-service-name"] != null) {
      service_name = map["grpc-service-name"].toString();
    }
  }

  static ClashYamlGRPCOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlGRPCOptions opt = ClashYamlGRPCOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlPluginV2rayOptions {
  String? mode;
  bool? tls;
  String? host;
  String? path;
  String? mux;
  String? fingerprint;
  bool? skip_cert_verify;
  Map<String, String>? headers;

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    mode = map["mode"];
    tls = ConvertUtils.boolParseDynamic(map["tls"], "tls");
    host = map["host"];
    path = map["path"];
    var _mux = map["mux"];
    if (_mux != null) {
      if (_mux is bool) {
        if (_mux == true) {
          mux = "1";
        }
      } else {
        mux = _mux.toString();
      }
    }

    fingerprint = map["fingerprint"];
    skip_cert_verify =
        ConvertUtils.boolParseDynamic(map["skip-cert-verify"], null);
    headers = ConvertUtils.convertYMap(map["headers"]);
  }

  static ClashYamlPluginV2rayOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlPluginV2rayOptions opt = ClashYamlPluginV2rayOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlPluginShadowTlsOptions {
  String? host;
  String? password;
  int? version;

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    host = map["host"];
    password = (map["password"] ?? "").toString();
    version = ConvertUtils.intParseDynamic(map["version"]);
  }

  static ClashYamlPluginShadowTlsOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlPluginShadowTlsOptions opt = ClashYamlPluginShadowTlsOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlPluginObfsOptions {
  String? host;
  String? mode;

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    host = map["host"];
    mode = map["mode"];
  }

  static ClashYamlPluginObfsOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlPluginObfsOptions opt = ClashYamlPluginObfsOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundTlsOptions {
  String? fingerprint;
  String? client_fingerprint;
  bool? skip_cert_verify;
  List<String>? alpn;
  String? sni;
  bool? disable_sni;
  HiddifyTLSFragmentOptions tls_fragment =
      HiddifyTLSFragmentOptions(); //hiddify
  HiddifyTLSTricksOptions tls_tricks = HiddifyTLSTricksOptions(); //hiddify

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    fingerprint = map["fingerprint"];
    client_fingerprint = map["client-fingerprint"];
    skip_cert_verify =
        ConvertUtils.boolParseDynamic(map["skip-cert-verify"], null);
    alpn = ConvertUtils.convertYList(map["alpn"]);
    sni = map["sni"];
    disable_sni = ConvertUtils.boolParseDynamic(map["disable-sni"], null);
    tls_fragment.fromYaml(map);
    tls_tricks.fromYaml(map);
  }

  static ClashYamlOutboundHttpOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundHttpOptions opt = ClashYamlOutboundHttpOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundHttpOptions {
  String? username;
  String? password;
  bool? tls;
  String? ip_version;
  ClashYamlOutboundTlsOptions tls_opts = ClashYamlOutboundTlsOptions();

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    username = (map["username"] ?? "").toString();
    password = (map["password"] ?? "").toString();
    tls = ConvertUtils.boolParseDynamic(map["tls"], "tls");
    ip_version = map["ip-version"];
    tls_opts.fromYaml(map);
  }

  static ClashYamlOutboundHttpOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundHttpOptions opt = ClashYamlOutboundHttpOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundSocksOptions {
  String? username;
  String? password;
  bool? tls;
  bool? udp;
  String? ip_version;
  //ClashYamlMuxOptions? mux;
  //ClashYamlOutboundTlsOptions tls_opts = ClashYamlOutboundTlsOptions();

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    username = (map["username"] ?? "").toString();
    password = (map["password"] ?? "").toString();
    tls = ConvertUtils.boolParseDynamic(map["tls"], "tls");
    udp = ConvertUtils.boolParseDynamic(map["udp"], null);
    ip_version = map["ip-version"];
    //mux = ClashYamlMuxOptions.fromYamlStatic(map["smux"]);
    //mux ??= ClashYamlMuxOptions.fromYamlStatic(map["yamux"]);
    //mux ??= ClashYamlMuxOptions.fromYamlStatic(map["h2mux"]);
    //tls_opts.fromYaml(map);
  }

  static ClashYamlOutboundSocksOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundSocksOptions opt = ClashYamlOutboundSocksOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundShadowsocksOptions {
  String? cipher;
  String? password;
  bool? tls;
  bool? tfo;
  bool? udp;
  bool? udp_over_tcp;
  int? udp_over_tcp_version;
  String? ip_version;
  String? plugin;
  ClashYamlPluginV2rayOptions? plugin_opts_v2ray;
  ClashYamlPluginShadowTlsOptions? plugin_opts_shadowtls;
  ClashYamlPluginObfsOptions? plugin_opts_obfs;

  ClashYamlMuxOptions? mux;
  ClashYamlOutboundTlsOptions tls_opts = ClashYamlOutboundTlsOptions();

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    cipher = map["cipher"];
    password = (map["password"] ?? "").toString();
    tls = ConvertUtils.boolParseDynamic(map["tls"], "tls");
    tfo = ConvertUtils.boolParseDynamic(map["tfo"], null);
    udp = ConvertUtils.boolParseDynamic(map["udp"], null);
    udp_over_tcp = ConvertUtils.boolParseDynamic(map["udp-over-tcp"], null);
    udp_over_tcp_version =
        ConvertUtils.intParseDynamic(map["udp-over-tcp-version"]);
    ip_version = map["ip-version"];
    plugin = map["plugin"];

    if (plugin == "shadow-tls") {
      plugin_opts_shadowtls =
          ClashYamlPluginShadowTlsOptions.fromYamlStatic(map["plugin-opts"]);
    } else if (plugin == "obfs") {
      plugin_opts_obfs =
          ClashYamlPluginObfsOptions.fromYamlStatic(map["plugin-opts"]);
    } else if (plugin == "v2ray-plugin") {
      plugin_opts_v2ray =
          ClashYamlPluginV2rayOptions.fromYamlStatic(map["plugin-opts"]);
    }

    mux = ClashYamlMuxOptions.fromYamlStatic(map["smux"]);
    mux ??= ClashYamlMuxOptions.fromYamlStatic(map["yamux"]);
    mux ??= ClashYamlMuxOptions.fromYamlStatic(map["h2mux"]);
    tls_opts.fromYaml(map);
  }

  static ClashYamlOutboundShadowsocksOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundShadowsocksOptions opt =
        ClashYamlOutboundShadowsocksOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundShadowsocksROptions {
  String? cipher;
  String? password;
  bool? tfo;
  String? obfs;
  String? protocol;
  String? obfs_param;
  String? protocol_param;
  bool? udp;

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    cipher = map["cipher"];
    password = (map["password"] ?? "").toString();
    tfo = ConvertUtils.boolParseDynamic(map["tfo"], null);
    obfs = map["obfs"];
    protocol = map["protocol"];
    obfs_param = map["obfs-param"] ?? map["obfsparam"];
    protocol_param = map["protocol-param"] ?? map["protocolparam"];
    udp = ConvertUtils.boolParseDynamic(map["udp"], null);
  }

  static ClashYamlOutboundShadowsocksROptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundShadowsocksROptions opt =
        ClashYamlOutboundShadowsocksROptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundVmessOptions {
  String? uuid;
  int? alter_id;
  String? cipher;
  bool? udp;
  bool? tls;
  bool? tfo;
  String? servername;
  String? network;
  String? packet_encoding;
  ClashYamlWSOptions? ws_opts;
  ClashYamlHttpupgradeOptions? httpupgrade_opts;
  ClashYamlHTTPOptions? http_opts;
  ClashYamlGRPCOptions? grpc_opts;
  ClashYamlMuxOptions? mux;
  ClashYamlOutboundTlsOptions tls_opts = ClashYamlOutboundTlsOptions();

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    uuid = map["uuid"];
    alter_id = ConvertUtils.intParseDynamic(map["alterId"] ?? map["alter_id"]);
    cipher = map["cipher"];
    udp = ConvertUtils.boolParseDynamic(map["udp"], null);
    tls = ConvertUtils.boolParseDynamic(map["tls"], "tls");
    tfo = ConvertUtils.boolParseDynamic(map["tfo"], null);
    servername = map["servername"];
    network = map["network"];
    packet_encoding = map["packet_encoding"];
    ws_opts = ClashYamlWSOptions.fromYamlStatic(map["ws-opts"]);
    httpupgrade_opts =
        ClashYamlHttpupgradeOptions.fromYamlStatic(map["h2-opts"]);
    http_opts = ClashYamlHTTPOptions.fromYamlStatic(map["http-opts"]);
    grpc_opts = ClashYamlGRPCOptions.fromYamlStatic(map["grpc-opts"]);
    mux = ClashYamlMuxOptions.fromYamlStatic(map["smux"]);
    mux ??= ClashYamlMuxOptions.fromYamlStatic(map["yamux"]);
    mux ??= ClashYamlMuxOptions.fromYamlStatic(map["h2mux"]);
    tls_opts.fromYaml(map);
    if (servername == null) {
      Map<String, String>? headers;
      if (ws_opts != null) {
        headers = ws_opts!.headers;
      }
      if (httpupgrade_opts != null) {
        headers = http_opts!.headers;
      }
      if (headers != null) {
        servername = headers["Host"];
      }
    }
  }

  static ClashYamlOutboundVmessOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundVmessOptions opt = ClashYamlOutboundVmessOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundVlessOptions {
  String? uuid;
  String? network;
  bool? udp;
  bool? tls;
  bool? tfo;
  String? servername;
  bool? xudp;
  String? flow;
  String? packet_encoding;
  ClashYamlRealityOptions? reality_opts;
  ClashYamlWSOptions? ws_opts;
  ClashYamlHttpupgradeOptions? httpupgrade_opts;
  ClashYamlHTTPOptions? http_opts;
  ClashYamlGRPCOptions? grpc_opts;
  ClashYamlMuxOptions? mux;
  ClashYamlOutboundTlsOptions tls_opts = ClashYamlOutboundTlsOptions();

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    uuid = map["uuid"];
    network = map["network"];
    udp = ConvertUtils.boolParseDynamic(map["udp"], null);
    tls = ConvertUtils.boolParseDynamic(map["tls"], "tls");
    tfo = ConvertUtils.boolParseDynamic(map["tfo"], null);
    servername = map["servername"];
    xudp = ConvertUtils.boolParseDynamic(map["xudp"], null);
    flow = map["flow"];
    packet_encoding = map["packet_encoding"];
    reality_opts = ClashYamlRealityOptions.fromYamlStatic(map["reality-opts"]);
    ws_opts = ClashYamlWSOptions.fromYamlStatic(map["ws-opts"]);
    httpupgrade_opts =
        ClashYamlHttpupgradeOptions.fromYamlStatic(map["h2-opts"]);
    http_opts = ClashYamlHTTPOptions.fromYamlStatic(map["http-opts"]);
    grpc_opts = ClashYamlGRPCOptions.fromYamlStatic(map["grpc-opts"]);
    mux = ClashYamlMuxOptions.fromYamlStatic(map["smux"]);
    mux ??= ClashYamlMuxOptions.fromYamlStatic(map["yamux"]);
    mux ??= ClashYamlMuxOptions.fromYamlStatic(map["h2mux"]);
    tls_opts.fromYaml(map);
    if (servername == null) {
      Map<String, String>? headers;
      if (ws_opts != null) {
        headers = ws_opts!.headers;
      }
      if (httpupgrade_opts != null) {
        headers = http_opts!.headers;
      }
      if (headers != null) {
        servername = headers["Host"];
      }
    }
  }

  static ClashYamlOutboundVlessOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundVlessOptions opt = ClashYamlOutboundVlessOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundTrojanOptions {
  String? password;
  bool? udp;
  bool? tfo;
  bool? tls;
  String? network;
  ClashYamlWSOptions? ws_opts;
  ClashYamlGRPCOptions? grpc_opts;
  ClashYamlMuxOptions? mux;
  ClashYamlOutboundTlsOptions tls_opts = ClashYamlOutboundTlsOptions();

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    password = (map["password"] ?? "").toString();
    udp = ConvertUtils.boolParseDynamic(map["udp"], null);
    tfo = ConvertUtils.boolParseDynamic(map["tfo"], null);
    tls = ConvertUtils.boolParseDynamic(map["tls"], "tls");
    network = map["network"];
    ws_opts = ClashYamlWSOptions.fromYamlStatic(map["ws-opts"]);
    grpc_opts = ClashYamlGRPCOptions.fromYamlStatic(map["grpc-opts"]);
    mux = ClashYamlMuxOptions.fromYamlStatic(map["smux"]);
    mux ??= ClashYamlMuxOptions.fromYamlStatic(map["yamux"]);
    mux ??= ClashYamlMuxOptions.fromYamlStatic(map["h2mux"]);
    tls_opts.fromYaml(map);
  }

  static ClashYamlOutboundTrojanOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundTrojanOptions opt = ClashYamlOutboundTrojanOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundHysteriaOptions {
  String? auth;
  String? auth_str;
  String? obfs;

  String? protocol;
  String? up;
  String? down;
  int? recv_window_conn;
  int? recv_window;
  String? ca;
  String? ca_str;

  bool? disable_mtu_discovery;
  bool? fast_open;
  ClashYamlOutboundTlsOptions tls_opts = ClashYamlOutboundTlsOptions();
  HiddifyTurnRelayOptions? relay;
  String? ports; //https://github.com/morgenanno/sing-box
  int? hop_interval; //https://github.com/morgenanno/sing-box

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    auth = map["auth"];
    auth_str = map["auth-str"] ?? map["auth_str"];

    obfs = map["obfs"];
    protocol = map["protocol"];
    up = (map["up"] ?? "").toString();
    down = (map["down"] ?? "").toString();
    recv_window_conn = ConvertUtils.intParseDynamic(
        map["recv-window-conn"] ?? map["recv_window_conn"]);
    recv_window =
        ConvertUtils.intParseDynamic(map["recv-window"] ?? map["recv_window"]);
    ca = map["ca"];
    ca_str = map["ca-str"] ?? map["ca_str"];

    disable_mtu_discovery =
        ConvertUtils.boolParseDynamic(map["disable_mtu_discovery"], null);

    fast_open = ConvertUtils.boolParseDynamic(map["fast-open"], null);
    tls_opts.fromYaml(map);

    //relay.fromYaml(map);
    ports = map["ports"];
    hop_interval = map["hop_interval"];
  }

  static ClashYamlOutboundHysteriaOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundHysteriaOptions opt = ClashYamlOutboundHysteriaOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundHysteria2Options {
  String? up;
  String? down;
  String? password;
  String? obfs;
  String? obfs_password;
  String? ca;
  String? ca_str;
  ClashYamlOutboundTlsOptions tls_opts = ClashYamlOutboundTlsOptions();
  HiddifyTurnRelayOptions? relay;
  String? ports; //https://github.com/morgenanno/sing-box
  int? hop_interval; //https://github.com/morgenanno/sing-box

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    up = (map["up"] ?? "").toString();
    down = (map["down"] ?? "").toString();
    password = (map["password"] ?? "").toString();
    obfs = map["obfs"];
    obfs_password = map["obfs-password"];
    ca = map["ca"];
    ca_str = map["ca-str"];
    tls_opts.fromYaml(map);
    //relay.fromYaml(map);
    ports = map["ports"];
    hop_interval = map["hop_interval"];
  }

  static ClashYamlOutboundHysteria2Options? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundHysteria2Options opt = ClashYamlOutboundHysteria2Options();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlWireguardPeerOptions {
  String? server;
  int? port;
  String? ip;
  String? ipv6;
  String? public_key; //"public-key"
  String? pre_shared_key; //"pre-shared-key"
  List<String>? allowed_ips; //"allowed_ips"
  List<int>? reserved; //"reserved"

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }
    server = map["server"];
    port = ConvertUtils.intParseDynamic(map["port"]);
    ip = map["ip"];
    ipv6 = map["ipv6"];
    public_key = map["public-key"];
    pre_shared_key = map["pre-shared-key"];
    allowed_ips = ConvertUtils.convertYList(map["allowed_ips"]);
    var res = map["reserved"];
    if (res != null) {
      if (res is YamlList) {
        reserved = [];
        for (var i in res) {
          reserved!.add(i);
        }
      } else if (res is String && res.isNotEmpty) {
        reserved = [];
        var arr = base64.decode(res);
        for (var i in arr) {
          reserved!.add(i);
        }
      }
    }
  }

  static ClashYamlWireguardPeerOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlWireguardPeerOptions opt = ClashYamlWireguardPeerOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundWireguardOptions {
  String? ip;
  String? ipv6;
  String? public_key; //"public-key"
  String? pre_shared_key; //"pre-shared-key"
  String? private_key; //"private-key"
  bool? udp; //"udp"
  bool? remote_dns_resolve; //"remote-dns-resolve"
  List<String>? dns; //"dns"
  String? dialer_proxy; //`"dialer-proxy"`
  List<int>? reserved; //"reserved"
  List<ClashYamlWireguardPeerOptions>? peers;
  int? mtu;
  String? fake_packets;
  String? fake_packets_size;
  String? fake_packets_delay;
  String? fake_packets_mode;

  ClashYamlOutboundTlsOptions tls_opts = ClashYamlOutboundTlsOptions();
  HiddifyTurnRelayOptions? relay;

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }

    ip = map["ip"];
    ipv6 = map["ipv6"];
    public_key = map["public-key"];
    pre_shared_key = map["pre-shared-key"];
    private_key = map["private-key"];
    udp = ConvertUtils.boolParseDynamic(map["udp"], null);
    remote_dns_resolve =
        ConvertUtils.boolParseDynamic(map["remote-dns-resolve"], null);
    var _dns = map["dns"];
    if (_dns is List) {
      dns = ConvertUtils.convertYList(map["dns"]);
    } else if (_dns is String) {
      dns = [_dns];
    }

    dialer_proxy = map["dialer-proxy"];
    peers = convertListWireguardPeer(map["peers"]);
    mtu = map["mtu"];
    fake_packets = map["fake_packets"];
    fake_packets_size = map["fake_packets_size"];
    fake_packets_delay = map["fake_packets_delay"];
    fake_packets_mode = map["fake_packets_mode"];
    var res = map["reserved"];
    if (res != null) {
      if (res is YamlList) {
        reserved = [];
        for (var i in res) {
          reserved!.add(i);
        }
      } else if (res is String && res.isNotEmpty) {
        reserved = [];
        var arr = base64.decode(res);
        for (var i in arr) {
          reserved!.add(i);
        }
      }
    }
    tls_opts.fromYaml(map);
    //relay.fromYaml(map);
  }

  static ClashYamlOutboundWireguardOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundWireguardOptions opt = ClashYamlOutboundWireguardOptions();
    opt.fromYaml(map);
    return opt;
  }

  static List<ClashYamlWireguardPeerOptions>? convertListWireguardPeer(
      YamlList? list) {
    if (list == null) {
      return null;
    }
    List<ClashYamlWireguardPeerOptions> ret = [];
    for (var i in list) {
      var t = ClashYamlWireguardPeerOptions();
      t.fromYaml(i);
      ret.add(t);
    }

    return ret;
  }
}

class ClashYamlOutboundTuicOptions {
  String? token;
  String? uuid;
  String? password;
  String? ip;
  int? heartbeat_interval;

  bool? reduce_rtt;
  int? request_timeout;
  String? udp_relay_mode;
  String? congestion_controller;
  int? max_udp_relay_packet_size;
  bool? fast_open;
  int? max_open_streams;
  ClashYamlOutboundTlsOptions tls_opts = ClashYamlOutboundTlsOptions();
  HiddifyTurnRelayOptions? relay;

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }

    token = map["token"];
    uuid = map["uuid"];
    password = (map["password"] ?? "").toString();
    ip = map["ip"];
    heartbeat_interval =
        ConvertUtils.intParseDynamic(map["heartbeat-interval"]);

    reduce_rtt = ConvertUtils.boolParseDynamic(map["reduce-rtt"], null);
    request_timeout = map["request-timeout"];
    udp_relay_mode = map["udp-relay-mode"];
    congestion_controller = map["congestion-controller"];
    max_udp_relay_packet_size =
        ConvertUtils.intParseDynamic(map["max-udp-relay-packet-size"]);
    fast_open = ConvertUtils.boolParseDynamic(map["fast-open"], null);
    max_open_streams = ConvertUtils.intParseDynamic(map["max-open-streams"]);
    tls_opts.fromYaml(map);
    //relay.fromYaml(map);
  }

  static ClashYamlOutboundTuicOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundTuicOptions opt = ClashYamlOutboundTuicOptions();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOutboundSSHOptions {
  String? user;
  String? password;
  List<String>? private_key;
  String? private_key_path;
  String? private_key_passphrase;
  List<String>? host_key;
  List<String>? host_key_algorithms;
  String? client_version;

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }

    user = map["user"];
    password = map["password"];
    private_key = ConvertUtils.convertYList(map["private_key"]);
    private_key_path = map["private_key_path"];
    private_key_passphrase = map["private_key_passphrase"];
    host_key = ConvertUtils.convertYList(map["host_key"]);
    host_key_algorithms = ConvertUtils.convertYList(map["host_key_algorithms"]);
    client_version = map["client_version"];
  }

  static ClashYamlOutboundSSHOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundSSHOptions opt = ClashYamlOutboundSSHOptions();
    opt.fromYaml(map);
    return opt;
  }
}

//snell
class ClashYamlOutboundSnellOption {
  String psk = ""; //`"psk"`
  bool? udp; //`"udp,omitempty"`
  int? version; //`"version,omitempty"`
  Map<String, String>? obfs_opts; //`"obfs-opts,omitempty"`

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }

    psk = map["psk"] ?? "";
    udp = map["udp"];
    version = map["version"];
    obfs_opts = ConvertUtils.convertYMap(map["obfs-opts"]);
  }

  static ClashYamlOutboundSnellOption? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOutboundSnellOption opt = ClashYamlOutboundSnellOption();
    opt.fromYaml(map);
    return opt;
  }
}

class ClashYamlOubboundOptions {
  String name = ""; //`"name"`
  String attach = ""; //attach
  String type = ""; //`"type"`
  String server = ""; //`"server"`
  String port = ""; // `"port"`
  String? global_client_fingerprint; //
  String? detour;

  ClashYamlOutboundHttpOptions? http;
  ClashYamlOutboundSocksOptions? socks;
  ClashYamlOutboundShadowsocksOptions? shadowsocks;
  ClashYamlOutboundShadowsocksROptions? shadowsocksr;
  ClashYamlOutboundVmessOptions? vmess;
  ClashYamlOutboundVlessOptions? vless;
  ClashYamlOutboundTrojanOptions? trojan;
  ClashYamlOutboundHysteriaOptions? hysteria;
  ClashYamlOutboundHysteria2Options? hysteria2;
  ClashYamlOutboundTuicOptions? tuic;
  ClashYamlOutboundWireguardOptions? wg;
  ClashYamlOutboundSSHOptions? ssh;

  static String emojiName(String name) {
    name = EmojiUtils.emojify(name).trim();
    if (name.contains("%")) {
      try {
        name = Uri.decodeComponent(name);
      } catch (err) {}
    }
    return name;
  }

  void fromYaml(YamlMap? map) {
    if (map == null) {
      return;
    }

    name = (map["name"] ?? "").toString();
    name = emojiName(name).trim();
    if (name.contains("%")) {
      try {
        name = Uri.decodeComponent(name);
      } catch (err) {}
    }

    type = map["type"] ?? "";
    var serverRaw = map["server"];
    if (serverRaw is String) {
      server = serverRaw;
    } else if (serverRaw is YamlList) {
      if (serverRaw.isNotEmpty) {
        server = serverRaw[0];
      }
    }
    port = (map["port"] ?? "").toString();
    switch (type) {
      case "ss":
        shadowsocks = ClashYamlOutboundShadowsocksOptions.fromYamlStatic(map);
        break;
      case "ssr":
        shadowsocksr = ClashYamlOutboundShadowsocksROptions.fromYamlStatic(map);
        break;
      case "vmess":
        vmess = ClashYamlOutboundVmessOptions.fromYamlStatic(map);
        break;
      case "vless":
        vless = ClashYamlOutboundVlessOptions.fromYamlStatic(map);
        break;
      case "trojan":
        trojan = ClashYamlOutboundTrojanOptions.fromYamlStatic(map);
        break;
      case "socks":
      case "socks5":
        type = "socks";
        socks = ClashYamlOutboundSocksOptions.fromYamlStatic(map);
        break;
      case "http":
        http = ClashYamlOutboundHttpOptions.fromYamlStatic(map);
        break;
      case "hy":
      case "hysteria":
        type = "hysteria";
        hysteria = ClashYamlOutboundHysteriaOptions.fromYamlStatic(map);
        break;
      case "hy2":
      case "hysteria2":
        type = "hysteria2";
        hysteria2 = ClashYamlOutboundHysteria2Options.fromYamlStatic(map);
        break;
      case "wg":
      case "wireguard":
        type = "wireguard";
        wg = ClashYamlOutboundWireguardOptions.fromYamlStatic(map);
        break;
      case "tuic":
        tuic = ClashYamlOutboundTuicOptions.fromYamlStatic(map);
        break;
      case "ssh":
        ssh = ClashYamlOutboundSSHOptions.fromYamlStatic(map);
        break;
    }
  }

  static ClashYamlOubboundOptions? fromYamlStatic(YamlMap? map) {
    if (map == null) {
      return null;
    }
    ClashYamlOubboundOptions opt = ClashYamlOubboundOptions();
    opt.fromYaml(map);
    return opt;
  }
}
