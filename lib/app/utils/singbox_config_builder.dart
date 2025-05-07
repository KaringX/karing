// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/deep_copy_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:tuple/tuple.dart';

enum SingboxExportType {
  karing,
  singbox,
  tvos,
}

//experimental
class SingboxExperimentalClashApi {
  String external_controller = "";
  String secret = "";

  SingboxExperimentalClashApi(
      {this.external_controller = "", this.secret = ""});

  Map<String, dynamic> toJson() => {
        'external_controller': external_controller,
        'secret': secret,
      };
}

class SingboxExperimentalDebug {
  int? max_threads;
  bool panic_on_fault = false;
  String? listen;
  String? trace_back; //https://pkg.go.dev/runtime/debug@master#SetTraceback

  SingboxExperimentalDebug(
      {this.max_threads, this.panic_on_fault = false, this.trace_back});

  Map<String, dynamic> toJson() => {
        'max_threads': max_threads,
        'panic_on_fault': panic_on_fault,
        'listen': listen,
        //'trace_back': trace_back,
      };
}

class SingboxExperimentalCacheFile {
  //ruleset 需要
  bool enabled = false;
  String path = "";
  String? cache_id;
  bool store_fakeip = true;

  SingboxExperimentalCacheFile(
      {this.enabled = false,
      this.path = "",
      this.cache_id,
      this.store_fakeip = true});
  Map<String, dynamic> toJson() => {
        'enabled': enabled,
        'path': path,
        //'cache_id': cache_id,
        'store_fakeip': store_fakeip,
      };
}

class SingboxExperimental {
  SingboxExperimentalClashApi clash_api = SingboxExperimentalClashApi();
  SingboxExperimentalDebug debug = SingboxExperimentalDebug();
  SingboxExperimentalCacheFile cache_file = SingboxExperimentalCacheFile();

  Map<String, dynamic> toJson() => {
        'clash_api': clash_api,
        'debug': debug,
        'cache_file': cache_file,
      };
}

//log
class SingboxLog {
  bool disabled = false;
  String level = "info"; //  "info","trace","debug","warn","error"
  String output = "";
  bool timestamp = true;

  SingboxLog(
      {this.disabled = false,
      this.level = "info",
      this.output = "",
      this.timestamp = true});

  Map<String, dynamic> toJson() => {
        'disabled': disabled,
        'level': level,
        'output': output,
        'timestamp': timestamp
      };
}

const String kProxyDirect = "DIRECT";
const String kProxyBlock = "BLOCK";
//rule
const String kOutboundTagBlock = "block_out";
const String kOutboundTagSelector = "selector_out";
const String kOutboundTagDns = "dns_out";
const String kOutboundTagDirect = "direct_out";
const String kOutboundTagUrltest = "urltest_out";

const String kOutboundTypeBlock = "block";
const String kOutboundTypeDirect = "direct";
const String kOutboundTypeDns = "dns";
const String kOutboundTypeSelector = "selector";
const String kOutboundTypeUrltest = "urltest";

//dns
const String kDnsTagResolver = "dns_resolver_out";
const String kDnsTagOutbound = "dns_outbound_out";
const String kDnsTagDirect = "dns_direct_out";
const String kDnsTagProxy = "dns_proxy_out";
const String kDnsTagBlock = "dns_block_out";
const String kDnsTagFakeIp = "dns_fakeip_out";

const String kDnsDetourDirect = kOutboundTagDirect;

//dns server
class SingboxDNSServerOptions {
  String tag = "";
  String address = "";
  List<String>? addresses;
  String? address_resolver;
  String? address_strategy;
  String? address_fallback_delay;
  String? strategy;
  String? detour;
  String? client_subnet; //realip

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret['tag'] = tag;
    if (address.isNotEmpty) {
      ret['address'] = address;
    }
    if (addresses != null) {
      ret['addresses'] = addresses;
    }
    if (address_resolver != null) {
      ret['address_resolver'] = address_resolver;
    }
    if (address_strategy != null) {
      ret['address_strategy'] = address_strategy;
    }
    if (address_fallback_delay != null) {
      ret['address_fallback_delay'] = address_fallback_delay;
    }
    if (strategy != null) {
      ret['strategy'] = strategy;
    }
    if (detour != null) {
      ret['detour'] = detour;
    }
    if (client_subnet != null && client_subnet!.isNotEmpty) {
      ret['client_subnet'] = client_subnet;
    }
    return ret;
  }
}

//dns fakeip
class SingboxDNSFakeIPOptions {
  bool? enabled = true;
  String? inet4_range = "198.20.0.0/15";
  String? inet6_range;

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (enabled != null) {
      ret['enabled'] = enabled;
    }
    if (inet4_range != null) {
      ret['inet4_range'] = inet4_range;
    }
    if (inet6_range != null) {
      ret['inet6_range'] = inet6_range;
    }
    return ret;
  }
}

//dns client
class SingboxDNSClientOptions {
  String strategy = "prefer_ipv4";
  bool? disable_cache;
  bool? disable_expire;
  bool? independent_cache;
  int? cache_capacity;
  String? client_subnet; //realip

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};

    ret['strategy'] = strategy;
    if (disable_cache != null) {
      ret['disable_cache'] = disable_cache;
    }
    if (disable_expire != null) {
      ret['disable_expire'] = disable_expire;
    }
    if (independent_cache != null) {
      ret['independent_cache'] = independent_cache;
    }
    if (cache_capacity != null) {
      ret['cache_capacity'] = cache_capacity;
    }
    if (client_subnet != null && client_subnet!.isNotEmpty) {
      ret['client_subnet'] = client_subnet;
    }
    return ret;
  }
}

//dns
class SingboxDNSOptions extends SingboxDNSClientOptions {
  List<SingboxDNSServerOptions> servers = [];
  List<dynamic> rules = [];
  String? final_;
  bool? reverse_mapping;
  SingboxDNSFakeIPOptions? fakeip;
  Map<String, List<String>>? static_ips; //hiddify

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (final_ != null) {
      ret['final'] = final_;
    }
    if (reverse_mapping != null) {
      ret['reverse_mapping'] = reverse_mapping;
    }
    if (fakeip != null) {
      ret['fakeip'] = fakeip;
    }
    if (static_ips != null && static_ips!.isNotEmpty) {
      ret['static_ips'] = static_ips;
    }
    ret['rules'] = rules;
    ret['servers'] = servers;
    ret.addAll(super.toJson());
    return ret;
  }
}

class SingboxNTPOptions {
  bool? enabled;
  String? server;
  int? server_port;
  String? interval;
  String? detour;

  SingboxNTPOptions({
    this.enabled,
    this.server,
    this.server_port,
    this.interval,
    this.detour,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};

    if (enabled != null) {
      ret['enabled'] = enabled;
    }
    if (server != null) {
      ret['server'] = server;
    }
    if (server_port != null) {
      ret['server_port'] = server_port;
    }
    if (interval != null) {
      ret['interval'] = interval;
    }
    if (detour != null) {
      ret['detour'] = detour;
    }
    return ret;
  }
}
//inbound listen

class SingboxInboundOptions {
  bool? sniff;
  bool? sniff_override_destination;
  String? sniff_timeout;
  String? domain_strategy;
  String? detour;

  SingboxInboundOptions(
      {this.sniff,
      this.sniff_override_destination,
      this.sniff_timeout,
      this.domain_strategy,
      this.detour});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};

    if (sniff != null) {
      ret['sniff'] = sniff;
    }
    if (sniff_override_destination != null) {
      ret['sniff_override_destination'] = sniff_override_destination;
    }
    if (sniff_timeout != null) {
      ret['sniff_timeout'] = sniff_timeout;
    }
    if (domain_strategy != null) {
      ret['domain_strategy'] = domain_strategy;
    }
    if (detour != null) {
      ret['detour'] = detour;
    }

    return ret;
  }
}

class SingboxInboundListenOptions extends SingboxInboundOptions {
  String? listen;
  int? listen_port;
  String? tcp_keep_alive;
  String? tcp_keep_alive_interval;
  bool? tcp_fast_open;
  bool? tcp_multi_path;
  bool? udp_fragment;
  String? udp_timeout;

  SingboxInboundListenOptions({
    this.listen,
    this.listen_port,
    this.tcp_fast_open,
    this.tcp_multi_path,
    this.udp_fragment,
    this.udp_timeout,
  });

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};

    if (listen != null) {
      ret['listen'] = listen;
    }
    if (listen_port != null) {
      ret['listen_port'] = listen_port;
    }
    if (tcp_keep_alive != null) {
      ret['tcp_keep_alive'] = tcp_keep_alive;
    }
    if (tcp_keep_alive_interval != null) {
      ret['tcp_keep_alive_interval'] = tcp_keep_alive_interval;
    }
    if (tcp_fast_open != null) {
      ret['tcp_fast_open'] = tcp_fast_open;
    }
    if (tcp_multi_path != null) {
      ret['tcp_multi_path'] = tcp_multi_path;
    }
    if (udp_fragment != null) {
      ret['udp_fragment'] = udp_fragment;
    }
    if (udp_timeout != null) {
      ret['udp_timeout'] = udp_timeout;
    }

    ret.addAll(super.toJson());
    return ret;
  }
}

//inbound mixed
const String kInboundTagMixedRule = "mixed_in_rule";
const String kInboundTagMixedDirect = "mixed_in_direct";
const String kInboundTagMixedProxy = "mixed_in_proxy";

class SingboxInboundMixedOptions extends SingboxInboundListenOptions {
  String type = "mixed";
  String tag = "";
  bool set_system_proxy = false;

  SingboxInboundMixedOptions({this.tag = "", this.set_system_proxy = false});

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'tag': tag,
        'set_system_proxy': set_system_proxy,
        ...super.toJson()
      };
}

class SingboxInboundTunPlatformHttpProxyOptions {
  bool enabled = false;
  String server = "127.0.0.1";
  int server_port = 0;

  SingboxInboundTunPlatformHttpProxyOptions(
      {this.enabled = false, this.server = "127.0.0.1", this.server_port = 0});

  Map<String, dynamic> toJson() => {
        'enabled': enabled,
        'server': server,
        'server_port': server_port,
      };
}

class SingboxInboundTunPlatformOptions {
  SingboxInboundTunPlatformHttpProxyOptions? http_proxy;
  bool? allow_bypass; //karing

  SingboxInboundTunPlatformOptions({this.http_proxy, this.allow_bypass});
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (http_proxy != null) {
      ret['http_proxy'] = http_proxy;
    }
    if (allow_bypass != null) {
      ret['allow_bypass'] = allow_bypass;
    }
    return ret;
  }
}

//inbound tun
class SingboxInboundTunOptions extends SingboxInboundListenOptions {
  static String tunModeMixed = "mixed";
  static String tunModeSystem = "system";
  static String tunModeGvisor = "gvisor";
  static List<String> privatev4Address = [
    "10.20.0.1",
    "10.21.0.1",
    "10.22.0.1",
    "172.20.0.1",
    "172.21.0.1",
    "172.22.0.1"
  ];
  static List<String> privatev6Address = [
    "fdfe:dcba:9876::1",
    "fdfe:dcbb:9876::1",
    "fdfe:dcbc:9876::1",
  ];

  //i4Address这地址如果和wg协议里的ip同网段,会造成android下bind失败
  static String i4Address = privatev4Address[0];
  static String i6Address = privatev6Address[0];
  String type = "tun";
  static String tag = "tun_in";
  String interface_name = "Karing TUN Network Adapter";
  List<String> address = []; //= ["$i6Address/126"];
  int mtu = 9000;
  bool auto_route = true;
  bool? auto_redirect = false;
  int? auto_redirect_input_mark;
  int? auto_redirect_output_mark;
  bool strict_route = false;
  //List<String>? route_address = ["0.0.0.0/1", "128.0.0.0/1","::/1", "8000::/1"];//1.10.0
  //List<String> route_exclude_address = ["0.0.0.0/31","::/127"];//1.10.0
  String? stack = "mixed";
  //List<String>? include_interface = ["lan0"];
  //List<String>? exclude_interface = ["lan1"];
  //List<int>? include_uid = [0];
  //List<String>? include_uid_range = ["1000-99999"];
  //List<int>? exclude_uid = [1000];
  //List<String>? exclude_uid_range = ["1000-99999"];
  //List<int>? include_android_user = [0, 10];
  List<String>? include_package; //= ["com.android.chrome"];
  List<String>? exclude_package; // = ["com.android.captiveportallogin"];
  /* "platform": {
    "http_proxy": {
      "enabled": false,
      "server": "127.0.0.1",
      "server_port": 8080
    }
  };*/
  SingboxInboundTunPlatformOptions? platform;

  @override
  Map<String, dynamic> toJson() => {
        'type': type,
        'tag': tag,
        'interface_name': interface_name,
        'address': address,
        //"route_address": route_address,
        //"route_exclude_address": route_exclude_address,
        'mtu': mtu,
        'auto_route': auto_route,
        'strict_route': strict_route,
        'stack': stack,
        'platform': platform,
        'include_package': include_package,
        'exclude_package': exclude_package,
        //"sniff": true,
        //"sniff_override_destination": false,
        //"domain_strategy": "ipv4_only",
        ...super.toJson()
      };
  static bool isSameSubMask(String ip) {
    if (ip == i4Address || ip == i6Address) {
      return true;
    }
    List<String> parts4 = i4Address.split(".");
    List<String> parts6 = i6Address.split(":");
    parts4 = parts4.sublist(0, parts4.length - 1);
    parts6 = parts6.sublist(0, parts6.length - 1);
    String v4Start = "${parts4.join(".")}.";
    String v6Start = "${parts6.join(":")}:";
    if (ip.startsWith(v4Start)) {
      return true;
    }
    if (ip.startsWith(v6Start)) {
      return true;
    }
    return false;
  }
}

//oubbound
class SingboxOutboundOptions {
  String type = "";
  String tag = "";

  SingboxOutboundOptions({this.type = "", this.tag = ""});
}

class SingboxOutboundDirect extends SingboxOutboundOptions {
  Map<String, dynamic> toJson() =>
      {'type': kOutboundTypeDirect, 'tag': kOutboundTagDirect};
}

class SingboxOutboundBlock extends SingboxOutboundOptions {
  Map<String, dynamic> toJson() =>
      {'type': kOutboundTypeBlock, 'tag': kOutboundTagBlock};
}

class SingboxOutboundDNS extends SingboxOutboundOptions {
  Map<String, dynamic> toJson() =>
      {'type': kOutboundTypeDns, 'tag': kOutboundTagDns};
}

class SingboxOutboundUrltest extends SingboxOutboundOptions {
  String? url; //https://www.gstatic.com/generate_204
  String? method;
  String? interval;
  bool interrupt_exist_connections = false;
  String? default_;
  bool? retest_if_network_udpate;
  int? tolerance;
  String? idle_timeout;
  List<String> outbounds = [];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret['type'] = kOutboundTypeUrltest;
    ret['tag'] = tag;
    if (url != null) {
      ret['url'] = url;
    }
    if (method != null) {
      ret['method'] = method;
    }
    if (interval != null) {
      ret['interval'] = interval;
    }
    ret['interrupt_exist_connections'] = interrupt_exist_connections;
    if (default_ != null) {
      ret['default'] = default_;
    }
    if (retest_if_network_udpate != null) {
      ret['retest_if_network_udpate'] = retest_if_network_udpate;
    }
    if (tolerance != null) {
      ret['tolerance'] = tolerance;
    }
    if (idle_timeout != null) {
      ret['idle_timeout'] = idle_timeout;
    }
    ret['outbounds'] = outbounds;
    return ret;
  }
}

class SingboxRouteRuleSetOptions {
  String type = "";
  String tag = "";
  String format = "";
  String? url;
  bool? is_asset;
  String? path;
  String? download_detour;
  //String update_interval = ""${h}h";";
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret['tag'] = tag;
    ret['type'] = type;
    ret['format'] = format;
    if (url != null) {
      ret['url'] = url;
    }
    if (is_asset != null) {
      ret['is_asset'] = is_asset;
    }
    if (path != null) {
      ret['path'] = path;
    }
    if (download_detour != null) {
      ret['download_detour'] = download_detour;
    }
    //ret['update_interval'] = update_interval;

    return ret;
  }

  SingboxRouteRuleSetOptions clone() {
    SingboxRouteRuleSetOptions option = SingboxRouteRuleSetOptions();
    option.tag = tag;
    option.type = type;
    option.format = format;
    option.url = url;
    option.download_detour = download_detour;
    return option;
  }
}

class SingboxRoute {
  String final_ = "";
  bool? find_process;
  bool? auto_detect_interface; //tun模式必须开启,否则内存会爆掉
  bool? override_android_vpn; //missing default interface 可能需要开启此标记解决
  List<dynamic> rules = [];
  List<dynamic> rule_set = [];

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret['final'] = final_;

    if (find_process != null) {
      ret['find_process'] = find_process;
    }
    if (auto_detect_interface != null) {
      ret['auto_detect_interface'] = auto_detect_interface;
    }
    if (override_android_vpn != null) {
      ret['override_android_vpn'] = override_android_vpn; //
    }
    ret['rules'] = rules;
    ret['rule_set'] = rule_set;
    return ret;
  }
}

class SingboxConfig {
  SingboxExperimental experimental = SingboxExperimental();
  SingboxLog log = SingboxLog();
  SingboxNTPOptions? ntp;
  SingboxDNSOptions dns = SingboxDNSOptions();
  List<dynamic> inbounds = [];
  List<dynamic> outbounds = [];
  SingboxRoute route = SingboxRoute();

  Map<String, dynamic> toJson() => {
        'experimental': experimental,
        'log': log,
        'ntp': ntp,
        'dns': dns,
        'inbounds': inbounds,
        'outbounds': outbounds,
        'route': route
      };
}

class SingboxConfigBuilder {
  static SingboxExperimental experimental(String externalControllerHost,
      String pprofHost, String secret, String cache_file) {
    var setting = SettingManager.getConfig();
    SingboxExperimental exp = SingboxExperimental();
    exp.clash_api.external_controller =
        "$externalControllerHost:${setting.proxy.controlPort}";
    exp.clash_api.secret = secret;
    exp.cache_file.enabled = true;
    exp.cache_file.path = cache_file;
    exp.debug.max_threads = null;

    exp.debug.listen = setting.dev.pprofPort == 0
        ? null
        : "$pprofHost:${setting.dev.pprofPort}";

    return exp;
  }

  static String logLevel() {
    if (const bool.fromEnvironment("dart.vm.product")) {
      var setting = SettingManager.getConfig();
      if (!setting.novice && setting.dev.enableDebugLog) {
        return "trace";
      }
      return "error";
    }
    /*Error,
    Warn,
    Info,
    Debug,
    Trace,*/
    return "trace";
  }

  static SingboxLog log(String logPath) {
    SingboxLog lo = SingboxLog();
    lo.disabled = false;
    lo.timestamp = true;
    lo.level = logLevel();
    if (Platform.isIOS || Platform.isMacOS) {
      lo.output = logPath;
      //"stdout"; //文件回报chown operation not permitted
    } else {
      lo.output = logPath;
    }

    return lo;
  }

  static SingboxNTPOptions ntp() {
    var setting = SettingManager.getConfig();
    return SingboxNTPOptions(
        enabled: !setting.novice ? setting.ntp.enable : false,
        server: setting.ntp.server,
        server_port: setting.ntp.port,
        interval: "12h",
        detour: kOutboundTagDirect);
  }

  static SingboxDNSOptions dns(
      bool tunMode, SingboxExportType exportType, String? subnet) {
    var setting = SettingManager.getConfig();
    String regionCode = setting.regionCode.toLowerCase();

    var resolver = setting.dns.getResolverDns(regionCode, tunMode);
    var outbound = setting.dns.getOutboundDns(regionCode, tunMode);
    var direct = setting.dns.getDirectDns(regionCode, tunMode);
    var proxy = setting.dns.getProxyDns(regionCode, tunMode);

    String? clientSubnet;
    if (exportType != SingboxExportType.singbox) {
      if (!setting.novice && setting.dns.enableClientSubnet) {
        clientSubnet = setting.dns.clientSubnet;
        if (clientSubnet.isEmpty) {
          clientSubnet = subnet;
        }
      }
    }

    SingboxDNSOptions dns = SingboxDNSOptions();
    dns.final_ = kDnsTagProxy;
    dns.strategy = setting.ipStrategy.name;
    dns.independent_cache = true;
    dns.cache_capacity = 1024;
    if (!setting.novice) {
      SingboxDNSServerOptions server = SingboxDNSServerOptions();
      server.tag = kDnsTagOutbound;
      server.detour = kDnsDetourDirect;
      if ((exportType == SingboxExportType.singbox) || outbound.length == 1) {
        server.address = outbound[0];
      } else {
        server.addresses = outbound.toList();
      }
      server.address_resolver = kDnsTagResolver;
      server.client_subnet = clientSubnet;
      dns.servers.add(server);
    }
    {
      SingboxDNSServerOptions server = SingboxDNSServerOptions();
      server.tag = kDnsTagDirect;
      server.detour = kDnsDetourDirect;
      if ((exportType == SingboxExportType.singbox) || direct.length == 1) {
        server.address = direct[0];
      } else {
        server.addresses = direct.toList();
      }
      server.address_resolver = kDnsTagResolver;
      server.client_subnet = clientSubnet;
      dns.servers.add(server);
    }
    {
      SingboxDNSServerOptions server = SingboxDNSServerOptions();
      server.tag = kDnsTagProxy;
      //server.detour = proxyDetour;
      if ((exportType == SingboxExportType.singbox) || proxy.length == 1) {
        server.address = proxy[0];
      } else {
        server.addresses = proxy.toList();
      }
      server.address_resolver = kDnsTagResolver;
      //server.client_subnet = clientSubnet;
      dns.servers.add(server);
    }
    {
      SingboxDNSServerOptions server = SingboxDNSServerOptions();
      server.tag = kDnsTagResolver;
      server.detour = kDnsDetourDirect;
      if ((exportType == SingboxExportType.singbox) || resolver.length == 1) {
        server.address = resolver[0];
      } else {
        server.addresses = resolver.toList();
      }
      server.client_subnet = clientSubnet;
      dns.servers.add(server);
    }
    {
      SingboxDNSServerOptions server = SingboxDNSServerOptions();
      server.tag = kDnsTagBlock;
      server.address = "rcode://success";
      dns.servers.add(server);
    }

    if (setting.dns.proxyResolveMode ==
        SettingConfigItemDNSProxyResolveMode.fakeip) {
      dns.fakeip = SingboxDNSFakeIPOptions();
      if (setting.ipStrategy.index >= IPStrategy.preferIPv4.index) {
        dns.fakeip!.inet6_range = "fc00::/18";
      }

      SingboxDNSServerOptions server = SingboxDNSServerOptions();
      server.tag = kDnsTagFakeIp;
      server.address = "fakeip";
      //server.strategy = "ipv4_only";
      dns.servers.add(server);
    }

    return dns;
  }

  static List<dynamic> inbounds(
      bool proxyAll,
      bool tunMode,
      List<NetInterfacesInfo> interfaces,
      SingboxExportType exportType,
      String? hostAddress) {
    var setting = SettingManager.getConfig();
    if (exportType == SingboxExportType.tvos) {
      tunMode = true;
    }

    List<dynamic> inbounds = [];
    if (tunMode) {
      String interval = durationTo(setting.tun.udpTimeout, "15s");
      SingboxInboundTunOptions tun = SingboxInboundTunOptions();
      if (setting.novice) {
        tun.sniff = true;
      } else {
        tun.sniff = setting.sniff.enable;
        tun.sniff_override_destination = setting.sniff.overrideDestination;
      }
      tun.udp_timeout = interval; //todo 限制超时时间,改善大量空udp连接导致内存爆掉,尚未彻底解决泄露的问题

      if (!setting.novice &&
          (setting.tun.stack == SingboxInboundTunOptions.tunModeMixed ||
              setting.tun.stack == SingboxInboundTunOptions.tunModeSystem ||
              setting.tun.stack == SingboxInboundTunOptions.tunModeGvisor)) {
        tun.stack = setting.tun.stack;
      } else {
        tun.stack = SingboxInboundTunOptions.tunModeGvisor;
      }
      if (!setting.novice) {
        tun.auto_route = Platform.isWindows ? setting.tun.autoRoute : true;
        tun.strict_route = setting.tun.strictRoute;
      }

      tun.address = ["${SingboxInboundTunOptions.i4Address}/30"];
      if (setting.ipStrategy.index >= IPStrategy.preferIPv4.index) {
        tun.address.add("${SingboxInboundTunOptions.i6Address}/126");
      }

      if (Platform.isAndroid) {
        if (setting.perapp.enable) {
          if (setting.perapp.list.isNotEmpty) {
            //vpn自身必须走代理，不然会无法进行网络连接 https://github.com/dawei101/shadowsocks-android-java/blob/master/app/src/main/java/com/vm/shadowsocks/core/LocalVpnService.java
            if (setting.perapp.isInclude) {
              tun.include_package = [AppUtils.getId()];
              tun.include_package!.addAll(setting.perapp.list);
            } else {
              tun.exclude_package = setting.perapp.list;
            }
          }
        }
      }

      if (!setting.novice && PlatformUtils.isMobile()) {
        if (setting.tun.appendHttpProxy || setting.tun.allowBypass) {
          tun.platform = SingboxInboundTunPlatformOptions();
          if (setting.tun.appendHttpProxy) {
            tun.platform!.http_proxy =
                SingboxInboundTunPlatformHttpProxyOptions(
                    enabled: true, server_port: setting.proxy.mixedRulePort);
            if (exportType == SingboxExportType.karing) {
              if (Platform.isIOS) {
                if (setting.proxy.host == SettingConfigItemProxy.hostNetwork) {
                  for (var face in interfaces) {
                    if (face.name.startsWith("en")) {
                      tun.platform!.http_proxy!.server = face.address;
                      break;
                    }
                  }
                }
              }
            } else if (exportType == SingboxExportType.tvos) {
              if (setting.proxy.host == SettingConfigItemProxy.hostNetwork) {
                if (hostAddress != null) {
                  tun.platform!.http_proxy!.server = hostAddress;
                }
              }
            }
          }
          if (Platform.isAndroid) {
            if (setting.tun.allowBypass &&
                (exportType != SingboxExportType.singbox)) {
              tun.platform!.allow_bypass = setting.tun.allowBypass;
            }
          }
        }
      }

      if (setting.tun.mtu != 0) {
        tun.mtu = setting.tun.mtu;
      }

      inbounds.add(tun.toJson());
    }
    {
      SingboxInboundMixedOptions mixed = SingboxInboundMixedOptions();
      mixed.tag = kInboundTagMixedDirect;
      mixed.listen = setting.proxy.host;
      mixed.listen_port = setting.proxy.mixedDirectPort;
      mixed.set_system_proxy = false;
      if (setting.novice) {
        mixed.sniff = true;
      } else {
        mixed.sniff = setting.sniff.enable;
        mixed.sniff_override_destination = setting.sniff.overrideDestination;
      }
      inbounds.add(mixed.toJson());
    }
    {
      SingboxInboundMixedOptions mixed = SingboxInboundMixedOptions();
      mixed.tag = kInboundTagMixedProxy;
      mixed.listen = setting.proxy.host;
      mixed.listen_port = setting.proxy.mixedForwordPort;
      mixed.set_system_proxy = false;
      if (setting.novice) {
        mixed.sniff = true;
      } else {
        mixed.sniff = setting.sniff.enable;
        mixed.sniff_override_destination = setting.sniff.overrideDestination;
      }
      inbounds.add(mixed.toJson());
    }
    {
      SingboxInboundMixedOptions mixed = SingboxInboundMixedOptions();
      mixed.tag = kInboundTagMixedRule;
      mixed.listen = setting.proxy.host;
      mixed.listen_port = setting.proxy.mixedRulePort;
      mixed.set_system_proxy = false;
      if (setting.novice) {
        mixed.sniff = true;
      } else {
        mixed.sniff = setting.sniff.enable;
        mixed.sniff_override_destination = setting.sniff.overrideDestination;
      }
      if (!proxyAll && !setting.novice) {
        if (setting.dns.enableInboundDomainResolve) {
          mixed.domain_strategy = setting.ipStrategy.name;
        }
      }

      inbounds.add(mixed.toJson());
    }

    return inbounds;
  }

  static List<dynamic> outbounds(
      bool proxyAll,
      Set<String> selectOutboundTags,
      Map<String, List<String>>? testGroupTags,
      Set<String>? urltestCustomGroupTags,
      List<dynamic> outbounds,
      dynamic selectOubbound,
      Set<String> allOutBoundsTags,
      List<String> frontProxy,
      SingboxExportType exportType) {
    var setting = SettingManager.getConfig();
    //String tagCurrent =
    //getOutboundFromCurrentSelector(proxyAll, selectOubbound, outbounds);
    List<dynamic> newoutbounds = [];
    String interval = durationTo(setting.autoSelect.timerInterval, "8h");

    SingboxOutboundUrltest urltest = SingboxOutboundUrltest();
    urltest.type = kOutboundTypeUrltest;
    urltest.tag = kOutboundTagUrltest;
    urltest.url = !setting.novice
        ? setting.urlTest
        : SettingConfig.kUrlTestList[0]; //= "https://checkip.amazonaws.com";
    urltest.method = null;
    urltest.interval = interval;
    urltest.idle_timeout = urltest.interval;
    urltest.outbounds = selectOutboundTags.isNotEmpty
        ? selectOutboundTags.toList()
        : [kOutboundTagDirect];
    String selectDefault = ServerManager.getUse().selectDefault;
    if ((exportType != SingboxExportType.singbox) &&
        selectDefault.isNotEmpty &&
        selectOutboundTags.contains(selectDefault)) {
      urltest.default_ = selectDefault;
    }
    if ((exportType != SingboxExportType.singbox) &&
        setting.autoSelect.reTestIfNetworkUpdate) {
      urltest.retest_if_network_udpate = true;
    }

    for (var outbound in outbounds) {
      if (outbound["type"] == kOutboundTypeUrltest) {
        if (urltest.url != null) {
          outbound["url"] = urltest.url;
        }
        if (urltest.method != null) {
          outbound["method"] = urltest.method;
        }
        outbound["interval"] = interval;
        outbound["idle_timeout"] = interval;
      }
      String? detour = outbound["detour"];
      if (detour != null &&
          detour.isNotEmpty &&
          !selectOutboundTags.contains(detour)) {
        String? tag = outbound["tag"];
        Log.w("[$tag] detour[$detour] invalid , removed");
        outbound["detour"] = null;
      }
    }

    /*testGroupTags?.forEach((key, value) {
      SingboxOutboundUrltest urltest = SingboxOutboundUrltest();
      urltest.type = kOutboundTypeUrltest;
      urltest.tag = key;
      urltest.url = url;
      urltest.method = method;
      urltest.interval = kInterval; //不主动执行urltest
      urltest.idle_timeout = urltest.interval;
      if (!export && setting.autoSelect.reTestIfNetworkUpdate) {
        urltest.retest_if_network_udpate = true;
      }
      urltest.outbounds.addAll(value);
      newoutbounds.add(urltest.toJson());
    });*/
    if (!setting.novice) {
      if (frontProxy.isNotEmpty) {
        Set<String> outboundDetours = {};
        Set<String> chainTags = {};
        List<dynamic> chainOutbounds = [];

        for (var proxy in frontProxy) {
          for (var outbound in outbounds) {
            if (outbound["tag"] == proxy) {
              chainTags.add(proxy);
              chainOutbounds.add(outbound);
              break;
            }
          }
        }

        if (chainOutbounds.isNotEmpty) {
          for (int i = chainOutbounds.length - 1; i >= 1; --i) {
            String tag = chainOutbounds[i - 1]["tag"];
            chainOutbounds[i]["detour"] = tag;
          }
          for (var outbound in outbounds) {
            if (outbound["detour"] != null && outbound["detour"] != "") {
              outboundDetours.add(outbound["detour"]);
            }
          }
          for (var outbound in outbounds) {
            String? tag = outbound["tag"];
            String? type = outbound["type"];
            if (type != kOutboundTypeUrltest &&
                tag != null &&
                tag != "127.0.0.1" &&
                tag != "" &&
                !chainTags.contains(tag) &&
                !outboundDetours.contains(tag) &&
                (outbound["detour"] == null || outbound["detour"] == "")) {
              outbound["detour"] =
                  chainOutbounds[chainOutbounds.length - 1]["tag"];
            }
          }
        }
      }
    }
    if ((exportType != SingboxExportType.singbox) &&
        !setting.novice &&
        (setting.tls.enableInsecure ||
            setting.tls.enableFragment ||
            setting.tls.enableMixedCaseSNI ||
            setting.tls.enablePadding)) {
      for (var outbound in outbounds) {
        var tls = outbound["tls"];
        var type = outbound["type"];
        switch (type) {
          case kOutboundTypeSelector:
          case kOutboundTypeUrltest:
          case kOutboundTypeBlock:
          case kOutboundTypeDns:
            continue;
        }
        if (tls == null) {
          continue;
        }
        if (tls["enabled"] != true) {
          continue;
        }
        if (setting.tls.enableInsecure) {
          tls["insecure"] = true;
        }
        if (type != "vless" &&
            type != "vmess" &&
            type != "trojan" &&
            type != kOutboundTypeDirect) {
          continue;
        }
        if (setting.tls.enableFragment) {
          outbound["tcp_fast_open"] = false;
          outbound["tls_fragment"] = {
            "enabled": true,
            "size": setting.tls.fragmentSize,
            "sleep": setting.tls.fragmentSleep
          };
        }
        if (type == "vless" || type == "vmess" || type == "trojan") {
          var transport = tls["transport"];
          if (transport != "ws" &&
              transport != "grpc" &&
              transport != "httpupgrade") {
            continue;
          }
          if (type == "vless") {
            var reality = tls["reality"];
            if (reality != null) {
              var enable = reality["enabled"];
              if (enable == true) {
                continue;
              }
            }
          }
          var tls_tricks = tls["tls_tricks"] ?? {};
          if (setting.tls.enableMixedCaseSNI) {
            tls_tricks["mixedcase_sni"] = true;
          }
          if (setting.tls.enablePadding) {
            tls_tricks["padding_mode"] = "random";
            tls_tricks["padding_size"] = setting.tls.paddingSize.isEmpty
                ? SettingConfigItemTLS.kPaddingSize
                : setting.tls.paddingSize;
            tls["utls"] = {
              "enabled": true,
              "fingerprint": "custom", //custom hiddify
            };
          }
          if (tls_tricks.isNotEmpty) {
            tls["tls_tricks"] = tls_tricks;
          }
        }
      }
    }
    if (!setting.novice && setting.mux.enable) {
      for (var outbound in outbounds) {
        var type = outbound["type"];
        if (setting.mux.outboundTypes.contains(type)) {
          if (type == "vless") {
            if (outbound["flow"] != null && outbound["flow"] != "") {
              continue;
            }
          }
          outbound["multiplex"] = {
            "enabled": true,
            "protocol": setting.mux.protocol,
            "padding": setting.mux.padding,
            "max_streams": setting.mux.maxStream,
          };
        }
      }
    }

    allOutBoundsTags.add(urltest.tag);
    allOutBoundsTags.add(kOutboundTagDirect);
    allOutBoundsTags.add(kOutboundTagBlock);
    allOutBoundsTags.add(kOutboundTagDns);

    newoutbounds.addAll(outbounds);
    newoutbounds.add(urltest.toJson());

    newoutbounds.add(SingboxOutboundDirect().toJson());
    newoutbounds.add(SingboxOutboundBlock().toJson());
    newoutbounds.add(SingboxOutboundDNS().toJson());

    return newoutbounds;
  }

  static SingboxRoute route(
      String geoSiteDir,
      String geoIpDir,
      String aclDir,
      List<int> sitecodesHashCode,
      List<int> ipcodesHashCode,
      List<int> aclcodesHashCode,
      bool proxyAll,
      List<dynamic> outbounds,
      Set<String> allOutBoundsTags,
      dynamic selectOubbound,
      List<Tuple2<DiversionRulesGroup, ProxyConfig>> diversionGroups,
      List<dynamic> inbounds,
      SingboxDNSOptions dnsOptions,
      Map<String, List<String>>? staticIPs,
      String groupid,
      SingboxExportType exportType) {
    var setting = SettingManager.getConfig();
    String regionCode = setting.regionCode.toLowerCase();
    if (!ipcodesHashCode.contains(regionCode.hashCode)) {
      regionCode = "";
    }
    var remoteConfig = RemoteConfigManager.getConfig();
    var remoteISPConfig = RemoteISPConfigManager.getConfig();
    String tagCurrent =
        getOutboundFromCurrentSelector(proxyAll, selectOubbound, outbounds);

    SingboxRoute route = SingboxRoute();
    route.find_process = !Platform.isIOS;
    route.auto_detect_interface = true; //windows下tun模式需要启用,否则会形成回环,爆内存

    route.final_ = tagCurrent;

    if (!setting.novice && (exportType != SingboxExportType.singbox)) {
      dnsOptions.static_ips = staticIPs;
      if (setting.dns.enableStaticIP) {
        dnsOptions.static_ips!.addAll(setting.dns.staticIPs);
      }

      dnsOptions.static_ips!.forEach((key, value) {
        value.removeWhere((ele) {
          return !NetworkUtils.isIpv4(ele) && !NetworkUtils.isIpv6(ele);
        });
      });
      dnsOptions.static_ips!.removeWhere((key, value) {
        return value.isEmpty ||
            key.toLowerCase().endsWith(RemoteConfigManager.getConfig().host);
      });
    }

    //注意:代理服务器域名的查询走的是下面这个,这个必须使用direct,否则可能会无法正常解析dns
    Set<String> dnsOutbounds = {};
    for (var outbound in outbounds) {
      String? type = outbound["type"];
      if (type == kOutboundTypeUrltest) {
      } else {
        String? server = outbound["server"]; //使用了detour的可能没有server字段
        if (server == null) {
          continue;
        }
        if (dnsOutbounds.contains(server)) {
          continue;
        }
        if (!NetworkUtils.isDomain(server, false)) {
          continue;
        }
        dnsOutbounds.add(server
            .toLowerCase()); //要转为小写,否则核心对比可能因为大小写失败(DNS query loopback in transport)
      }
    }
    if (dnsOutbounds.isNotEmpty) {
      dnsOptions.rules.add({
        "domain": dnsOutbounds.toList(),
        "server": !setting.novice ? kDnsTagOutbound : kDnsTagDirect,
        "name": "outbound[dns]",
        //"rewrite_ttl": 20,
      });
    }

    route.rules.add({
      "inbound": [kInboundTagMixedDirect],
      "outbound": kOutboundTagDirect,
      "name": "direct[all]",
    });

    route.rules.add({
      "inbound": [kInboundTagMixedProxy],
      "outbound": tagCurrent,
      "name": "proxy[all]",
    });

    route.rules.add({
      "protocol": kOutboundTypeDns,
      "outbound": kOutboundTagDns,
    });
    bool enableFakeIp = setting.dns.proxyResolveMode ==
        SettingConfigItemDNSProxyResolveMode.fakeip;

    if (!proxyAll) {
      bool forword = remoteConfig.forwards.contains("*") ||
          remoteConfig.forwards.contains(regionCode);
      List<String> directDomains = [];
      if (!forword) {
        if (remoteConfig.sentry.isNotEmpty) {
          directDomains.add(remoteConfig.sentry);
        }
      }

      if (directDomains.isNotEmpty) {
        route.rules.add({
          "domain_suffix": directDomains,
          "outbound": kOutboundTagDirect,
          "name": "direct[karing]",
        });

        dnsOptions.rules.add({
          "domain_suffix": directDomains,
          "server": kDnsTagDirect,
          "name": "direct[karing][dns]",
        });
      }

      List<String> proxyDomains = [];
      Uri? uri = Uri.tryParse(setting.speedTest);
      if ((uri != null) && uri.host.isNotEmpty) {
        proxyDomains.add(uri.host);
      }
      if (forword) {
        if (remoteConfig.sentry.isNotEmpty) {
          proxyDomains.add(remoteConfig.sentry);
        }
      }
      if (proxyDomains.isNotEmpty) {
        route.rules.add({
          "domain_suffix": proxyDomains,
          "outbound": tagCurrent,
          "name": "current[karing]",
        });

        dnsOptions.rules.add({
          "domain_suffix": proxyDomains,
          "server": kDnsTagProxy,
          "name": "proxy[karing][dns]",
        });
      }
      if (remoteISPConfig.id.isNotEmpty &&
          remoteISPConfig.proxyDomains.isNotEmpty) {
        route.rules.add({
          "domain_suffix": remoteISPConfig.proxyDomains,
          "outbound": tagCurrent,
          "name": "current[isp]",
        });

        dnsOptions.rules.add({
          "domain_suffix": remoteISPConfig.proxyDomains,
          "server": kDnsTagProxy,
          "name": "proxy[isp][dns]",
        });
      }

      route.rules.add({
        "domain_suffix": [remoteConfig.host],
        "outbound": forword ? tagCurrent : kOutboundTagDirect,
        "name": forword ? "current[karing]" : "direct[karing]",
      });

      dnsOptions.rules.add({
        "domain_suffix": [remoteConfig.host],
        "server": kDnsTagProxy,
        "name": "proxy[karing][dns]",
      });
      /*if (Platform.isAndroid) {
        route.rules.add({
          "package_name": [AppUtils.getId()],
          "outbound": kOutboundTagDirect,
          "name": "direct[karing]",
        });
      }*/
      Set<String> geoSiteRuleSets = {};
      Set<String> geoIpRuleSets = {};
      Set<String> aclRuleSets = {};

      bool hasRuleSet = false;
      var rulesets = ServerManager.getDiversionGroupConfig().ruleSetItems;
      Map<String, ServerDiversionGroupRuleSetItem> rulesetsMap = {};
      for (var rs in rulesets) {
        rulesetsMap[rs.tag] = rs;
      }
      bool geositeSetted = false;
      bool geoipSetted = false;
      Set<String> rSets = {};
      Set<String> ruleSets = {};
      String hostSuffixfix = ".${remoteConfig.host}";
      for (var item in diversionGroups) {
        DiversionRulesGroup rg = item.item1;
        ProxyConfig pc = item.item2;
        if (pc.groupid != ServerManager.getUrltestGroupId() &&
            pc.groupid != ServerManager.getCurrentSelectedGroupId()) {
          if (!allOutBoundsTags.contains(pc.tag)) {
            continue;
          }
        }
        if (pc.groupid != ServerManager.getUrltestGroupId()) {
          ServerConfigGroupItem? pcgroup =
              ServerManager.getByGroupId(pc.groupid);
          if (pcgroup == null || !pcgroup.enable) {
            continue;
          }
        }

        if (groupid.isNotEmpty) {
          if (rg.groupid != groupid) {
            continue;
          }
        }
        if (pc.groupid == ServerManager.getUrltestGroupId()) {
          pc.tag = ServerManager.getUrltestTagForCustom(pc.tag);
          if (!allOutBoundsTags.contains(pc.tag)) {
            continue;
          }
        }
        String ruleTag = pc.groupid == ServerManager.getCurrentSelectedGroupId()
            ? tagCurrent
            : pc.tag;
        if (rg.groupid == ServerManager.getFinalGroupId()) {
          route.final_ = pc.tag.isNotEmpty ? pc.tag : tagCurrent;
        } else if (rg.groupid == ServerManager.getGeoSiteGroupId()) {
          if (setting.ruleSets.enableGeoSite) {
            geoSiteRuleSets.add(rg.name);
            route.rules.add({
              'rule_set': [getGeoSiteTag(rg.name)],
              'outbound': ruleTag,
              "name": "${rg.name}[geosite]",
            });

            String dnsRule = getDnsOutboundFromOutbound(ruleTag, enableFakeIp);
            if (!setting.novice && setting.dns.enableRule) {
              String fakeip = dnsRule == kDnsTagFakeIp ? "-fakeip" : "";
              dnsOptions.rules.add({
                "rule_set": [getGeoSiteTag(rg.name)],
                "server": dnsRule,
                "disable_cache": dnsRule == kDnsTagBlock,
                "name": "${rg.name}[geosite][dns$fakeip]",
              });
            } else if (dnsRule == kDnsTagBlock) {
              dnsOptions.rules.add({
                "rule_set": [getGeoSiteTag(rg.name)],
                "server": dnsRule,
                "disable_cache": true,
                "name": "${rg.name}[geosite][dns]",
              });
            }
          }
        } else if (rg.groupid == ServerManager.getGeoIpGroupId()) {
          if (setting.ruleSets.enableGeoIp) {
            if (!geositeSetted) {
              geositeSetted = true;

              _rulesetAddGeosite(
                  regionCode, setting, geoSiteRuleSets, route, dnsOptions);
            }

            geoIpRuleSets.add(rg.name);
            route.rules.add({
              'rule_set': [getGeoIpTag(rg.name)],
              'outbound': ruleTag,
              "name": "${rg.name}[geoip]",
            });
          }
        } else if (rg.groupid == ServerManager.getAclGroupId()) {
          if (setting.ruleSets.enableAcl) {
            if (!geositeSetted) {
              geositeSetted = true;

              _rulesetAddGeosite(
                  regionCode, setting, geoSiteRuleSets, route, dnsOptions);
            }
            if (!geoipSetted) {
              geoipSetted = true;
              _rulesetAddGeoip(regionCode, setting, geoIpRuleSets, route);
            }
            aclRuleSets.add(rg.name);
            route.rules.add({
              'rule_set': [getAclTag(rg.name)],
              'outbound': ruleTag,
              "name": "${rg.name}[acl]",
            });

            String dnsRule = getDnsOutboundFromOutbound(ruleTag, enableFakeIp);
            if (!setting.novice && setting.dns.enableRule) {
              String fakeip = dnsRule == kDnsTagFakeIp ? "-fakeip" : "";
              dnsOptions.rules.add({
                "rule_set": [getAclTag(rg.name)],
                "server": dnsRule,
                "disable_cache": dnsRule == kDnsTagBlock,
                "name": "${rg.name}[acl][dns$fakeip]",
              });
            } else if (dnsRule == kDnsTagBlock) {
              dnsOptions.rules.add({
                "rule_set": [getAclTag(rg.name)],
                "server": dnsRule,
                "disable_cache": true,
                "name": "${rg.name}[acl][dns]",
              });
            }
          }
        } else {
          ServerConfigGroupItem? group = ServerManager.getByGroupId(rg.groupid);
          if (group == null || !group.enable) {
            continue;
          }
          if (group.groupid == ServerManager.getCustomGroupId()) {
            group.remark = t.meta.custom;
            /*if (setting.ruleSets.disableCustomDiversionGroup) {
              continue;
            }*/
            if (!group.enableDiversionRules) {
              continue;
            }
          } else {
            if (setting.ruleSets.disableISPDiversionGroup ||
                !group.enableDiversionRules) {
              continue;
            }
          }
          if (Platform.isAndroid) {
            rg.package.remove(AppUtils.getId());
          }
          if (PlatformUtils.isPC()) {
            rg.processName.remove(PathUtils.getExeName());
            rg.processName.remove(PathUtils.serviceExeName());
            for (int i = 0; i < rg.processPath.length; ++i) {
              if (rg.processPath.contains(PathUtils.getExeName())) {
                rg.processPath.removeAt(i);
                --i;
              }
            }
          }

          for (int i = 0; i < rg.domainSuffix.length; ++i) {
            if (rg.domainSuffix[i] == remoteConfig.host ||
                rg.domainSuffix[i].contains(hostSuffixfix) ||
                rg.domainSuffix[i].contains(remoteConfig.sentry)) {
              rg.domainSuffix.removeAt(i);
              --i;
            }
          }
          for (int i = 0; i < rg.domainKeyword.length; ++i) {
            if (rg.domainKeyword[i] == remoteConfig.host ||
                rg.domainKeyword[i].contains(hostSuffixfix) ||
                rg.domainKeyword[i].contains(remoteConfig.sentry)) {
              rg.domainKeyword.removeAt(i);
              --i;
            }
          }
          for (int i = 0; i < rg.domain.length; ++i) {
            if (rg.domain[i] == remoteConfig.host ||
                rg.domain[i].contains(hostSuffixfix) ||
                rg.domain[i].contains(remoteConfig.sentry)) {
              rg.domain.removeAt(i);
              --i;
            }
          }

          if (rg.domainSuffix.isNotEmpty ||
              rg.domainKeyword.isNotEmpty ||
              rg.domain.isNotEmpty ||
              rg.domainRegex.isNotEmpty ||
              rg.ipCidr.isNotEmpty ||
              rg.port.isNotEmpty ||
              rg.protocol.isNotEmpty ||
              rg.networkType.isNotEmpty ||
              rg.wifiSsid.isNotEmpty ||
              rg.wifiBssid.isNotEmpty ||
              rg.ruleSet.isNotEmpty ||
              rg.ruleSetBuildIn.isNotEmpty ||
              rg.package.isNotEmpty ||
              rg.processName.isNotEmpty ||
              rg.processPath.isNotEmpty ||
              rg.processDir.isNotEmpty) {
            String name = "${rg.name}[${group.remark}]";
            Map<String, List<dynamic>> rules = {};

            if (rg.domainSuffix.isNotEmpty) {
              rules["domain_suffix"] = rg.domainSuffix;
            }
            if (rg.domain.isNotEmpty) {
              rules["domain"] = rg.domain;
            }
            if (rg.domainKeyword.isNotEmpty) {
              rules["domain_keyword"] = rg.domainKeyword;
            }
            if (rg.domainRegex.isNotEmpty) {
              rules["domain_regex"] = rg.domainRegex;
            }
            if (rg.ipCidr.isNotEmpty) {
              rules["ip_cidr"] = rg.ipCidr;
            }
            if (rg.port.isNotEmpty) {
              rules["port"] = rg.port;
            }
            if (rg.protocol.isNotEmpty) {
              rules["protocol"] = rg.protocol;
            }
            if (rg.networkType.isNotEmpty) {
              rules["network_type"] = rg.networkType;
            }
            if (rg.wifiSsid.isNotEmpty) {
              rules["wifi_ssid"] = rg.wifiSsid;
            }
            if (rg.wifiBssid.isNotEmpty) {
              rules["wifi_bssid"] = rg.wifiBssid;
            }
            if (Platform.isAndroid) {
              if (rg.package.isNotEmpty) {
                rules["package_name"] = rg.package;
              }
            }
            if (PlatformUtils.isPC()) {
              if (rg.processName.isNotEmpty) {
                rules["process_name"] = rg.processName;
              }
              if (rg.processPath.isNotEmpty) {
                rules["process_path"] = rg.processPath;
              }
              if (rg.processDir.isNotEmpty) {
                rules["process_path_regex"] =
                    DiversionRulesGroup.appendProcessPathRegex(rg.processDir);
              }
            }

            List<String> rsets = [];
            if (rg.ruleSet.isNotEmpty) {
              for (var rs in rg.ruleSet) {
                if (rulesetsMap[rs] != null) {
                  if (rSets.contains(rs)) {
                    continue;
                  }
                  rSets.add(rs);
                  rsets.add(rs);
                }
              }
              if (rsets.isNotEmpty) {
                hasRuleSet = true;
                rules["rule_set"] = rsets;
              }
            }
            if (rg.ruleSetBuildIn.isNotEmpty) {
              for (var rs in rg.ruleSetBuildIn) {
                if (rSets.contains(rs)) {
                  continue;
                }
                rSets.add(rs);
                List<String> parts = rs.split(":");
                if (parts.length != 2) {
                  continue;
                }
                String value = parts[1].trim();

                switch (parts[0].trim()) {
                  case "geosite":
                    if (setting.ruleSets.enableGeoSite) {
                      if ((exportType != SingboxExportType.singbox) ||
                          setting.ruleSets.useRemoteGeoSite) {
                        if (sitecodesHashCode.contains(value.hashCode)) {
                          rsets.add(rs);
                          geoSiteRuleSets.add(value);
                        }
                      }
                    }
                    break;
                  case "geoip":
                    if (setting.ruleSets.enableGeoIp) {
                      if ((exportType != SingboxExportType.singbox) ||
                          setting.ruleSets.useRemoteGeoIp) {
                        if (ipcodesHashCode.contains(value.hashCode)) {
                          rsets.add(rs);
                          geoIpRuleSets.add(value);
                        }
                      }
                    }
                    break;
                  case "acl":
                    if (setting.ruleSets.enableAcl) {
                      if ((exportType != SingboxExportType.singbox) ||
                          setting.ruleSets.useRemoteAcl) {
                        if (aclcodesHashCode.contains(value.hashCode)) {
                          rsets.add(rs);
                          aclRuleSets.add(value);
                        }
                      }
                    }
                    break;
                }
              }
              if (rsets.isNotEmpty) {
                hasRuleSet = true;
                rules["rule_set"] = rsets;
              }
            }
            if (rules.isEmpty) {
              continue;
            }
            List<dynamic> ruleList = [];
            rules.forEach((k, v) => ruleList.add({k: v}));
            route.rules.add({
              "rules": ruleList,
              "outbound": ruleTag,
              "name": name,
              "type": "logical",
              "mode": rg.or ? "or" : "and",
            });

            rules.remove("ip_cidr");
            if (rules.isNotEmpty) {
              List<dynamic> ruleDNSList = [];
              rules.forEach((k, v) {
                if (k == "rule_set") {
                  var rule_sets = v as List<String>;
                  var rule_sets_no_geoip = [];
                  for (int i = 0; i < rule_sets.length; ++i) {
                    if (!rule_sets[i].startsWith("geoip")) {
                      rule_sets_no_geoip.add(rule_sets[i]);
                    }
                  }
                  if (rule_sets_no_geoip.isNotEmpty) {
                    ruleDNSList.add({k: rule_sets_no_geoip});
                  }
                } else {
                  ruleDNSList.add({k: v});
                }
              });
              if (ruleDNSList.isNotEmpty) {
                String dnsRule =
                    getDnsOutboundFromOutbound(ruleTag, enableFakeIp);
                if (!setting.novice && setting.dns.enableRule) {
                  String fakeip = dnsRule == kDnsTagFakeIp ? "-fakeip" : "";
                  dnsOptions.rules.add({
                    "rules": ruleDNSList,
                    "server": dnsRule,
                    "disable_cache": dnsRule == kDnsTagBlock,
                    "name": "$name[dns$fakeip]",
                    "type": "logical",
                    "mode": rg.or ? "or" : "and",
                  });
                } else if (dnsRule == kDnsTagBlock) {
                  dnsOptions.rules.add({
                    "rules": ruleDNSList,
                    "server": dnsRule,
                    "disable_cache": true,
                    "name": "$name[dns]",
                    "type": "logical",
                    "mode": rg.or ? "or" : "and",
                  });
                }
              }
            }
          }
        }
      }

      if (regionCode.isNotEmpty) {
        if (!geositeSetted) {
          geositeSetted = true;
          if (setting.ruleSets.autoAppendRegionGeoSite) {
            _rulesetAddGeosite(
                regionCode, setting, geoSiteRuleSets, route, dnsOptions);
          }
        }
        if (!geoipSetted) {
          geoipSetted = true;
          if (setting.ruleSets.autoAppendRegionGeoIp) {
            _rulesetAddGeoip(regionCode, setting, geoIpRuleSets, route);
          }
        }
      }

      var use = ServerManager.getUse();
      Uri? uriGeoSite = Uri.tryParse(remoteConfig.geosite);
      Uri? uriGeoIp = Uri.tryParse(remoteConfig.geoip);
      Uri? uriAcl = Uri.tryParse(remoteConfig.acl);
      String? downloadDetourGeoSite = uriGeoSite != null &&
              use.rulesetDirectDownload.contains(uriGeoSite.host)
          ? kOutboundTagDirect
          : tagCurrent;
      String? downloadDetourGeoIp =
          uriGeoIp != null && use.rulesetDirectDownload.contains(uriGeoIp.host)
              ? kOutboundTagDirect
              : tagCurrent;
      String? downloadDetourAcl =
          uriAcl != null && use.rulesetDirectDownload.contains(uriAcl.host)
              ? kOutboundTagDirect
              : tagCurrent;
      for (var rs in geoSiteRuleSets) {
        SingboxRouteRuleSetOptions option = SingboxRouteRuleSetOptions();
        option.tag = getGeoSiteTag(rs);
        option.format = "binary";
        if (geoSiteDir.isEmpty ||
            setting.ruleSets.useRemoteGeoSite ||
            (exportType != SingboxExportType.karing)) {
          option.type = "remote";
          option.url = "${remoteConfig.geosite}/$rs.srs";
          option.download_detour = downloadDetourGeoSite;
        } else {
          option.type = "local";
        }
        if (exportType == SingboxExportType.karing) {
          option.is_asset = Platform.isAndroid ? true : null;
          option.path = "flutter_assets/assets/datas/geosite/$rs.srs";
        }

        route.rule_set.add(option.toJson());
      }
      for (var rs in geoIpRuleSets) {
        SingboxRouteRuleSetOptions option = SingboxRouteRuleSetOptions();
        option.tag = getGeoIpTag(rs);
        option.format = "binary";
        if (geoIpDir.isEmpty ||
            setting.ruleSets.useRemoteGeoIp ||
            (exportType != SingboxExportType.karing)) {
          option.type = "remote";
          option.url = "${remoteConfig.geoip}/$rs.srs";
          option.download_detour = downloadDetourGeoIp;
        } else {
          option.type = "local";
        }
        if (exportType == SingboxExportType.karing) {
          option.is_asset = Platform.isAndroid ? true : null;
          option.path = "flutter_assets/assets/datas/geoip/$rs.srs";
        }

        route.rule_set.add(option.toJson());
      }
      for (var rs in aclRuleSets) {
        SingboxRouteRuleSetOptions option = SingboxRouteRuleSetOptions();
        option.tag = getAclTag(rs);
        option.format = "binary";
        if (aclDir.isEmpty ||
            setting.ruleSets.useRemoteAcl ||
            (exportType != SingboxExportType.karing)) {
          option.type = "remote";
          option.url = "${remoteConfig.acl}/$rs.srs";
          option.download_detour = downloadDetourAcl;
        } else {
          option.type = "local";
        }
        if (exportType == SingboxExportType.karing) {
          option.is_asset = Platform.isAndroid ? true : null;
          option.path = "flutter_assets/assets/datas/acl/$rs.srs";
        }

        route.rule_set.add(option.toJson());
      }
      if (hasRuleSet) {
        for (var rs in rulesets) {
          if (rs.url == null) {
            continue;
          }
          if (!rSets.contains(rs.tag)) {
            continue;
          }
          if (ruleSets.contains(rs.tag)) {
            continue;
          }
          ruleSets.add(rs.tag);

          Uri? uri = Uri.tryParse(rs.url!);
          SingboxRouteRuleSetOptions option = rs.clone();
          option.download_detour =
              uri != null && use.rulesetDirectDownload.contains(uri.host)
                  ? kOutboundTagDirect
                  : tagCurrent;

          route.rule_set.add(option.toJson());
        }
      }
    }

    if (enableFakeIp) {
      dnsOptions.rules.add({
        //"inbound": [SingboxInboundTunOptions.tag],
        "query_type": ["A", "AAAA"],
        "server": kDnsTagFakeIp,
        "rewrite_ttl": 1,
        "disable_cache": true,
        "name": "[dns-fakeip]",
      });
    }

    if (setting.privateDirect) {
      route.rules.add({
        "ip_is_private": true,
        "outbound": kOutboundTagDirect,
        "name": "ip_is_private",
      });
    }

    for (var server in dnsOptions.servers) {
      if (server.tag == kDnsTagProxy) {
        if (route.final_ == kOutboundTagDirect ||
            route.final_ == kOutboundTagBlock) {
          server.detour = kDnsDetourDirect;
        } else {
          server.detour = setting.dns.proxyResolveMode ==
                  SettingConfigItemDNSProxyResolveMode.direct
              ? kDnsDetourDirect
              : tagCurrent;
        }
      } else if (server.tag == kDnsTagFakeIp) {
        server.detour = null;
        server.address_resolver = null;
        /*if (route.final_ == kOutboundTagDirect ||
            route.final_ == kOutboundTagBlock) {
          server.detour = kOutboundTagDirect;
        } else {
          server.detour = route.final_;
        }*/
      }
      if (server.address == SettingConfigItemDNS.kDNSLocal ||
          server.address == SettingConfigItemDNS.kDNSDHCP) {
        server.detour = null;
        server.address_resolver = null;
      }
    }

    dnsOptions.final_ = getDnsOutboundFinalFromOutbound(route.final_);
    if (!setting.novice) {
      if (setting.dns.ttl.inSeconds > 0) {
        var ttl = setting.dns.ttl;
        if (ttl.inDays > 365) {
          ttl = const Duration(days: 365);
        }
        if (ttl.inSeconds < 5) {
          ttl = const Duration(seconds: 5);
        }
        for (var rule in dnsOptions.rules) {
          if (rule is Map) {
            if (rule["server"] != kDnsTagFakeIp) {
              rule["rewrite_ttl"] = ttl.inSeconds;
            }
          }
        }
      }
    }

    if (exportType == SingboxExportType.singbox) {
      for (var rule in dnsOptions.rules) {
        if (rule is Map) {
          rule.remove("name");
        }
      }
      for (var rule in route.rules) {
        if (rule is Map) {
          rule.remove("name");
        }
      }
    }

    return route;
  }

  static void optimizationOutboundsByRoute(List<dynamic> outbounds,
      Set<String> urltestCustomGroupTags, SingboxRoute route) {
    Set<String> obs = {};
    for (var r in route.rules) {
      if (r["outbound"] != null) {
        obs.add(r["outbound"]);
      }
    }
    for (int i = 0; i < outbounds.length; ++i) {
      var outbound = outbounds[i];
      if (outbound["type"] == kOutboundTypeUrltest) {
        var tag = outbound["tag"];
        if (tag != null) {
          if (!obs.contains(tag)) {
            outbounds[i]["interval"] = "-1s";
          }
        }
      }
    }
  }

  static String getOutboundFromCurrentSelector(
      bool proxyAll, dynamic selectOubbound, List<dynamic> outbounds) {
    late String tag;
    if (proxyAll) {
      if (selectOubbound != null) {
        tag = selectOubbound["tag"];
      } else {
        tag = kOutboundTagUrltest;
      }
    } else {
      if (selectOubbound != null) {
        tag = selectOubbound["tag"];
      } else {
        if (outbounds.isEmpty) {
          tag = kOutboundTagDirect;
        } else {
          tag = kOutboundTagUrltest;
        }
      }
    }
    return tag;
  }

  static String getGeoSiteTag(String rule) {
    return "geosite:$rule";
  }

  static String getGeoIpTag(String rule) {
    return "geoip:$rule";
  }

  static String getAclTag(String rule) {
    return "acl:$rule";
  }

  static String getDnsOutboundFromOutbound(
      String outbound, bool? dnsEnableFakeIp) {
    switch (outbound) {
      case kOutboundTagBlock:
        return kDnsTagBlock;
      case kOutboundTagDirect:
        return kDnsTagDirect;
    }

    if (dnsEnableFakeIp == true) {
      return kDnsTagFakeIp;
    }
    return kDnsTagProxy;
  }

  static String getDnsOutboundFinalFromOutbound(String outbound) {
    switch (outbound) {
      case kOutboundTagBlock:
        return kDnsTagBlock;
      case kOutboundTagDirect:
        return kDnsTagDirect;
    }

    return kDnsTagProxy;
  }

  static bool canBuildOutbound(ProxyConfig config) {
    if (config.raw == null) {
      return false;
    }
    if (config.raw is! Map) {
      return false;
    }
    return true;
  }

  static dynamic buildOutbound(ProxyConfig config) {
    if (!canBuildOutbound(config)) {
      return null;
    }
    //singbox导入的,老的数据可能存在raw里的tag和config里的tag没有同步的情况,这里订正一下
    if (config.raw["tag"] != config.tag) {
      config.raw["tag"] = config.tag;
    }

    var values = DeepCopyUtils.mapCopy(config.raw);
    values.remove("groupid");
    values.remove("ip");
    values.remove("attach");
    values.remove("latency");
    values.remove("outlet_ip");
    values.remove("outlet_region");

    return values;
  }

  static void _rulesetAddGeosite(
      String regionCode,
      SettingConfig setting,
      Set<String> geoSiteRuleSets,
      SingboxRoute route,
      SingboxDNSOptions dnsOptions) {
    if (regionCode.isNotEmpty) {
      if (setting.ruleSets.enableGeoSite) {
        if (SettingConfigItemRuleSets.hasGeoSiteData(regionCode)) {
          geoSiteRuleSets.add(regionCode);
          route.rules.add({
            'rule_set': [getGeoSiteTag(regionCode)],
            'outbound': kOutboundTagDirect,
            "name": "$regionCode[geosite]",
          });

          dnsOptions.rules.add({
            "rule_set": [getGeoSiteTag(regionCode)],
            "server": kDnsTagDirect,
            "name": "$regionCode[geosite][dns]",
          });
        }
      }
    }
  }

  static void _rulesetAddGeoip(String regionCode, SettingConfig setting,
      Set<String> geoIpRuleSets, SingboxRoute route) {
    if (regionCode.isNotEmpty) {
      if (setting.ruleSets.enableGeoIp) {
        geoIpRuleSets.add(regionCode);
        route.rules.add({
          'rule_set': [getGeoIpTag(regionCode)],
          'outbound': kOutboundTagDirect,
          "name": "$regionCode[geoip]",
        });
      }
    }
  }

  static String durationTo(Duration duration, String defaultInterval) {
    String interval = defaultInterval;
    List<String> dur = duration.toString().split(".")[0].split(":");
    if (dur.length == 3) {
      int h = int.parse(dur[0]);
      int m = int.parse(dur[1]);
      int s = int.parse(dur[2]);
      if (h != 0 || m != 0 || s != 0) {
        interval = "";
        if (h != 0) {
          interval += "${h}h";
        }
        if (m != 0) {
          interval += "${m}m";
        }
        if (s != 0) {
          interval += "${s}s";
        }
      }
    }
    return interval;
  }
}
