// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/convert_utils.dart';

import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/group_screen.dart';
import 'package:karing/screens/list_add_screen.dart';
import 'package:karing/screens/map_string_and_list_add_screen.dart';
import 'package:karing/screens/map_string_and_string_add_screen.dart';
import 'package:tuple/tuple.dart';

enum SingboxOutboundType {
  shadowsocks(name: "shadowsocks"),
  shadowsocksr(name: "shadowsocksr"),
  shadowtls(name: "shadowtls"),
  vmess(name: "vmess"),
  vless(name: "vless"),
  trojan(name: "trojan"),
  socks(name: "socks"),
  http(name: "http"),
  hysteria(name: "hysteria"),
  hysteria2(name: "hysteria2"),
  wireguard(name: "wireguard"),
  tuic(name: "tuic"),
  tor(name: "tor"),
  ssh(name: "ssh");

  const SingboxOutboundType({required this.name});
  final String name;
}

class SingboxJsonNetwork {
  static Map<String, List<dynamic>> getAttributes() {
    return {
      "network": ["", "tcp", "udp"],
    };
  }
}

class SingboxJsonServerOptions {
  String? server;
  int? server_port;

  SingboxJsonServerOptions({this.server, this.server_port});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (server != null && server!.isNotEmpty) {
      ret['server'] = server;
    }
    if (server_port != null) {
      ret['server_port'] = server_port;
    }
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    server = map["server"];
    server_port = map["server_port"];
  }

  bool isNotEmpty() {
    return server != null && server!.isNotEmpty && server_port != null;
  }

  String? getRequired() {
    if (server == null || server!.isEmpty) {
      return "server";
    }
    if (server_port == null || server_port == 0) {
      return "server_port";
    }
    return null;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    final tcontext = Translations.of(context);
    List<GroupItemOptions> options = [];
    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "server",
              text: server,
              textWidthPercent: 0.6,
              hint: tcontext.meta.required,
              onChanged: (String value) {
                server = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "server_port",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: server_port?.toString(),
              textWidthPercent: 0.6,
              hint: tcontext.meta.required,
              onChanged: (String value) {
                server_port = int.tryParse(value);
              })),
    ]);
    return [GroupItem(options: options)];
  }
}

//hiddify
class SingboxJsonTLSFragmentOptions {
  bool? enabled;
  String? size;
  String? sleep;

  SingboxJsonTLSFragmentOptions({this.enabled, this.size, this.sleep});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (enabled != null) {
      ret['enabled'] = enabled;
    }
    if (size != null && size!.isNotEmpty) {
      ret['size'] = size;
    }
    if (sleep != null && sleep!.isNotEmpty) {
      ret['sleep'] = sleep;
    }

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    enabled = map["enabled"];
    size = map["size"];
    sleep = map["sleep"];
  }

  static SingboxJsonTLSFragmentOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonTLSFragmentOptions options = SingboxJsonTLSFragmentOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];
    options.addAll([
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "enabled",
              switchValue: enabled,
              onSwitch: (bool value) async {
                enabled = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "size",
              text: size,
              hint: SettingConfigItemTLS.kFragmentSize,
              enabled: enabled,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                List<String> parts = value.split("-");
                if (parts.length == 1 || parts.length == 2) {
                  for (var p in parts) {
                    int? v = int.tryParse(p);
                    if (v == null) {
                      return;
                    }
                  }
                }
                size = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "sleep",
              text: sleep,
              hint: SettingConfigItemTLS.kFragmentSleep,
              enabled: enabled,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                List<String> parts = value.split("-");
                if (parts.length == 1 || parts.length == 2) {
                  for (var p in parts) {
                    int? v = int.tryParse(p);
                    if (v == null) {
                      return;
                    }
                  }
                }
                sleep = value;
              })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonTLSTricksOptions {
  bool? mixedcase_sni;
  String? padding_mode;
  String? padding_size;
  String? padding_sni;

  SingboxJsonTLSTricksOptions(
      {this.mixedcase_sni,
      this.padding_mode,
      this.padding_size,
      this.padding_sni});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (mixedcase_sni != null) {
      ret['mixedcase_sni'] = mixedcase_sni;
    }
    if (padding_mode != null && padding_mode!.isNotEmpty) {
      ret['padding_mode'] = padding_mode;
      if (padding_size != null && padding_size!.isNotEmpty) {
        ret['padding_size'] = padding_size;
      }
    }

    if (padding_sni != null && padding_sni!.isNotEmpty) {
      ret['padding_sni'] = padding_sni;
    }
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    mixedcase_sni = map["mixedcase_sni"];
    padding_mode = map["padding_mode"];
    padding_size = map["padding_size"];
    padding_sni = map["padding_sni"];
  }

  bool isNotEmpty() {
    return (mixedcase_sni == true) ||
        (padding_mode != null && padding_mode!.isNotEmpty) ||
        (padding_size != null && padding_size!.isNotEmpty) ||
        (padding_sni != null && padding_sni!.isNotEmpty);
  }

  static SingboxJsonTLSTricksOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonTLSTricksOptions options = SingboxJsonTLSTricksOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];
    options.addAll([
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "mixedcase_sni",
              switchValue: mixedcase_sni ?? false,
              onSwitch: (bool value) async {
                mixedcase_sni = value;
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "padding_mode",
              switchValue: padding_mode == "random",
              onSwitch: (bool value) async {
                padding_mode = value ? "random" : null;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "padding_size",
              text: padding_size,
              textWidthPercent: 0.6,
              hint: SettingConfigItemTLS.kPaddingSize,
              enabled: padding_mode == "random",
              onChanged: (String value) {
                List<String> parts = value.split("-");
                if (parts.length == 1 || parts.length == 2) {
                  for (var p in parts) {
                    int? v = int.tryParse(p);
                    if (v == null) {
                      return;
                    }
                  }
                }
                padding_size = value;
              })),
      /*GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "padding_sni",
              text: padding_sni,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                padding_sni = value;
              })),*/
    ]);
    return [GroupItem(options: options)];
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "padding_mode": ["", "random"],
    };
  }
}

//hiddify
class SingboxJsonTurnRelayOptions extends SingboxJsonServerOptions {
  //ServerOptions
  String? username;
  String? password;
  String? realm;

  SingboxJsonTurnRelayOptions(
      {super.server,
      super.server_port,
      this.username,
      this.password,
      this.realm});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    if (username != null && username!.isNotEmpty) {
      ret['username'] = username;
    }
    if (password != null && password!.isNotEmpty) {
      ret['password'] = password;
    }
    if (realm != null && realm!.isNotEmpty) {
      ret['realm'] = realm;
    }

    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    username = map["username"];
    password = map["password"];
    realm = map["realm"];
  }

  @override
  bool isNotEmpty() {
    if (super.isNotEmpty()) {
      return true;
    }
    return (username != null && username!.isNotEmpty) ||
        (password != null && password!.isNotEmpty) ||
        (realm != null && realm!.isNotEmpty);
  }

  static SingboxJsonTurnRelayOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonTurnRelayOptions options = SingboxJsonTurnRelayOptions();
    options.fromJson(map);
    return options;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];
    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "username",
              text: username,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                username = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                password = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "realm",
              text: realm,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                realm = value;
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonUDPOverTCPOptions {
  bool? enabled;
  int? version;

  SingboxJsonUDPOverTCPOptions({this.enabled, this.version});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (enabled != null) {
      ret['enabled'] = enabled;
    }
    if (version != null) {
      ret['version'] = version;
    }
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    enabled = map["enabled"];
    version = map["version"];
  }

  static SingboxJsonUDPOverTCPOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonUDPOverTCPOptions options = SingboxJsonUDPOverTCPOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "enabled",
              switchValue: enabled,
              onSwitch: (bool value) async {
                enabled = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "version",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: version?.toString(),
              textWidthPercent: 0.6,
              enabled: enabled,
              onChanged: (String value) {
                version = int.tryParse(value);
              })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonECHOptions {
  bool? enabled;
  bool? pq_signature_schemes_enabled;
  bool? dynamic_record_sizing_disabled;
  List<String>? config;
  String? config_path;

  SingboxJsonECHOptions(
      {this.enabled,
      this.pq_signature_schemes_enabled,
      this.dynamic_record_sizing_disabled,
      this.config,
      this.config_path});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (enabled != null) {
      ret['enabled'] = enabled;
    }
    if (pq_signature_schemes_enabled != null) {
      ret['pq_signature_schemes_enabled'] = pq_signature_schemes_enabled;
    }
    if (dynamic_record_sizing_disabled != null) {
      ret['dynamic_record_sizing_disabled'] = dynamic_record_sizing_disabled;
    }

    if (config != null && config!.isNotEmpty) {
      ret['config'] = config;
    }
    if (config_path != null && config_path!.isNotEmpty) {
      ret['config_path'] = config_path;
    }
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    enabled = map["enabled"];
    pq_signature_schemes_enabled = map["pq_signature_schemes_enabled"];
    dynamic_record_sizing_disabled = map["dynamic_record_sizing_disabled"];
    config = ConvertUtils.getListStringFromDynamic(map["config"], false, null);
    config_path = map["config_path"];
  }

  static SingboxJsonECHOptions? fromJsonStatic(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonECHOptions options = SingboxJsonECHOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "enabled",
              switchValue: enabled,
              onSwitch: (bool value) async {
                enabled = value;
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "pq_signature_schemes_enabled",
              switchValue: pq_signature_schemes_enabled,
              onSwitch: enabled != true
                  ? null
                  : (bool value) async {
                      pq_signature_schemes_enabled = value;
                    })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "dynamic_record_sizing_disabled",
              switchValue: dynamic_record_sizing_disabled,
              onSwitch: enabled != true
                  ? null
                  : (bool value) async {
                      dynamic_record_sizing_disabled = value;
                    })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "config",
              onPush: enabled != true
                  ? null
                  : () async {
                      config ??= [];
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: ListAddScreen.routSettings("config"),
                              builder: (context) => ListAddScreen(
                                    title: "config",
                                    data: config!,
                                  )));
                    })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "config_path",
              text: config_path,
              textWidthPercent: 0.6,
              enabled: enabled,
              onChanged: (String value) {
                config_path = value;
              })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonUtlsOptions {
  bool? enabled;
  String? fingerprint;

  SingboxJsonUtlsOptions({this.enabled, this.fingerprint});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (enabled != null) {
      ret['enabled'] = enabled;
    }
    if (fingerprint != null) {
      ret['fingerprint'] = fingerprint;
    }

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    enabled = map["enabled"];
    fingerprint = map["fingerprint"];
  }

  static SingboxJsonUtlsOptions? fromJsonStatic(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonUtlsOptions options = SingboxJsonUtlsOptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "fingerprint": [
        "",
        "chrome",
        "chrome_psk",
        "chrome_psk_shuffle",
        "chrome_padding_psk_shuffle",
        "chrome_pq",
        "chrome_pq_psk",
        "firefox",
        "edge",
        "safari",
        "360",
        "qq",
        "ios",
        "android",
        "random",
        "randomized",
      ]
    };
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "enabled",
              switchValue: enabled,
              onSwitch: (bool value) async {
                enabled = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "fingerprint",
              selected: fingerprint,
              strings: getAttributes()["fingerprint"]!.cast<String>(),
              onPicker: enabled != true
                  ? null
                  : (String? selected) async {
                      fingerprint = selected;
                    }))
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonTransportWSOptions {
  String? path;
  Map<String, List<String>>? headers;
  int? max_early_data;
  String? early_data_header_name;

  SingboxJsonTransportWSOptions(
      {this.path,
      this.headers,
      this.max_early_data,
      this.early_data_header_name});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (path != null && path!.isNotEmpty) {
      ret['path'] = path;
    }
    if (headers != null && headers!.isNotEmpty) {
      ret['headers'] = headers;
    }
    if (max_early_data != null) {
      ret['max_early_data'] = max_early_data;
    }
    if (early_data_header_name != null && early_data_header_name!.isNotEmpty) {
      ret['early_data_header_name'] = early_data_header_name;
    }

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    path = map["path"];
    var head = map["headers"];
    if (head != null && head!.isNotEmpty) {
      headers = {};
      head.forEach((key, value) {
        if (value is String) {
          headers![key] = [value];
        } else if (value is List) {
          headers![key] = value.cast<String>();
        }
      });
    }
    max_early_data = map["max_early_data"];
    early_data_header_name = map["early_data_header_name"];
  }

  bool isNotEmpty() {
    return (path != null && path!.isNotEmpty) ||
        (headers != null && headers!.isNotEmpty) ||
        (max_early_data != null) ||
        (early_data_header_name != null && early_data_header_name!.isNotEmpty);
  }

  static SingboxJsonTransportWSOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonTransportWSOptions options = SingboxJsonTransportWSOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "path",
              text: path,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                path = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "headers",
              onPush: () async {
                headers ??= {};
                List<Tuple2<String, List<String>>> hs = [];
                headers!.forEach((key, value) {
                  hs.add(Tuple2(key, value));
                });
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: MapStringAndListAddScreen.routSettings(),
                        builder: (context) => MapStringAndListAddScreen(
                              title: "headers",
                              data: hs,
                            )));
                headers!.clear();
                for (var h in hs) {
                  headers![h.item1] = h.item2;
                }
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "max_early_data",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: max_early_data?.toString(),
              textWidthPercent: 0.6,
              onChanged: (String value) {
                max_early_data = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "early_data_header_name",
              text: early_data_header_name,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                early_data_header_name = value;
              })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonTransportHTTPOptions {
  List<String>? host;
  String? method;
  String? path;
  Map<String, List<String>>? headers;

  SingboxJsonTransportHTTPOptions({this.method, this.path, this.headers});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (host != null && host!.isNotEmpty) {
      ret['host'] = host;
    }
    if (method != null && method!.isNotEmpty) {
      ret['method'] = method;
    }
    if (path != null && path!.isNotEmpty) {
      ret['path'] = path;
    }
    if (headers != null && headers!.isNotEmpty) {
      ret['headers'] = headers;
    }

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    method = map["method"];
    path = map["path"];
    var head = map["headers"];
    if (head != null && head!.isNotEmpty) {
      headers = {};
      head.forEach((key, value) {
        if (value is String) {
          headers![key] = [value];
        } else if (value is List) {
          headers![key] = value.cast<String>();
        }
      });
    }
  }

  bool isNotEmpty() {
    return (method != null && method!.isNotEmpty) ||
        (path != null && path!.isNotEmpty) ||
        (headers != null && headers!.isNotEmpty);
  }

  static SingboxJsonTransportHTTPOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonTransportHTTPOptions options = SingboxJsonTransportHTTPOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "host",
              onPush: () async {
                host ??= [];
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: ListAddScreen.routSettings("host"),
                        builder: (context) => ListAddScreen(
                              title: "host",
                              data: host!,
                            )));
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "method",
              text: method,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                method = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "path",
              text: path,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                path = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "headers",
              onPush: () async {
                headers ??= {};
                List<Tuple2<String, List<String>>> hs = [];
                headers!.forEach((key, value) {
                  hs.add(Tuple2(key, value));
                });
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: MapStringAndListAddScreen.routSettings(),
                        builder: (context) => MapStringAndListAddScreen(
                              title: "headers",
                              data: hs,
                            )));
                headers!.clear();
                for (var h in hs) {
                  headers![h.item1] = h.item2;
                }
              })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonTransportHttpUpgradeOptions {
  String? host;
  String? path;
  Map<String, List<String>>? headers;

  SingboxJsonTransportHttpUpgradeOptions({this.host, this.path, this.headers});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (host != null && host!.isNotEmpty) {
      ret['host'] = host;
    }
    if (path != null && path!.isNotEmpty) {
      ret['path'] = path;
    }
    if (headers != null && headers!.isNotEmpty) {
      ret['headers'] = headers;
    }
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    host = map["host"];
    path = map["path"];
    var head = map["headers"];
    if (head != null && head!.isNotEmpty) {
      headers = {};
      head.forEach((key, value) {
        if (value is String) {
          headers![key] = [value];
        } else if (value is List) {
          headers![key] = value.cast<String>();
        }
      });
    }
  }

  bool isNotEmpty() {
    return (host != null && host!.isNotEmpty) ||
        (path != null && path!.isNotEmpty) ||
        (headers != null && headers!.isNotEmpty);
  }

  static SingboxJsonTransportHttpUpgradeOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonTransportHttpUpgradeOptions options =
        SingboxJsonTransportHttpUpgradeOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "host",
              text: host,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                host = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "path",
              text: path,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                path = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "headers",
              onPush: () async {
                headers ??= {};
                List<Tuple2<String, List<String>>> hs = [];
                headers!.forEach((key, value) {
                  hs.add(Tuple2(key, value));
                });
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: MapStringAndListAddScreen.routSettings(),
                        builder: (context) => MapStringAndListAddScreen(
                              title: "headers",
                              data: hs,
                            )));
                headers!.clear();
                for (var h in hs) {
                  headers![h.item1] = h.item2;
                }
              })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonTransportQuicOptions {
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
  }

  bool isNotEmpty() {
    return false;
  }

  static SingboxJsonTransportQuicOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonTransportQuicOptions options = SingboxJsonTransportQuicOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];
    return [GroupItem(options: options)];
  }
}

class SingboxJsonTransportGRPCOptions {
  String? service_name;
  bool? permit_without_stream;

  SingboxJsonTransportGRPCOptions({this.service_name});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (service_name != null && service_name!.isNotEmpty) {
      ret['service_name'] = service_name;
    }
    if (permit_without_stream != null) {
      ret['permit_without_stream'] = permit_without_stream;
    }
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    service_name = map["service_name"];
    permit_without_stream = map["permit_without_stream"];
  }

  bool isNotEmpty() {
    return (service_name != null && service_name!.isNotEmpty ||
        permit_without_stream != null);
  }

  static SingboxJsonTransportGRPCOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonTransportGRPCOptions options = SingboxJsonTransportGRPCOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "service_name",
              text: service_name,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                service_name = value;
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "permit_without_stream",
              switchValue: permit_without_stream,
              onSwitch: (bool value) async {
                permit_without_stream = value;
              })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonRealityOptions {
  bool? enabled;
  String? public_key;
  String? short_id;

  SingboxJsonRealityOptions({this.enabled, this.public_key, this.short_id});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};

    if (enabled != null) {
      ret['enabled'] = enabled;
    }
    if (public_key != null && public_key!.isNotEmpty) {
      ret['public_key'] = public_key;
    }
    if (short_id != null && short_id!.isNotEmpty) {
      ret['short_id'] = short_id;
    }
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    enabled = map["enabled"];
    public_key = map["public_key"];
    short_id = map["short_id"];
  }

  static SingboxJsonRealityOptions? fromJsonStatic(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonRealityOptions options = SingboxJsonRealityOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "enabled",
              switchValue: enabled,
              onSwitch: (bool value) async {
                enabled = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "public_key",
              text: public_key,
              textWidthPercent: 0.6,
              enabled: enabled,
              onChanged: enabled != true
                  ? null
                  : (String value) {
                      public_key = value;
                    })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "short_id",
              text: short_id,
              textWidthPercent: 0.6,
              enabled: enabled,
              onChanged: enabled != true
                  ? null
                  : (String value) {
                      short_id = value;
                    })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonTLSOptions {
  bool? enabled;
  bool? disable_sni;
  String? server_name;
  bool? insecure;
  List<String>? alpn;
  String? min_version;
  String? max_version;
  List<String>? cipher_suites;
  List<String>? certificate;
  String? certificate_path;
  SingboxJsonECHOptions? ech;
  SingboxJsonUtlsOptions? utls;
  SingboxJsonRealityOptions? reality;
  SingboxJsonTLSTricksOptions? tls_tricks; //hiddify

  SingboxJsonTLSOptions(
      {this.enabled,
      this.disable_sni,
      this.server_name,
      this.insecure,
      this.alpn,
      this.min_version,
      this.max_version,
      this.cipher_suites,
      this.certificate,
      this.certificate_path,
      this.ech,
      this.utls,
      this.reality,
      this.tls_tricks});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (enabled != null) {
      ret['enabled'] = enabled;
    }
    if (disable_sni != null) {
      ret['disable_sni'] = disable_sni;
    }
    if (server_name != null && server_name!.isNotEmpty) {
      ret['server_name'] = server_name;
    }
    if (insecure != null) {
      ret['insecure'] = insecure;
    }
    if (alpn != null && alpn!.isNotEmpty) {
      ret['alpn'] = alpn;
    }
    if (min_version != null && min_version!.isNotEmpty) {
      ret['min_version'] = min_version;
    }
    if (max_version != null && max_version!.isNotEmpty) {
      ret['max_version'] = max_version;
    }
    if (cipher_suites != null && cipher_suites!.isNotEmpty) {
      ret['cipher_suites'] = cipher_suites;
    }
    if (certificate != null && certificate!.isNotEmpty) {
      ret['certificate'] = certificate;
    }
    if (certificate_path != null && certificate_path!.isNotEmpty) {
      ret['certificate_path'] = certificate_path;
    }
    if (ech != null && ech!.enabled == true) {
      ret['ech'] = ech!.toJson();
    }
    if (utls != null && utls!.enabled == true) {
      ret['utls'] = utls!.toJson();
    }
    if (reality != null && reality!.enabled == true) {
      ret['reality'] = reality!.toJson();
    }
    if (tls_tricks != null && tls_tricks!.isNotEmpty()) {
      ret['tls_tricks'] = tls_tricks!.toJson();
    }

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    enabled = map["enabled"];
    disable_sni = map["disable_sni"];
    server_name = map["server_name"];
    insecure = map["insecure"];
    alpn = ConvertUtils.getListStringFromDynamic(map["alpn"], false, null);
    min_version = map["min_version"];
    max_version = map["max_version"];
    cipher_suites = ConvertUtils.getListStringFromDynamic(
        map["cipher_suites"], false, null);
    certificate =
        ConvertUtils.getListStringFromDynamic(map["certificate"], false, null);
    certificate_path = map["certificate_path"];

    ech = SingboxJsonECHOptions.fromJsonStatic(map["ech"]);
    utls = SingboxJsonUtlsOptions.fromJsonStatic(map["utls"]);
    reality = SingboxJsonRealityOptions.fromJsonStatic(map["reality"]);
    tls_tricks = SingboxJsonTLSTricksOptions.fromJsonStatic(map["tls_tricks"]);
  }

  static SingboxJsonTLSOptions? fromJsonStatic(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonTLSOptions options = SingboxJsonTLSOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "enabled",
              switchValue: enabled,
              onSwitch: (bool value) async {
                enabled = value;
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "disable_sni",
              switchValue: disable_sni,
              onSwitch: enabled != true
                  ? null
                  : (bool value) async {
                      disable_sni = value;
                    })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "server_name",
              text: server_name,
              textWidthPercent: 0.6,
              enabled: enabled,
              onChanged: (String value) {
                server_name = value;
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "insecure",
              switchValue: insecure,
              onSwitch: enabled != true
                  ? null
                  : (bool value) async {
                      insecure = value;
                    })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "alpn",
              onPush: enabled != true
                  ? null
                  : () async {
                      alpn ??= [];
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: ListAddScreen.routSettings("alpn"),
                              builder: (context) => ListAddScreen(
                                    title: "alpn",
                                    data: alpn!,
                                  )));
                    })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "min_version",
              selected: min_version,
              strings: getAttributes()["tls_version"]!.cast<String>(),
              onPicker: (String? selected) async {
                min_version = selected;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "max_version",
              selected: max_version,
              strings: getAttributes()["tls_version"]!.cast<String>(),
              onPicker: (String? selected) async {
                max_version = selected;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "cipher_suites",
              onPush: enabled != true
                  ? null
                  : () async {
                      cipher_suites ??= [];
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings:
                                  ListAddScreen.routSettings("cipher_suites"),
                              builder: (context) => ListAddScreen(
                                    title: "cipher_suites",
                                    data: cipher_suites!,
                                  )));
                    })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "certificate",
              onPush: enabled != true
                  ? null
                  : () async {
                      certificate ??= [];
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings:
                                  ListAddScreen.routSettings("certificate"),
                              builder: (context) => ListAddScreen(
                                    title: "certificate",
                                    data: certificate!,
                                  )));
                      for (int i = 0; i < certificate!.length; ++i) {
                        certificate![i] = certificate![i]
                            .replaceAll("\r", "\n")
                            .replaceAll("\n\n", "\n");
                      }
                    })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "certificate_path",
              text: certificate_path,
              textWidthPercent: 0.6,
              enabled: enabled,
              onChanged: (String value) {
                certificate_path = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "ech",
              onPush: enabled != true
                  ? null
                  : () async {
                      ech ??= SingboxJsonECHOptions();

                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: GroupScreen.routSettings("ech"),
                              builder: (context) => GroupScreen(
                                    title: "ech",
                                    getOptions: ech!.getWidgetOptions,
                                  )));
                    })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "utls",
              onPush: enabled != true
                  ? null
                  : () async {
                      utls ??= SingboxJsonUtlsOptions();

                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: GroupScreen.routSettings("utls"),
                              builder: (context) => GroupScreen(
                                    title: "utls",
                                    getOptions: utls!.getWidgetOptions,
                                  )));
                    })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "reality",
              onPush: enabled != true
                  ? null
                  : () async {
                      reality ??= SingboxJsonRealityOptions();
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: GroupScreen.routSettings("reality"),
                              builder: (context) => GroupScreen(
                                    title: "reality",
                                    getOptions: reality!.getWidgetOptions,
                                  )));
                    })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "tls_tricks",
              onPush: enabled != true
                  ? null
                  : () async {
                      tls_tricks ??= SingboxJsonTLSTricksOptions();
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              settings: GroupScreen.routSettings("tls_tricks"),
                              builder: (context) => GroupScreen(
                                    title: "tls_tricks",
                                    getOptions: tls_tricks!.getWidgetOptions,
                                  )));
                    })),
    ]);
    return [GroupItem(options: options)];
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "tls_version": ["", "1.0", "1.1", "1.2", "1.3"],
      "cipher_suites": [
        "TLS_RSA_WITH_AES_128_CBC_SHA",
        "TLS_RSA_WITH_AES_256_CBC_SHA",
        "TLS_RSA_WITH_AES_128_GCM_SHA256",
        "TLS_RSA_WITH_AES_256_GCM_SHA384",
        "TLS_AES_128_GCM_SHA256",
        "TLS_AES_256_GCM_SHA384",
        "TLS_CHACHA20_POLY1305_SHA256",
        "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA",
        "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA",
        "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA",
        "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA",
        "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256",
        "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384",
        "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256",
        "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384",
        "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256",
        "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"
      ],
    };
  }
}

class SingboxJsonTransportOptions {
  String? type;

  SingboxJsonTransportWSOptions? ws_opts;
  SingboxJsonTransportHTTPOptions? http_opts;
  SingboxJsonTransportGRPCOptions? grpc_opts;
  SingboxJsonTransportQuicOptions? quic_opts;
  SingboxJsonTransportHttpUpgradeOptions? httpupgrade_opts;

  SingboxJsonTransportOptions({
    this.type,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (type != null && type!.isNotEmpty) {
      ret['type'] = type;
    }

    if (ws_opts != null) {
      ret.addAll(ws_opts!.toJson());
    }
    if (http_opts != null) {
      ret.addAll(http_opts!.toJson());
    }
    if (grpc_opts != null) {
      ret.addAll(grpc_opts!.toJson());
    }
    if (quic_opts != null) {
      ret.addAll(quic_opts!.toJson());
    }
    if (httpupgrade_opts != null) {
      ret.addAll(httpupgrade_opts!.toJson());
    }
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    type = map["type"];
    switch (type) {
      case "http":
        http_opts = SingboxJsonTransportHTTPOptions.fromJsonStatic(map);
        break;
      case "ws":
        ws_opts = SingboxJsonTransportWSOptions.fromJsonStatic(map);
        break;
      case "quic":
        quic_opts = SingboxJsonTransportQuicOptions.fromJsonStatic(map);
        break;
      case "grpc":
        grpc_opts = SingboxJsonTransportGRPCOptions.fromJsonStatic(map);
        break;
      case "httpupgrade":
        httpupgrade_opts =
            SingboxJsonTransportHttpUpgradeOptions.fromJsonStatic(map);
        break;
    }
  }

  static SingboxJsonTransportOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonTransportOptions options = SingboxJsonTransportOptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "type": ["http", "ws", "quic", "grpc", "httpupgrade"]
    };
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "type",
              selected: type,
              strings: getAttributes()["type"]!.cast<String>(),
              onPicker: (String? selected) async {
                type = selected;

                switch (type) {
                  case "http":
                    ws_opts = null;
                    http_opts ??= SingboxJsonTransportHTTPOptions();
                    grpc_opts = null;
                    quic_opts = null;
                    httpupgrade_opts = null;
                    break;
                  case "ws":
                    ws_opts ??= SingboxJsonTransportWSOptions();
                    http_opts = null;
                    grpc_opts = null;
                    quic_opts = null;
                    httpupgrade_opts = null;
                    break;
                  case "quic":
                    ws_opts = null;
                    http_opts = null;
                    grpc_opts = null;
                    quic_opts ??= SingboxJsonTransportQuicOptions();
                    httpupgrade_opts = null;
                    break;
                  case "grpc":
                    ws_opts = null;
                    http_opts = null;
                    grpc_opts ??= SingboxJsonTransportGRPCOptions();
                    quic_opts = null;
                    httpupgrade_opts = null;
                    break;
                  case "httpupgrade":
                    ws_opts = null;
                    http_opts = null;
                    grpc_opts = null;
                    quic_opts = null;
                    httpupgrade_opts ??=
                        SingboxJsonTransportHttpUpgradeOptions();
                    break;
                }
              })),
      http_opts != null
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "http",
                  onPush: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("http"),
                            builder: (context) => GroupScreen(
                                  title: "http",
                                  getOptions: http_opts!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
      ws_opts != null
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "ws",
                  onPush: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("ws"),
                            builder: (context) => GroupScreen(
                                  title: "ws",
                                  getOptions: ws_opts!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
      grpc_opts != null
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "grpc",
                  onPush: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("grpc"),
                            builder: (context) => GroupScreen(
                                  title: "grpc",
                                  getOptions: grpc_opts!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
      httpupgrade_opts != null
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "httpupgrade",
                  onPush: () async {
                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("httpupgrade"),
                            builder: (context) => GroupScreen(
                                  title: "httpupgrade",
                                  getOptions:
                                      httpupgrade_opts!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonMultiplexOptions {
  bool? enabled;
  String? protocol;
  int? max_connections;
  int? min_streams;
  int? max_streams;
  bool? padding;

  SingboxJsonMultiplexOptions(
      {this.enabled,
      this.protocol,
      this.max_connections,
      this.min_streams,
      this.max_streams,
      this.padding});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (enabled != null) {
      ret['enabled'] = enabled;
    }
    if (protocol != null && protocol!.isNotEmpty) {
      ret['protocol'] = protocol;
    }
    if (max_connections != null) {
      ret['max_connections'] = max_connections;
    }
    if (min_streams != null) {
      ret['min_streams'] = min_streams;
    }
    if (max_streams != null) {
      ret['max_streams'] = max_streams;
    }
    if (padding != null) {
      ret['padding'] = padding;
    }

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    enabled = map["enabled"];
    protocol = map["protocol"];
    max_connections = map["max_connections"];
    min_streams = map["min_streams"];
    max_streams = map["max_streams"];
    padding = map["padding"];
  }

  static SingboxJsonMultiplexOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonMultiplexOptions options = SingboxJsonMultiplexOptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "protocol": [
        "",
        "smux",
        "yamux",
        "h2mux",
      ]
    };
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "enabled",
              switchValue: enabled,
              onSwitch: (bool value) async {
                enabled = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "protocol",
              selected: protocol,
              strings: getAttributes()["protocol"]!.cast<String>(),
              onPicker: enabled != true
                  ? null
                  : (String? selected) async {
                      protocol = selected;
                    })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "max_connections",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: max_connections?.toString(),
              textWidthPercent: 0.6,
              enabled: enabled,
              onChanged: (String value) {
                max_connections = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "min_streams",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: min_streams?.toString(),
              textWidthPercent: 0.6,
              enabled: enabled,
              onChanged: (String value) {
                min_streams = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "max_streams",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: max_streams?.toString(),
              textWidthPercent: 0.6,
              enabled: enabled,
              onChanged: (String value) {
                max_streams = int.tryParse(value);
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "padding",
              switchValue: padding,
              onSwitch: enabled != true
                  ? null
                  : (bool value) async {
                      padding = value;
                    })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonObfsHysteria2Options {
  String? password;
  String? type;

  SingboxJsonObfsHysteria2Options({this.password, this.type});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (password != null && password!.isNotEmpty) {
      ret['password'] = password;
    }
    if (type != null && type!.isNotEmpty) {
      ret['type'] = type;
    }

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    password = map["password"];
    type = map["type"];
  }

  bool isNotEmpty() {
    return (password != null && password!.isNotEmpty) ||
        (type != null && type!.isNotEmpty);
  }

  static SingboxJsonObfsHysteria2Options? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonObfsHysteria2Options options = SingboxJsonObfsHysteria2Options();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "type",
              text: type,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                type = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                password = value;
              })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonOutboundSocksOptions extends SingboxJsonServerOptions {
  String? version;
  String? username;
  String? password;
  String? network;
  SingboxJsonUDPOverTCPOptions? udp_over_tcp;

  SingboxJsonOutboundSocksOptions(
      {this.version,
      this.username,
      this.password,
      this.network,
      this.udp_over_tcp});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    if (version != null && version!.isNotEmpty) {
      ret['version'] = version;
    }
    if (username != null && username!.isNotEmpty) {
      ret['username'] = username;
    }
    if (password != null && password!.isNotEmpty) {
      ret['password'] = password;
    }
    if (network != null && network!.isNotEmpty) {
      ret['network'] = network;
    }
    if (udp_over_tcp != null && udp_over_tcp!.enabled == true) {
      ret['udp_over_tcp'] = udp_over_tcp!.toJson();
    }
    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    version = map["version"];
    username = map["username"];
    password = map["password"];
    network = map["network"];
    udp_over_tcp =
        SingboxJsonUDPOverTCPOptions.fromJsonStatic(map["udp_over_tcp"]);
  }

  @override
  bool isNotEmpty() {
    if (super.isNotEmpty()) {
      return true;
    }
    return (username != null && username!.isNotEmpty) ||
        (password != null && password!.isNotEmpty) ||
        (version != null && version!.isNotEmpty) ||
        (network != null && network!.isNotEmpty) ||
        (udp_over_tcp != null && udp_over_tcp!.enabled == true);
  }

  static SingboxJsonOutboundSocksOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundSocksOptions options = SingboxJsonOutboundSocksOptions();
    options.fromJson(map);
    return options;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "version",
              text: version,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                version = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "username",
              text: username,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                username = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                password = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "network",
              selected: network,
              strings:
                  SingboxJsonNetwork.getAttributes()["network"]!.cast<String>(),
              onPicker: (String? selected) async {
                network = selected;
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundHTTPOptions extends SingboxJsonServerOptions {
  String? username;
  String? password;
  String? path;
  Map<String, List<String>>? headers;
  SingboxJsonTLSFragmentOptions? tls_fragment;
  SingboxJsonTLSOptions? tls;

  SingboxJsonOutboundHTTPOptions(
      {this.username, this.password, this.tls, this.path});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    if (username != null && username!.isNotEmpty) {
      ret['username'] = username;
    }
    if (password != null && password!.isNotEmpty) {
      ret['password'] = password;
    }
    if (path != null && path!.isNotEmpty) {
      ret['path'] = path;
    }
    if (tls != null && tls!.enabled == true) {
      ret['tls'] = tls!.toJson();
    }
    if (tls_fragment != null && tls_fragment!.enabled == true) {
      ret['tls_fragment'] = tls_fragment!.toJson();
    }
    if (headers != null && headers!.isNotEmpty) {
      ret['headers'] = headers;
    }
    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    username = map["username"];
    password = map["password"];
    path = map["path"];
    tls = SingboxJsonTLSOptions.fromJsonStatic(map["tls"]);
    tls_fragment =
        SingboxJsonTLSFragmentOptions.fromJsonStatic(map["tls_fragment"]);
    var head = map["headers"];
    if (head != null && head!.isNotEmpty) {
      headers = {};
      head.forEach((key, value) {
        if (value is String) {
          headers![key] = [value];
        } else if (value is List) {
          headers![key] = value.cast<String>();
        }
      });
    }
  }

  @override
  bool isNotEmpty() {
    if (super.isNotEmpty()) {
      return true;
    }
    return (username != null && username!.isNotEmpty) ||
        (password != null && password!.isNotEmpty) ||
        (path != null && path!.isNotEmpty) ||
        (tls != null && tls!.enabled == true);
  }

  static SingboxJsonOutboundHTTPOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundHTTPOptions options = SingboxJsonOutboundHTTPOptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "network": ["", "tcp", "udp"],
    };
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "username",
              text: username,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                username = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                password = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "path",
              text: path,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                path = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "headers",
              onPush: () async {
                headers ??= {};
                List<Tuple2<String, List<String>>> hs = [];
                headers!.forEach((key, value) {
                  hs.add(Tuple2(key, value));
                });
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: MapStringAndListAddScreen.routSettings(),
                        builder: (context) => MapStringAndListAddScreen(
                              title: "headers",
                              data: hs,
                            )));
                headers!.clear();
                for (var h in hs) {
                  headers![h.item1] = h.item2;
                }
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "tls",
              onPush: () async {
                tls ??= SingboxJsonTLSOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("tls"),
                        builder: (context) => GroupScreen(
                              title: "tls",
                              getOptions: tls!.getWidgetOptions,
                            )));
              })),
      tls != null && tls!.enabled == true
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "tls_fragment",
                  onPush: () async {
                    tls_fragment ??= SingboxJsonTLSFragmentOptions();

                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("tls_fragment"),
                            builder: (context) => GroupScreen(
                                  title: "tls_fragment",
                                  getOptions: tls_fragment!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundShadowsocksOptions extends SingboxJsonServerOptions {
  String method = "";
  String password = "";
  String? plugin;
  String? plugin_opts;
  String? network;
  SingboxJsonUDPOverTCPOptions? udp_over_tcp;
  SingboxJsonMultiplexOptions? multiplex;

  SingboxJsonOutboundShadowsocksOptions(
      {this.method = "",
      this.password = "",
      this.plugin,
      this.plugin_opts,
      this.network,
      this.udp_over_tcp,
      this.multiplex});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    ret['method'] = method;
    ret['password'] = password;
    if (plugin != null && plugin!.isNotEmpty) {
      ret['plugin'] = plugin;
    }
    if (plugin_opts != null && plugin_opts!.isNotEmpty) {
      ret['plugin_opts'] = plugin_opts;
    }
    if (network != null && network!.isNotEmpty) {
      ret['network'] = network;
    }
    if (udp_over_tcp != null && udp_over_tcp!.enabled == true) {
      ret['udp_over_tcp'] = udp_over_tcp!.toJson();
    }
    if (multiplex != null && multiplex!.enabled == true) {
      ret['multiplex'] = multiplex!.toJson();
    }
    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    method = map["method"];
    password = map["password"];
    plugin = map["plugin"];
    plugin_opts = map["plugin_opts"];
    network = map["network"];
    udp_over_tcp =
        SingboxJsonUDPOverTCPOptions.fromJsonStatic(map["udp_over_tcp"]);
    multiplex = SingboxJsonMultiplexOptions.fromJsonStatic(map["multiplex"]);
  }

  @override
  bool isNotEmpty() {
    if (super.isNotEmpty()) {
      return true;
    }
    return (method.isNotEmpty) ||
        (password.isNotEmpty) ||
        (plugin != null && plugin!.isNotEmpty) ||
        (plugin_opts != null && plugin_opts!.isNotEmpty) ||
        (network != null && network!.isNotEmpty) ||
        (udp_over_tcp != null && udp_over_tcp!.enabled == true) ||
        (multiplex != null && multiplex!.enabled == true);
  }

  static SingboxJsonOutboundShadowsocksOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundShadowsocksOptions options =
        SingboxJsonOutboundShadowsocksOptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "method": [
        "2022-blake3-aes-128-gcm",
        "2022-blake3-aes-256-gcm",
        "2022-blake3-chacha20-poly1305",
        "none",
        "aes-128-gcm",
        "aes-192-gcm",
        "aes-256-gcm",
        "chacha20-ietf-poly1305",
        "xchacha20-ietf-poly1305",
        "aes-128-ctr",
        "aes-192-ctr",
        "aes-256-ctr",
        "aes-128-cfb",
        "aes-192-cfb",
        "aes-256-cfb",
        "rc4-md5",
        "chacha20-ietf",
        "xchacha20"
      ],
    };
  }

  @override
  String? getRequired() {
    String? ret = super.getRequired();
    if (ret != null) {
      return ret;
    }
    if (method.isEmpty) {
      return "method";
    }
    if (password.isEmpty) {
      return "password";
    }

    return null;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    final tcontext = Translations.of(context);
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "method",
              selected: method.isEmpty ? "none" : method,
              strings: getAttributes()["method"]!.cast<String>(),
              onPicker: (String? selected) async {
                if (selected == null) {
                  return;
                }
                method = selected;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              hint: tcontext.meta.required,
              onChanged: (String value) {
                password = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "plugin",
              text: plugin,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                plugin = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "plugin_opts",
              text: plugin_opts,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                plugin_opts = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "network",
              selected: network,
              strings:
                  SingboxJsonNetwork.getAttributes()["network"]!.cast<String>(),
              onPicker: (String? selected) async {
                network = selected;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "udp_over_tcp",
              onPush: () async {
                udp_over_tcp ??= SingboxJsonUDPOverTCPOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("udp_over_tcp"),
                        builder: (context) => GroupScreen(
                              title: "udp_over_tcp",
                              getOptions: udp_over_tcp!.getWidgetOptions,
                            )));
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "multiplex",
              onPush: () async {
                multiplex ??= SingboxJsonMultiplexOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("multiplex"),
                        builder: (context) => GroupScreen(
                              title: "multiplex",
                              getOptions: multiplex!.getWidgetOptions,
                            )));
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundShadowsocksROptions extends SingboxJsonServerOptions {
  String method = "";
  String password = "";
  String? obfs;
  String? obfs_param;
  String? protocol;
  String? protocol_param;
  String? network;

  SingboxJsonOutboundShadowsocksROptions(
      {this.method = "",
      this.password = "",
      this.obfs,
      this.obfs_param,
      this.protocol,
      this.protocol_param,
      this.network});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    ret['method'] = method;
    ret['password'] = password;
    if (obfs != null && obfs!.isNotEmpty) {
      ret['obfs'] = obfs;
    }
    if (obfs_param != null && obfs_param!.isNotEmpty) {
      ret['obfs_param'] = obfs_param;
    }
    if (protocol != null && protocol!.isNotEmpty) {
      ret['protocol'] = protocol;
    }
    if (protocol_param != null && protocol_param!.isNotEmpty) {
      ret['protocol_param'] = protocol_param;
    }
    if (network != null && network!.isNotEmpty) {
      ret['network'] = network;
    }
    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    method = map["method"] ?? "";
    password = map["password"] ?? "";
    obfs = map["obfs"];
    obfs_param = map["obfs_param"];
    protocol = map["protocol"];
    protocol_param = map["protocol_param"];
    network = map["network"];
  }

  @override
  bool isNotEmpty() {
    if (super.isNotEmpty()) {
      return true;
    }
    return (method.isNotEmpty) ||
        (password.isNotEmpty) ||
        (obfs != null && obfs!.isNotEmpty) ||
        (obfs_param != null && obfs_param!.isNotEmpty) ||
        (network != null && network!.isNotEmpty) ||
        (protocol != null && protocol!.isNotEmpty) ||
        (protocol_param != null && protocol_param!.isNotEmpty);
  }

  static SingboxJsonOutboundShadowsocksROptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundShadowsocksROptions options =
        SingboxJsonOutboundShadowsocksROptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "method": [
        "",
        "none",
        "aes-128-ctr",
        "aes-192-ctr",
        "aes-256-ctr",
        "aes-128-cfb",
        "aes-192-cfb",
        "aes-256-cfb",
        "rc4-md5",
        "chacha20-ietf",
        "xchacha20",
      ]
    };
  }

  @override
  String? getRequired() {
    String? ret = super.getRequired();
    if (ret != null) {
      return ret;
    }
    if (password.isEmpty) {
      return "password";
    }

    return null;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    final tcontext = Translations.of(context);
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "method",
              selected: method.isEmpty ? "none" : method,
              strings: getAttributes()["method"]!.cast<String>(),
              onPicker: (String? selected) async {
                method = selected ?? "none";
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              hint: tcontext.meta.required,
              onChanged: (String value) {
                password = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "obfs",
              text: obfs,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                obfs = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "obfs_param",
              text: obfs_param,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                obfs_param = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "protocol",
              text: protocol,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                protocol = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "protocol_param",
              text: protocol_param,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                protocol_param = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "network",
              selected: network,
              strings:
                  SingboxJsonNetwork.getAttributes()["network"]!.cast<String>(),
              onPicker: (String? selected) async {
                network = selected;
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundShadowTLSOptions extends SingboxJsonServerOptions {
  int? version;
  String? password;
  SingboxJsonTLSFragmentOptions? tls_fragment;
  SingboxJsonTLSOptions? tls;

  SingboxJsonOutboundShadowTLSOptions({this.version, this.password});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    if (version != null) {
      ret['version'] = version;
    }
    if (password != null && password!.isNotEmpty) {
      ret['password'] = password;
    }
    if (tls != null && tls!.enabled == true) {
      ret['tls'] = tls!.toJson();
    }
    if (tls_fragment != null && tls_fragment!.enabled == true) {
      ret['tls_fragment'] = tls_fragment!.toJson();
    }
    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    version = map["version"];
    password = map["password"];
    tls = SingboxJsonTLSOptions.fromJsonStatic(map["tls"]);
    tls_fragment =
        SingboxJsonTLSFragmentOptions.fromJsonStatic(map["tls_fragment"]);
  }

  static SingboxJsonOutboundShadowTLSOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundShadowTLSOptions options =
        SingboxJsonOutboundShadowTLSOptions();
    options.fromJson(map);
    return options;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "version",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: version?.toString(),
              textWidthPercent: 0.6,
              onChanged: (String value) {
                version = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                password = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "tls",
              onPush: () async {
                tls ??= SingboxJsonTLSOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("tls"),
                        builder: (context) => GroupScreen(
                              title: "tls",
                              getOptions: tls!.getWidgetOptions,
                            )));
              })),
      tls != null && tls!.enabled == true
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "tls_fragment",
                  onPush: () async {
                    tls_fragment ??= SingboxJsonTLSFragmentOptions();

                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("tls_fragment"),
                            builder: (context) => GroupScreen(
                                  title: "tls_fragment",
                                  getOptions: tls_fragment!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundHysteriaOptions extends SingboxJsonServerOptions {
  String? up;
  int? up_mbps;
  String? down;
  int? down_mbps;
  String? obfs;
  //[]byte       auth;
  String? auth;
  String? auth_str;
  int? recv_window_conn;
  int? recv_window;
  bool? disable_mtu_discovery;
  String? network;
  SingboxJsonTLSFragmentOptions? tls_fragment;
  SingboxJsonTLSOptions? tls;
  SingboxJsonTurnRelayOptions? turn_relay; //hiddify
  String? hop_ports; //https://github.com/morgenanno/sing-box
  int? hop_interval; //https://github.com/morgenanno/sing-box

  SingboxJsonOutboundHysteriaOptions(
      {this.up,
      this.up_mbps,
      this.down,
      this.down_mbps,
      this.obfs,
      this.auth,
      this.auth_str,
      this.recv_window_conn,
      this.recv_window,
      this.disable_mtu_discovery,
      this.network,
      this.tls,
      this.turn_relay,
      this.hop_ports,
      this.hop_interval});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    if (up != null && up!.isNotEmpty) {
      ret['up'] = up;
    }
    if (up_mbps != null) {
      ret['up_mbps'] = up_mbps;
    }
    if (down != null && down!.isNotEmpty) {
      ret['down'] = down;
    }
    if (down_mbps != null) {
      ret['down_mbps'] = down_mbps;
    }
    if (obfs != null && obfs!.isNotEmpty) {
      ret['obfs'] = obfs;
    }
    if (auth != null && auth!.isNotEmpty) {
      ret['auth'] = auth;
    }
    if (auth_str != null && auth_str!.isNotEmpty) {
      ret['auth_str'] = auth_str;
    }
    if (recv_window_conn != null) {
      ret['recv_window_conn'] = recv_window_conn;
    }
    if (recv_window != null) {
      ret['recv_window'] = recv_window;
    }
    if (disable_mtu_discovery != null) {
      ret['disable_mtu_discovery'] = disable_mtu_discovery;
    }
    if (network != null && network!.isNotEmpty) {
      ret['network'] = network;
    }
    if (tls != null && tls!.enabled == true) {
      ret['tls'] = tls!.toJson();
    }
    if (tls_fragment != null && tls_fragment!.enabled == true) {
      ret['tls_fragment'] = tls_fragment!.toJson();
    }
    if (turn_relay != null && (turn_relay!.isNotEmpty())) {
      ret['turn_relay'] = turn_relay!.toJson();
    }
    if (hop_ports != null) {
      ret['hop_ports'] = hop_ports;
    }
    if (hop_interval != null) {
      ret['hop_interval'] = hop_interval;
    }
    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    up = map["up"];
    up_mbps = map["up_mbps"];
    down = map["down"];
    down_mbps = map["down_mbps"];
    obfs = map["obfs"];
    auth = map["auth"];
    auth_str = map["auth_str"];
    recv_window_conn = map["recv_window_conn"];
    recv_window = map["recv_window"];
    disable_mtu_discovery = map["disable_mtu_discovery"];
    network = map["network"];
    tls = SingboxJsonTLSOptions.fromJsonStatic(map["tls"]);
    tls_fragment =
        SingboxJsonTLSFragmentOptions.fromJsonStatic(map["tls_fragment"]);
    turn_relay = SingboxJsonTurnRelayOptions.fromJsonStatic(map["turn_relay"]);
    hop_ports = map["hop_ports"];
    hop_interval = map["hop_interval"];
  }

  static SingboxJsonOutboundHysteriaOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundHysteriaOptions options =
        SingboxJsonOutboundHysteriaOptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {};
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "up",
              text: up,
              hint: "23mbps",
              textWidthPercent: 0.6,
              onChanged: (String value) {
                up = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "up_mbps",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: up_mbps?.toString(),
              hint: "mbps",
              textWidthPercent: 0.6,
              onChanged: (String value) {
                up_mbps = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "down",
              text: down,
              hint: "23mbps",
              textWidthPercent: 0.6,
              onChanged: (String value) {
                down = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "down_mbps",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: down_mbps?.toString(),
              hint: "mbps",
              textWidthPercent: 0.6,
              onChanged: (String value) {
                down_mbps = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "obfs",
              text: obfs,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                obfs = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "auth",
              text: auth,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                auth = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "auth_str",
              text: auth_str,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                auth_str = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "recv_window_conn",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: recv_window_conn?.toString(),
              hint: "recv_window_conn",
              textWidthPercent: 0.6,
              onChanged: (String value) {
                recv_window_conn = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "recv_window",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: recv_window?.toString(),
              hint: "recv_window",
              textWidthPercent: 0.6,
              onChanged: (String value) {
                recv_window = int.tryParse(value);
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "disable_mtu_discovery",
              switchValue: disable_mtu_discovery,
              onSwitch: (bool value) async {
                disable_mtu_discovery = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "network",
              selected: network,
              strings:
                  SingboxJsonNetwork.getAttributes()["network"]!.cast<String>(),
              onPicker: (String? selected) async {
                network = selected;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "tls",
              onPush: () async {
                tls ??= SingboxJsonTLSOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("tls"),
                        builder: (context) => GroupScreen(
                              title: "tls",
                              getOptions: tls!.getWidgetOptions,
                            )));
              })),
      tls != null && tls!.enabled == true
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "tls_fragment",
                  onPush: () async {
                    tls_fragment ??= SingboxJsonTLSFragmentOptions();

                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("tls_fragment"),
                            builder: (context) => GroupScreen(
                                  title: "tls_fragment",
                                  getOptions: tls_fragment!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "turn_relay",
              onPush: () async {
                turn_relay ??= SingboxJsonTurnRelayOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("turn_relay"),
                        builder: (context) => GroupScreen(
                              title: "turn_relay",
                              getOptions: turn_relay!.getWidgetOptions,
                            )));
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "hop_ports",
              text: hop_ports,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                hop_ports = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "hop_interval",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: hop_interval?.toString(),
              hint: "hop_interval",
              textWidthPercent: 0.6,
              onChanged: (String value) {
                hop_interval = int.tryParse(value);
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundHysteria2Options extends SingboxJsonServerOptions {
  int? up_mbps;
  int? down_mbps;

  String? password;
  String? network;
  //List<String>? server_ports; //core 1.11
  //String? hop_interval; //core 1.11
  SingboxJsonObfsHysteria2Options? obfs;
  SingboxJsonTLSFragmentOptions? tls_fragment;
  SingboxJsonTLSOptions? tls;
  bool? brutal_debug;
  SingboxJsonTurnRelayOptions? turn_relay; //hiddify
  String? hop_ports; //https://github.com/morgenanno/sing-box//todo
  int? hop_interval; //https://github.com/morgenanno/sing-box

  SingboxJsonOutboundHysteria2Options(
      {this.up_mbps,
      this.down_mbps,
      this.obfs,
      this.password,
      this.network,
      //this.server_ports,
      //this.hop_interval,
      this.tls,
      this.brutal_debug,
      this.turn_relay,
      this.hop_ports, //https://github.com/morgenanno/sing-box
      this.hop_interval //https://github.com/morgenanno/sing-box
      });

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    if (up_mbps != null) {
      ret['up_mbps'] = up_mbps;
    }
    if (down_mbps != null) {
      ret['down_mbps'] = down_mbps;
    }
    if (password != null && password!.isNotEmpty) {
      ret['password'] = password;
    }
    if (network != null && network!.isNotEmpty) {
      ret['network'] = network;
    }
    /*if (server_ports != null && server_ports!.isNotEmpty) {
      ret['server_ports'] = server_ports;
    }
    if (hop_interval != null) {
      ret['hop_interval'] = hop_interval;
    }*/
    if (brutal_debug != null) {
      ret['brutal_debug'] = brutal_debug;
    }
    if (obfs != null) {
      ret['obfs'] = obfs!.toJson();
    }
    if (tls != null && tls!.enabled == true) {
      ret['tls'] = tls!.toJson();
    }
    if (tls_fragment != null && tls_fragment!.enabled == true) {
      ret['tls_fragment'] = tls_fragment!.toJson();
    }
    if (turn_relay != null && (turn_relay!.isNotEmpty())) {
      ret['turn_relay'] = turn_relay!.toJson();
    }
    if (hop_ports != null) {
      ret['hop_ports'] = hop_ports;
    }
    if (hop_interval != null) {
      ret['hop_interval'] = hop_interval;
    }
    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    up_mbps = map["up_mbps"];
    down_mbps = map["down_mbps"];
    password = map["password"];
    network = map["network"];
    /*server_ports =
        ConvertUtils.getListStringFromDynamic(map["server_ports"], false, null);
    var interval = map["hop_interval"];
    if (interval is int) {
      hop_interval =
          SingboxConfigBuilder.durationTo(Duration(seconds: interval), "");
    } else if (interval is String) {
      hop_interval = interval;
    }*/
    brutal_debug = map["brutal_debug"];
    obfs = SingboxJsonObfsHysteria2Options.fromJsonStatic(map["obfs"]);
    tls = SingboxJsonTLSOptions.fromJsonStatic(map["tls"]);
    tls_fragment =
        SingboxJsonTLSFragmentOptions.fromJsonStatic(map["tls_fragment"]);
    turn_relay = SingboxJsonTurnRelayOptions.fromJsonStatic(map["turn_relay"]);
    hop_ports = map["hop_ports"];
    hop_interval = map["hop_interval"];
  }

  static SingboxJsonOutboundHysteria2Options? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundHysteria2Options options =
        SingboxJsonOutboundHysteria2Options();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {};
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "up_mbps",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: up_mbps?.toString(),
              hint: "mbps",
              textWidthPercent: 0.6,
              onChanged: (String value) {
                up_mbps = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "down_mbps",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: down_mbps?.toString(),
              hint: "mbps",
              textWidthPercent: 0.6,
              onChanged: (String value) {
                down_mbps = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                password = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "network",
              selected: network,
              strings:
                  SingboxJsonNetwork.getAttributes()["network"]!.cast<String>(),
              onPicker: (String? selected) async {
                network = selected;
              })),
      /*GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "hop_server_ports",
              onPush: () async {
                server_ports ??= [];
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings:
                            ListAddScreen.routSettings("hop_server_ports"),
                        builder: (context) => ListAddScreen(
                              title: "hop_server_ports",
                              data: server_ports!,
                            )));
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "hop_interval",
              text: hop_interval,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                hop_interval = value;
              })),*/
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "brutal_debug",
              switchValue: brutal_debug,
              onSwitch: (bool value) async {
                brutal_debug = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "obfs",
              onPush: () async {
                obfs ??= SingboxJsonObfsHysteria2Options();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("obfs"),
                        builder: (context) => GroupScreen(
                              title: "obfs",
                              getOptions: obfs!.getWidgetOptions,
                            )));
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "tls",
              onPush: () async {
                tls ??= SingboxJsonTLSOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("tls"),
                        builder: (context) => GroupScreen(
                              title: "tls",
                              getOptions: tls!.getWidgetOptions,
                            )));
              })),
      tls != null && tls!.enabled == true
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "tls_fragment",
                  onPush: () async {
                    tls_fragment ??= SingboxJsonTLSFragmentOptions();

                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("tls_fragment"),
                            builder: (context) => GroupScreen(
                                  title: "tls_fragment",
                                  getOptions: tls_fragment!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "turn_relay",
              onPush: () async {
                turn_relay ??= SingboxJsonTurnRelayOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("turn_relay"),
                        builder: (context) => GroupScreen(
                              title: "turn_relay",
                              getOptions: turn_relay!.getWidgetOptions,
                            )));
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "hop_ports",
              text: hop_ports,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                hop_ports = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "hop_interval",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: hop_interval?.toString(),
              hint: "hop_interval",
              textWidthPercent: 0.6,
              onChanged: (String value) {
                hop_interval = int.tryParse(value);
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundTrojanOptions extends SingboxJsonServerOptions {
  String password = "";
  String? network;
  SingboxJsonTLSFragmentOptions? tls_fragment;
  SingboxJsonTLSOptions? tls;
  SingboxJsonMultiplexOptions? multiplex;
  SingboxJsonTransportOptions? transport;

  SingboxJsonOutboundTrojanOptions(
      {this.password = "",
      this.network,
      this.tls,
      this.multiplex,
      this.transport});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    ret['password'] = password;
    if (network != null && network!.isNotEmpty) {
      ret['network'] = network;
    }
    if (tls != null && tls!.enabled == true) {
      ret['tls'] = tls!.toJson();
    }
    if (tls_fragment != null && tls_fragment!.enabled == true) {
      ret['tls_fragment'] = tls_fragment!.toJson();
    }
    if (multiplex != null && multiplex!.enabled == true) {
      ret['multiplex'] = multiplex!.toJson();
    }
    if (transport != null &&
        transport!.type != null &&
        transport!.type!.isNotEmpty) {
      ret['transport'] = transport!.toJson();
    }
    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    password = map["password"];
    network = map["network"];
    tls = SingboxJsonTLSOptions.fromJsonStatic(map["tls"]);
    tls_fragment =
        SingboxJsonTLSFragmentOptions.fromJsonStatic(map["tls_fragment"]);
    multiplex = SingboxJsonMultiplexOptions.fromJsonStatic(map["multiplex"]);
    transport = SingboxJsonTransportOptions.fromJsonStatic(map["transport"]);
  }

  static SingboxJsonOutboundTrojanOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundTrojanOptions options =
        SingboxJsonOutboundTrojanOptions();
    options.fromJson(map);
    return options;
  }

  @override
  String? getRequired() {
    String? ret = super.getRequired();
    if (ret != null) {
      return ret;
    }
    if (password.isEmpty) {
      return "password";
    }

    return null;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    final tcontext = Translations.of(context);
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              hint: tcontext.meta.required,
              onChanged: (String value) {
                password = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "network",
              selected: network,
              strings:
                  SingboxJsonNetwork.getAttributes()["network"]!.cast<String>(),
              onPicker: (String? selected) async {
                network = selected;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "tls",
              onPush: () async {
                tls ??= SingboxJsonTLSOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("tls"),
                        builder: (context) => GroupScreen(
                              title: "tls",
                              getOptions: tls!.getWidgetOptions,
                            )));
              })),
      tls != null && tls!.enabled == true
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "tls_fragment",
                  onPush: () async {
                    tls_fragment ??= SingboxJsonTLSFragmentOptions();

                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("tls_fragment"),
                            builder: (context) => GroupScreen(
                                  title: "tls_fragment",
                                  getOptions: tls_fragment!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "multiplex",
              onPush: () async {
                multiplex ??= SingboxJsonMultiplexOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("multiplex"),
                        builder: (context) => GroupScreen(
                              title: "multiplex",
                              getOptions: multiplex!.getWidgetOptions,
                            )));
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "transport",
              onPush: () async {
                transport ??= SingboxJsonTransportOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("transport"),
                        builder: (context) => GroupScreen(
                              title: "transport",
                              getOptions: transport!.getWidgetOptions,
                            )));
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundVLESSOptions extends SingboxJsonServerOptions {
  String uuid = "";
  String? flow;
  String? packet_encoding;
  String? network;
  SingboxJsonTLSFragmentOptions? tls_fragment;
  SingboxJsonTLSOptions? tls;
  SingboxJsonMultiplexOptions? multiplex;
  SingboxJsonTransportOptions? transport;

  SingboxJsonOutboundVLESSOptions({
    this.uuid = "",
    this.flow,
    this.packet_encoding,
    this.network,
    this.tls,
    this.multiplex,
    this.transport,
  });

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    ret['uuid'] = uuid;
    if (flow != null && flow!.isNotEmpty) {
      ret['flow'] = flow;
    }

    if (packet_encoding != null && packet_encoding!.isNotEmpty) {
      ret['packet_encoding'] = packet_encoding;
    }
    if (network != null) {
      ret['network'] = network;
    }
    if (tls != null && tls!.enabled == true) {
      ret['tls'] = tls!.toJson();
    }
    if (tls_fragment != null && tls_fragment!.enabled == true) {
      ret['tls_fragment'] = tls_fragment!.toJson();
    }
    if (multiplex != null && multiplex!.enabled == true) {
      ret['multiplex'] = multiplex!.toJson();
    }
    if (transport != null &&
        transport!.type != null &&
        transport!.type!.isNotEmpty) {
      ret['transport'] = transport!.toJson();
    }

    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    uuid = map["uuid"] ?? "";
    flow = map["flow"];
    network = map["network"];
    tls = SingboxJsonTLSOptions.fromJsonStatic(map["tls"]);
    tls_fragment =
        SingboxJsonTLSFragmentOptions.fromJsonStatic(map["tls_fragment"]);
    multiplex = SingboxJsonMultiplexOptions.fromJsonStatic(map["multiplex"]);
    transport = SingboxJsonTransportOptions.fromJsonStatic(map["transport"]);
    packet_encoding = map["packet_encoding"];
  }

  static SingboxJsonOutboundVLESSOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundVLESSOptions options = SingboxJsonOutboundVLESSOptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "packet_encoding": [
        "",
        "packetaddr",
        "xudp",
      ],
      "flow": ["", "xtls-rprx-vision"],
    };
  }

  @override
  String? getRequired() {
    String? ret = super.getRequired();
    if (ret != null) {
      return ret;
    }
    if (uuid.isEmpty) {
      return "uuid";
    }

    return null;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    final tcontext = Translations.of(context);
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "uuid",
              text: uuid,
              textWidthPercent: 0.6,
              hint: tcontext.meta.required,
              onChanged: (String value) {
                uuid = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "flow",
              text: flow,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                flow = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "packet_encoding",
              selected: packet_encoding,
              strings: getAttributes()["packet_encoding"]!.cast<String>(),
              onPicker: (String? selected) async {
                packet_encoding = selected;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "network",
              selected: network,
              strings:
                  SingboxJsonNetwork.getAttributes()["network"]!.cast<String>(),
              onPicker: (String? selected) async {
                network = selected;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "tls",
              onPush: () async {
                tls ??= SingboxJsonTLSOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("tls"),
                        builder: (context) => GroupScreen(
                              title: "tls",
                              getOptions: tls!.getWidgetOptions,
                            )));
              })),
      tls != null && tls!.enabled == true
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "tls_fragment",
                  onPush: () async {
                    tls_fragment ??= SingboxJsonTLSFragmentOptions();

                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("tls_fragment"),
                            builder: (context) => GroupScreen(
                                  title: "tls_fragment",
                                  getOptions: tls_fragment!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "multiplex",
              onPush: () async {
                multiplex ??= SingboxJsonMultiplexOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("multiplex"),
                        builder: (context) => GroupScreen(
                              title: "multiplex",
                              getOptions: multiplex!.getWidgetOptions,
                            )));
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "transport",
              onPush: () async {
                transport ??= SingboxJsonTransportOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("transport"),
                        builder: (context) => GroupScreen(
                              title: "transport",
                              getOptions: transport!.getWidgetOptions,
                            )));
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundVMessOptions extends SingboxJsonServerOptions {
  String uuid = "";
  String security = "";
  int? alter_id;
  bool? global_padding;
  bool? authenticated_length;
  String? packet_encoding;
  String? network;
  SingboxJsonTLSFragmentOptions? tls_fragment;
  SingboxJsonTLSOptions? tls;

  SingboxJsonMultiplexOptions? multiplex;
  SingboxJsonTransportOptions? transport;

  SingboxJsonOutboundVMessOptions(
      {this.uuid = "",
      this.security = "",
      this.alter_id,
      this.global_padding,
      this.authenticated_length,
      this.packet_encoding,
      this.network,
      this.tls,
      this.multiplex,
      this.transport});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    ret['uuid'] = uuid;
    ret['security'] = security;
    if (alter_id != null) {
      ret['alter_id'] = alter_id;
    }
    if (global_padding != null) {
      ret['global_padding'] = global_padding;
    }
    if (authenticated_length != null) {
      ret['authenticated_length'] = authenticated_length;
    }
    if (packet_encoding != null && packet_encoding!.isNotEmpty) {
      ret['packet_encoding'] = packet_encoding;
    }
    if (network != null && network!.isNotEmpty) {
      ret['network'] = network;
    }
    if (tls != null && tls!.enabled == true) {
      ret['tls'] = tls!.toJson();
    }
    if (tls_fragment != null && tls_fragment!.enabled == true) {
      ret['tls_fragment'] = tls_fragment!.toJson();
    }
    if (multiplex != null && multiplex!.enabled == true) {
      ret['multiplex'] = multiplex!.toJson();
    }
    if (transport != null &&
        transport!.type != null &&
        transport!.type!.isNotEmpty) {
      ret['transport'] = transport!.toJson();
    }

    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    uuid = map["uuid"] ?? "";
    security = map["security"] ?? "";
    alter_id = map["alter_id"];
    global_padding = map["global_padding"];
    authenticated_length = map["authenticated_length"];
    packet_encoding = map["packet_encoding"];
    network = map["network"];
    tls = SingboxJsonTLSOptions.fromJsonStatic(map["tls"]);
    tls_fragment =
        SingboxJsonTLSFragmentOptions.fromJsonStatic(map["tls_fragment"]);
    multiplex = SingboxJsonMultiplexOptions.fromJsonStatic(map["multiplex"]);
    transport = SingboxJsonTransportOptions.fromJsonStatic(map["transport"]);
  }

  static SingboxJsonOutboundVMessOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundVMessOptions options = SingboxJsonOutboundVMessOptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "security": [
        "auto",
        "none",
        "zero",
        "aes-128-gcm",
        "chacha20-poly1305",
        "aes-128-ctr",
      ],
      "packet_encoding": [
        "",
        "packetaddr",
        "xudp",
      ],
    };
  }

  @override
  String? getRequired() {
    String? ret = super.getRequired();
    if (ret != null) {
      return ret;
    }
    if (uuid.isEmpty) {
      return "uuid";
    }

    return null;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    final tcontext = Translations.of(context);
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "uuid",
              text: uuid,
              textWidthPercent: 0.6,
              hint: tcontext.meta.required,
              onChanged: (String value) {
                uuid = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "security",
              selected: security.isEmpty ? "auto" : security,
              strings: getAttributes()["security"]!.cast<String>(),
              onPicker: (String? selected) async {
                if (selected == null) {
                  return;
                }
                security = selected;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "alter_id",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: alter_id?.toString(),
              textWidthPercent: 0.6,
              onChanged: (String value) {
                alter_id = int.tryParse(value);
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "global_padding",
              switchValue: global_padding,
              onSwitch: (bool value) async {
                global_padding = value;
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "authenticated_length",
              switchValue: authenticated_length,
              onSwitch: (bool value) async {
                authenticated_length = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "packet_encoding",
              selected: packet_encoding,
              strings: getAttributes()["packet_encoding"]!.cast<String>(),
              onPicker: (String? selected) async {
                packet_encoding = selected;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "network",
              selected: network,
              strings:
                  SingboxJsonNetwork.getAttributes()["network"]!.cast<String>(),
              onPicker: (String? selected) async {
                network = selected;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "tls",
              onPush: () async {
                tls ??= SingboxJsonTLSOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("tls"),
                        builder: (context) => GroupScreen(
                              title: "tls",
                              getOptions: tls!.getWidgetOptions,
                            )));
              })),
      tls != null && tls!.enabled == true
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "tls_fragment",
                  onPush: () async {
                    tls_fragment ??= SingboxJsonTLSFragmentOptions();

                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("tls_fragment"),
                            builder: (context) => GroupScreen(
                                  title: "tls_fragment",
                                  getOptions: tls_fragment!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "multiplex",
              onPush: () async {
                multiplex ??= SingboxJsonMultiplexOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("multiplex"),
                        builder: (context) => GroupScreen(
                              title: "multiplex",
                              getOptions: multiplex!.getWidgetOptions,
                            )));
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "transport",
              onPush: () async {
                transport ??= SingboxJsonTransportOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("transport"),
                        builder: (context) => GroupScreen(
                              title: "transport",
                              getOptions: transport!.getWidgetOptions,
                            )));
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundWireguardPeerOptions {
  String? server;
  int? server_port;

  String? public_key;
  String? pre_shared_key;
  List<String>? allowed_ips;
  List<int>? reserved;

  SingboxJsonOutboundWireguardPeerOptions(
      {this.server,
      this.server_port,
      this.public_key,
      this.pre_shared_key,
      this.allowed_ips,
      this.reserved});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};

    if (server != null && server!.isNotEmpty) {
      ret['server'] = server;
    }
    if (server_port != null) {
      ret['server_port'] = server_port;
    }

    if (public_key != null && public_key!.isNotEmpty) {
      ret['public_key'] = public_key;
    }
    if (pre_shared_key != null && pre_shared_key!.isNotEmpty) {
      ret['pre_shared_key'] = pre_shared_key;
    }
    if (allowed_ips != null && allowed_ips!.isNotEmpty) {
      ret['allowed_ips'] = allowed_ips;
    }
    if (reserved != null && reserved!.isNotEmpty) {
      ret['reserved'] = reserved;
    }

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    server = map["server"];
    server_port = map["server_port"];
    public_key = map["public_key"];
    pre_shared_key = map["pre_shared_key"];
    allowed_ips =
        ConvertUtils.getListStringFromDynamic(map["allowed_ips"], false, null);
    reserved = ConvertUtils.getListIntFromDynamic(map["reserved"], false, null);
  }

  static SingboxJsonOutboundWireguardPeerOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundWireguardPeerOptions options =
        SingboxJsonOutboundWireguardPeerOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "server",
              text: server,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                server = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "server_port",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: server_port?.toString(),
              textWidthPercent: 0.6,
              onChanged: (String value) {
                server_port = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "public_key",
              text: public_key,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                public_key = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "pre_shared_key",
              text: pre_shared_key,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                pre_shared_key = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "allowed_ips",
              onPush: () async {
                allowed_ips ??= [];
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: ListAddScreen.routSettings("allowed_ips"),
                        builder: (context) => ListAddScreen(
                              title: "allowed_ips",
                              data: allowed_ips!,
                            )));
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "reserved",
              text: reserved?.join(","),
              textWidthPercent: 0.6,
              onChanged: (String value) {
                List<String> parts = value.split(",");
                List<int> ivalue = [];
                /*if (parts.length != 3) {
                  return;
                }*/
                for (var p in parts) {
                  int? v = int.tryParse(p.trim());
                  if (v == null) {
                    return;
                  }
                  ivalue.add(v);
                }
                reserved = ivalue;
              })),
    ]);
    return [GroupItem(options: options)];
  }
}

class SingboxJsonOutboundWireGuardOptions extends SingboxJsonServerOptions {
  String private_key = "";
  String peer_public_key = "";
  String? pre_shared_key;
  int? workers;
  int? mtu;
  String? network;
  List<String>? local_address;
  List<SingboxJsonOutboundWireguardPeerOptions>? peers;
  List<int>? reserved;

  String? fake_packets; //hiddify
  String? fake_packets_size; //hiddify
  String? fake_packets_delay; //hiddify
  String? fake_packets_mode; //hiddify
  //SingboxJsonTLSFragmentOptions? tls_fragment;
  //SingboxJsonTLSOptions? tls;
  SingboxJsonTurnRelayOptions? turn_relay; //hiddify

  SingboxJsonOutboundWireGuardOptions(
      {this.private_key = "",
      this.peer_public_key = "",
      this.pre_shared_key,
      this.local_address,
      this.peers,
      this.reserved,
      this.workers,
      this.mtu,
      this.network,
      this.turn_relay});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());

    ret['private_key'] = private_key;

    ret['peer_public_key'] = peer_public_key;
    if (pre_shared_key != null && pre_shared_key!.isNotEmpty) {
      ret['pre_shared_key'] = pre_shared_key;
    }

    if (workers != null) {
      ret['workers'] = workers;
    }
    if (mtu != null) {
      ret['mtu'] = mtu;
    }
    if (network != null && network!.isNotEmpty) {
      ret['network'] = network;
    }
    if (local_address != null && local_address!.isNotEmpty) {
      ret['local_address'] = local_address;
    }

    if (peers != null && peers!.isNotEmpty) {
      ret['peers'] = peers;
    }
    if (reserved != null && reserved!.isNotEmpty) {
      ret['reserved'] = reserved;
    }
    if (fake_packets != null && fake_packets!.isNotEmpty) {
      ret['fake_packets'] = fake_packets;
    }
    if (fake_packets_size != null && fake_packets_size!.isNotEmpty) {
      ret['fake_packets_size'] = fake_packets_size;
    }
    if (fake_packets_delay != null && fake_packets_delay!.isNotEmpty) {
      ret['fake_packets_delay'] = fake_packets_delay;
    }
    if (fake_packets_mode != null && fake_packets_mode!.isNotEmpty) {
      ret['fake_packets_mode'] = fake_packets_mode;
    }
    if (turn_relay != null && (turn_relay!.isNotEmpty())) {
      ret['turn_relay'] = turn_relay!.toJson();
    }

    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);

    local_address = ConvertUtils.getListStringFromDynamic(
        map["local_address"], false, null);
    private_key = map["private_key"];
    var ps = map["peers"];
    if (ps is List) {
      for (var p in ps) {
        var peer = SingboxJsonOutboundWireguardPeerOptions.fromJsonStatic(p);
        if (peer != null) {
          peers?.add(peer);
        }
      }
    }

    peer_public_key = map["peer_public_key"] ?? "";
    pre_shared_key = map["pre_shared_key"];
    reserved = ConvertUtils.getListIntFromDynamic(map["reserved"], false, null);
    workers = map["workers"];
    if (map["mtu"] is int) {
      mtu = map["mtu"];
    } else if (map["mtu"] is String) {
      mtu = int.tryParse(map["mtu"] ?? "");
    }

    network = map["network"];
    fake_packets = map["fake_packets"];
    fake_packets_size = map["fake_packets_size"];
    fake_packets_delay = map["fake_packets_delay"];
    fake_packets_mode = map["fake_packets_mode"];
    turn_relay = SingboxJsonTurnRelayOptions.fromJsonStatic(map["turn_relay"]);
  }

  static SingboxJsonOutboundWireGuardOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundWireGuardOptions options =
        SingboxJsonOutboundWireGuardOptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {};
  }

  @override
  String? getRequired() {
    String? ret = super.getRequired();
    if (ret != null) {
      return ret;
    }
    if (private_key.isEmpty) {
      return "private_key";
    }
    if (peer_public_key.isEmpty) {
      return "peer_public_key";
    }
    return null;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    final tcontext = Translations.of(context);
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "private_key",
              text: private_key,
              textWidthPercent: 0.6,
              hint: tcontext.meta.required,
              onChanged: (String value) {
                private_key = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "peer_public_key",
              text: peer_public_key,
              textWidthPercent: 0.6,
              hint: tcontext.meta.required,
              onChanged: (String value) {
                peer_public_key = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "pre_shared_key",
              text: pre_shared_key,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                pre_shared_key = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "workers",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: workers?.toString(),
              textWidthPercent: 0.6,
              onChanged: (String value) {
                workers = int.tryParse(value);
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "reserved",
              text: reserved?.join(","),
              textWidthPercent: 0.6,
              onChanged: (String value) {
                List<String> parts = value.split(",");
                /*if (parts.length != 3) {
                  return;
                }*/
                List<int> ivalue = [];
                for (var p in parts) {
                  int? v = int.tryParse(p.trim());
                  if (v == null) {
                    return;
                  }
                  ivalue.add(v);
                }
                reserved = ivalue;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "mtu",
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              text: mtu?.toString(),
              textWidthPercent: 0.6,
              onChanged: (String value) {
                mtu = int.tryParse(value);
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "network",
              selected: network,
              strings:
                  SingboxJsonNetwork.getAttributes()["network"]!.cast<String>(),
              onPicker: (String? selected) async {
                network = selected;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "local_address",
              onPush: () async {
                local_address ??= [];
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: ListAddScreen.routSettings("local_address"),
                        builder: (context) => ListAddScreen(
                              title: "local_address",
                              data: local_address!,
                            )));
              })),
      //todo   peers
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "fake_packets",
              text: fake_packets,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                fake_packets = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "fake_packets_size",
              text: fake_packets_size,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                fake_packets_size = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "fake_packets_delay",
              text: fake_packets_delay,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                fake_packets_delay = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "fake_packets_mode",
              text: fake_packets_mode,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                fake_packets_mode = value;
              })),

      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "turn_relay",
              onPush: () async {
                turn_relay ??= SingboxJsonTurnRelayOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("turn_relay"),
                        builder: (context) => GroupScreen(
                              title: "turn_relay",
                              getOptions: turn_relay!.getWidgetOptions,
                            )));
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundTUICOptions extends SingboxJsonServerOptions {
  String? uuid;
  String? password;
  String? congestion_control;
  String? udp_relay_mode;
  bool? udp_over_stream;
  bool? zero_rtt_handshake;
  String? heartbeat;
  String? network;
  SingboxJsonTLSFragmentOptions? tls_fragment;
  SingboxJsonTLSOptions? tls;
  SingboxJsonTurnRelayOptions? turn_relay; //hiddify

  SingboxJsonOutboundTUICOptions(
      {this.uuid,
      this.password,
      this.congestion_control,
      this.udp_relay_mode,
      this.udp_over_stream,
      this.zero_rtt_handshake,
      this.heartbeat,
      this.network,
      this.tls,
      this.turn_relay});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    if (uuid != null && uuid!.isNotEmpty) {
      ret['uuid'] = uuid;
    }
    if (password != null && password!.isNotEmpty) {
      ret['password'] = password;
    }
    if (congestion_control != null && congestion_control!.isNotEmpty) {
      ret['congestion_control'] = congestion_control;
    }
    if (udp_relay_mode != null && udp_relay_mode!.isNotEmpty) {
      ret['udp_relay_mode'] = udp_relay_mode;
    }
    if (udp_over_stream != null) {
      ret['udp_over_stream'] = udp_over_stream;
    }
    if (zero_rtt_handshake != null) {
      ret['zero_rtt_handshake'] = zero_rtt_handshake;
    }
    if (heartbeat != null) {
      ret['heartbeat'] = heartbeat;
    }
    if (network != null && network!.isNotEmpty) {
      ret['network'] = network;
    }
    if (tls != null && tls!.enabled == true) {
      ret['tls'] = tls!.toJson();
    }
    if (tls_fragment != null && tls_fragment!.enabled == true) {
      ret['tls_fragment'] = tls_fragment!.toJson();
    }
    if (turn_relay != null && (turn_relay!.isNotEmpty())) {
      ret['turn_relay'] = turn_relay!.toJson();
    }
    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    uuid = map["uuid"];
    password = map["password"];
    congestion_control = map["congestion_control"];
    udp_relay_mode = map["udp_relay_mode"];
    udp_over_stream = map["udp_over_stream"];
    zero_rtt_handshake = map["zero_rtt_handshake"];
    heartbeat = map["heartbeat"];
    network = map["network"];
    tls = SingboxJsonTLSOptions.fromJsonStatic(map["tls"]);
    tls_fragment =
        SingboxJsonTLSFragmentOptions.fromJsonStatic(map["tls_fragment"]);
    turn_relay = SingboxJsonTurnRelayOptions.fromJsonStatic(map["turn_relay"]);
  }

  static SingboxJsonOutboundTUICOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundTUICOptions options = SingboxJsonOutboundTUICOptions();
    options.fromJson(map);
    return options;
  }

  static Map<String, List<dynamic>> getAttributes() {
    return {
      "congestion_control": [
        "",
        "cubic",
        "new_reno",
        "bbr",
      ]
    };
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "uuid",
              text: uuid,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                uuid = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                password = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "congestion_control",
              selected: congestion_control,
              strings: getAttributes()["congestion_control"]!.cast<String>(),
              onPicker: (String? selected) async {
                congestion_control = selected;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "udp_relay_mode",
              text: udp_relay_mode,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                udp_relay_mode = value;
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "udp_over_stream",
              switchValue: udp_over_stream,
              onSwitch: (bool value) async {
                udp_over_stream = value;
              })),
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
              name: "zero_rtt_handshake",
              switchValue: zero_rtt_handshake,
              onSwitch: (bool value) async {
                zero_rtt_handshake = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "heartbeat",
              text: heartbeat,
              textWidthPercent: 0.6,
              hint: "10s",
              onChanged: (String value) {
                heartbeat = value;
              })),
      GroupItemOptions(
          stringPickerOptions: GroupItemStringPickerOptions(
              name: "network",
              selected: network,
              strings:
                  SingboxJsonNetwork.getAttributes()["network"]!.cast<String>(),
              onPicker: (String? selected) async {
                network = selected;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "tls",
              onPush: () async {
                tls ??= SingboxJsonTLSOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("tls"),
                        builder: (context) => GroupScreen(
                              title: "tls",
                              getOptions: tls!.getWidgetOptions,
                            )));
              })),
      tls != null && tls!.enabled == true
          ? GroupItemOptions(
              pushOptions: GroupItemPushOptions(
                  name: "tls_fragment",
                  onPush: () async {
                    tls_fragment ??= SingboxJsonTLSFragmentOptions();

                    await Navigator.push(
                        context,
                        MaterialPageRoute(
                            settings: GroupScreen.routSettings("tls_fragment"),
                            builder: (context) => GroupScreen(
                                  title: "tls_fragment",
                                  getOptions: tls_fragment!.getWidgetOptions,
                                )));
                  }))
          : GroupItemOptions(),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "turn_relay",
              onPush: () async {
                turn_relay ??= SingboxJsonTurnRelayOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("turn_relay"),
                        builder: (context) => GroupScreen(
                              title: "turn_relay",
                              getOptions: turn_relay!.getWidgetOptions,
                            )));
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundTorOptions extends SingboxJsonServerOptions {
  String? executable_path;
  String? data_directory;
  List<String>? extra_args;
  Map<String, String>? torrc;

  SingboxJsonOutboundTorOptions({
    this.executable_path,
    this.data_directory,
    this.extra_args,
    this.torrc,
  });

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    if (executable_path != null && executable_path!.isNotEmpty) {
      ret['executable_path'] = executable_path;
    }
    if (data_directory != null && data_directory!.isNotEmpty) {
      ret['data_directory'] = data_directory;
    }
    if (extra_args != null && extra_args!.isNotEmpty) {
      ret['extra_args'] = extra_args;
    }
    if (torrc != null && torrc!.isNotEmpty) {
      ret['torrc'] = torrc;
    }

    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    executable_path = map["executable_path"];
    data_directory = map["data_directory"];
    extra_args =
        ConvertUtils.getListStringFromDynamic(map["extra_args"], false, null);

    var _torrc = map["torrc"];
    if (_torrc != null && _torrc!.isNotEmpty) {
      torrc = {};
      _torrc.forEach((key, value) {
        if (value is String) {
          torrc![key] = value;
        }
      });
    }
  }

  static SingboxJsonOutboundTorOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundTorOptions options = SingboxJsonOutboundTorOptions();
    options.fromJson(map);
    return options;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "executable_path",
              text: executable_path,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                executable_path = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "data_directory",
              text: data_directory,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                data_directory = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "extra_args",
              onPush: () async {
                extra_args ??= [];
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: ListAddScreen.routSettings("extra_args"),
                        builder: (context) => ListAddScreen(
                              title: "extra_args",
                              data: extra_args!,
                            )));
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "torrc",
              onPush: () async {
                torrc ??= {};
                List<Tuple2<String, String>> hs = [];
                torrc!.forEach((key, value) {
                  hs.add(Tuple2(key, value));
                });
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: MapStringAndStringAddScreen.routSettings(),
                        builder: (context) => MapStringAndStringAddScreen(
                              title: "torrc",
                              data: hs,
                            )));
                torrc!.clear();
                for (var h in hs) {
                  torrc![h.item1] = h.item2;
                }
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonOutboundSSHOptions extends SingboxJsonServerOptions {
  String? user;
  String? password;
  List<String>? private_key;
  String? private_key_path;
  String? private_key_passphrase;
  List<String>? host_key;
  List<String>? host_key_algorithms;
  String? client_version;
  SingboxJsonUDPOverTCPOptions? udp_over_tcp;

  SingboxJsonOutboundSSHOptions(
      {this.user,
      this.password,
      this.private_key,
      this.private_key_path,
      this.private_key_passphrase,
      this.host_key,
      this.host_key_algorithms,
      this.client_version,
      this.udp_over_tcp});

  @override
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret.addAll(super.toJson());
    if (user != null && user!.isNotEmpty) {
      ret['user'] = user;
    }
    if (password != null && password!.isNotEmpty) {
      ret['password'] = password;
    }
    if (private_key != null && private_key!.isNotEmpty) {
      ret['private_key'] = private_key;
    }
    if (private_key_path != null && private_key_path!.isNotEmpty) {
      ret['private_key_path'] = private_key_path;
    }
    if (private_key_passphrase != null && private_key_passphrase!.isNotEmpty) {
      ret['private_key_passphrase'] = private_key_passphrase;
    }
    if (host_key != null && host_key!.isNotEmpty) {
      ret['host_key'] = host_key;
    }
    if (host_key_algorithms != null && host_key_algorithms!.isNotEmpty) {
      ret['host_key_algorithms'] = host_key_algorithms;
    }
    if (client_version != null && client_version!.isNotEmpty) {
      ret['client_version'] = client_version;
    }
    if (udp_over_tcp != null && udp_over_tcp!.enabled == true) {
      ret['udp_over_tcp'] = udp_over_tcp!.toJson();
    }
    return ret;
  }

  @override
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    super.fromJson(map);
    user = map["user"];
    password = map["password"];
    private_key =
        ConvertUtils.getListStringFromDynamic(map["private_key"], false, null);
    private_key_path = map["private_key_path"];
    private_key_passphrase = map["private_key_passphrase"];
    host_key =
        ConvertUtils.getListStringFromDynamic(map["host_key"], false, null);
    host_key_algorithms = ConvertUtils.getListStringFromDynamic(
        map["host_key_algorithms"], false, null);
    client_version = map["client_version"];
    udp_over_tcp =
        SingboxJsonUDPOverTCPOptions.fromJsonStatic(map["udp_over_tcp"]);
  }

  static SingboxJsonOutboundSSHOptions? fromJsonStatic(
      Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOutboundSSHOptions options = SingboxJsonOutboundSSHOptions();
    options.fromJson(map);
    return options;
  }

  @override
  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    List<GroupItemOptions> options = [];

    options.addAll([
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "user",
              text: user,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                user = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "password",
              text: password,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                password = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "private_key",
              onPush: () async {
                private_key ??= [];
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: ListAddScreen.routSettings("private_key"),
                        builder: (context) => ListAddScreen(
                              title: "private_key",
                              data: private_key!,
                            )));
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "private_key_path",
              text: private_key_path,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                private_key_path = value;
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "private_key_passphrase",
              text: private_key_passphrase,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                private_key_passphrase = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "host_key",
              onPush: () async {
                host_key ??= [];
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: ListAddScreen.routSettings("host_key"),
                        builder: (context) => ListAddScreen(
                              title: "host_key",
                              data: host_key!,
                            )));
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "host_key_algorithms",
              onPush: () async {
                host_key_algorithms ??= [];
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings:
                            ListAddScreen.routSettings("host_key_algorithms"),
                        builder: (context) => ListAddScreen(
                              title: "host_key_algorithms",
                              data: host_key_algorithms!,
                            )));
              })),
      GroupItemOptions(
          textFormFieldOptions: GroupItemTextFieldOptions(
              name: "client_version",
              text: client_version,
              textWidthPercent: 0.6,
              onChanged: (String value) {
                client_version = value;
              })),
      GroupItemOptions(
          pushOptions: GroupItemPushOptions(
              name: "udp_over_tcp",
              onPush: () async {
                udp_over_tcp ??= SingboxJsonUDPOverTCPOptions();

                await Navigator.push(
                    context,
                    MaterialPageRoute(
                        settings: GroupScreen.routSettings("udp_over_tcp"),
                        builder: (context) => GroupScreen(
                              title: "udp_over_tcp",
                              getOptions: udp_over_tcp!.getWidgetOptions,
                            )));
              })),
    ]);
    List<GroupItem> allOptions =
        await super.getWidgetOptions(context, setstate);
    allOptions.add(GroupItem(options: options));
    return allOptions;
  }
}

class SingboxJsonDialerOptions {
  String? detour;
  String? bind_interface;
  String? inet4_bind_address;
  String? inet6_bind_address;
  String? protect_path;
  int? routing_mark;
  bool? reuse_addr;
  String? connect_timeout;
  bool? tcp_fast_open;
  bool? tcp_multi_path;
  bool? udp_fragment;

  String? domain_strategy;
  int? fallback_delay;

  SingboxJsonDialerOptions({
    this.detour,
    this.bind_interface,
    this.inet4_bind_address,
    this.inet6_bind_address,
    this.protect_path,
    this.routing_mark,
    this.reuse_addr,
    this.connect_timeout,
    this.tcp_fast_open,
    this.tcp_multi_path,
    this.udp_fragment,
    this.domain_strategy,
    this.fallback_delay,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    if (detour != null && detour!.isNotEmpty) {
      ret['detour'] = detour;
    }
    if (bind_interface != null && bind_interface!.isNotEmpty) {
      ret['bind_interface'] = bind_interface;
    }
    if (inet4_bind_address != null && inet4_bind_address!.isNotEmpty) {
      ret['inet4_bind_address'] = inet4_bind_address;
    }
    if (inet6_bind_address != null && inet6_bind_address!.isNotEmpty) {
      ret['inet6_bind_address'] = inet6_bind_address;
    }
    if (protect_path != null && protect_path!.isNotEmpty) {
      ret['protect_path'] = protect_path;
    }
    if (routing_mark != null) {
      ret['routing_mark'] = routing_mark;
    }
    if (reuse_addr != null) {
      ret['reuse_addr'] = reuse_addr;
    }
    if (connect_timeout != null) {
      ret['connect_timeout'] = connect_timeout;
    }
    if (tcp_fast_open != null) {
      //ret['tcp_fast_open'] =  tcp_fast_open; //singbox tcp_fast_open 有bug会崩溃或者报错set read deadline,暂时全部屏蔽
      //测试:https://sub.sanfen017.xyz/api/v1/client/subscribe?token=528b2849170944806676657b916996ee&flag=shadowrocket
    }
    if (tcp_multi_path != null) {
      ret['tcp_multi_path'] = tcp_multi_path;
    }
    if (udp_fragment != null) {
      ret['udp_fragment'] = udp_fragment;
    }
    if (domain_strategy != null && domain_strategy!.isNotEmpty) {
      ret['domain_strategy'] = domain_strategy;
    }
    if (fallback_delay != null) {
      ret['fallback_delay'] = fallback_delay;
    }

    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    detour = map["detour"];
    bind_interface = map["bind_interface"];
    inet4_bind_address = map["inet4_bind_address"];
    inet6_bind_address = map["inet6_bind_address"];
    protect_path = map["protect_path"];
    routing_mark = map["routing_mark"];
    reuse_addr = map["reuse_addr"];
    connect_timeout = map["connect_timeout"];
    tcp_fast_open = map["tcp_fast_open"];
    tcp_multi_path = map["tcp_multi_path"];
    udp_fragment = map["udp_fragment"];
    domain_strategy = map["domain_strategy"];
    fallback_delay = map["fallback_delay"];
  }

  static SingboxJsonDialerOptions? fromJsonStatic(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonDialerOptions options = SingboxJsonDialerOptions();
    options.fromJson(map);
    return options;
  }
}

class SingboxJsonOptions {
  String tag = "";
  String type = "";
  String server = "";
  int server_port = 0;
  String attach = ""; //附加信息

  SingboxJsonDialerOptions? dialer;
  SingboxJsonOutboundSocksOptions? socks;
  SingboxJsonOutboundHTTPOptions? http;
  SingboxJsonOutboundShadowsocksOptions? shadowsocks;
  SingboxJsonOutboundShadowsocksROptions? shadowsocksr;
  SingboxJsonOutboundShadowTLSOptions? shadowtls;
  SingboxJsonOutboundHysteriaOptions? hysteria;
  SingboxJsonOutboundHysteria2Options? hysteria2;
  SingboxJsonOutboundTrojanOptions? trojan;
  SingboxJsonOutboundVLESSOptions? vless;
  SingboxJsonOutboundVMessOptions? vmess;
  SingboxJsonOutboundWireGuardOptions? wg;
  SingboxJsonOutboundTUICOptions? tuic;
  SingboxJsonOutboundTorOptions? tor;
  SingboxJsonOutboundSSHOptions? ssh;

  SingboxJsonOptions(
      {this.tag = "", this.type = "", this.server = "", this.server_port = 0});
  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret['server'] = server;
    ret['server_port'] = server_port;
    ret['tag'] = tag;
    ret['type'] = type;
    ret['attach'] = attach;
    if (dialer != null) {
      ret.addAll(dialer!.toJson());
    }
    if (socks != null) {
      ret.addAll(socks!.toJson());
    }
    if (http != null) {
      ret.addAll(http!.toJson());
    }
    if (shadowsocks != null) {
      ret.addAll(shadowsocks!.toJson());
    }
    if (shadowsocksr != null) {
      ret.addAll(shadowsocksr!.toJson());
    }
    if (shadowtls != null) {
      ret.addAll(shadowtls!.toJson());
    }
    if (hysteria != null) {
      ret.addAll(hysteria!.toJson());
    }
    if (hysteria2 != null) {
      ret.addAll(hysteria2!.toJson());
    }
    if (trojan != null) {
      ret.addAll(trojan!.toJson());
    }
    if (vless != null) {
      ret.addAll(vless!.toJson());
    }
    if (vmess != null) {
      ret.addAll(vmess!.toJson());
    }
    if (wg != null) {
      ret.addAll(wg!.toJson());
    }
    if (tuic != null) {
      ret.addAll(tuic!.toJson());
    }
    if (tor != null) {
      ret.addAll(tor!.toJson());
    }
    if (ssh != null) {
      ret.addAll(ssh!.toJson());
    }
    return ret;
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    server = map["server"] ?? "";
    server_port = map["server_port"] ?? 0;
    tag = map["tag"] ?? "";
    type = map["type"] ?? "";
    attach = map["attach"] ?? "";
    dialer = SingboxJsonDialerOptions.fromJsonStatic(map);
    switch (type) {
      case "shadowsocks":
        shadowsocks = SingboxJsonOutboundShadowsocksOptions.fromJsonStatic(map);
        break;
      case "shadowsocksr":
        shadowsocksr =
            SingboxJsonOutboundShadowsocksROptions.fromJsonStatic(map);
        break;
      case "shadowtls":
        shadowtls = SingboxJsonOutboundShadowTLSOptions.fromJsonStatic(map);
        break;
      case "vmess":
        vmess = SingboxJsonOutboundVMessOptions.fromJsonStatic(map);
        break;
      case "vless":
        vless = SingboxJsonOutboundVLESSOptions.fromJsonStatic(map);
        break;
      case "trojan":
        trojan = SingboxJsonOutboundTrojanOptions.fromJsonStatic(map);
        break;
      case "socks":
        socks = SingboxJsonOutboundSocksOptions.fromJsonStatic(map);
        break;
      case "http":
        http = SingboxJsonOutboundHTTPOptions.fromJsonStatic(map);
        break;
      case "hysteria":
        hysteria = SingboxJsonOutboundHysteriaOptions.fromJsonStatic(map);
        break;
      case "hysteria2":
        hysteria2 = SingboxJsonOutboundHysteria2Options.fromJsonStatic(map);
        break;
      case "wireguard":
        wg = SingboxJsonOutboundWireGuardOptions.fromJsonStatic(map);
        break;
      case "tuic":
        tuic = SingboxJsonOutboundTUICOptions.fromJsonStatic(map);
        break;
      case "tor":
        tor = SingboxJsonOutboundTorOptions.fromJsonStatic(map);
        break;
      case "ssh":
        ssh = SingboxJsonOutboundSSHOptions.fromJsonStatic(map);
        break;
    }
  }

  bool isValid() {
    switch (type) {
      case "shadowsocks":
      case "shadowsocksr":
      case "shadowtls":
      case "vmess":
      case "vless":
      case "trojan":
      case "socks":
      case "http":
      case "hysteria":
      case "hysteria2":
      case "wireguard":
      case "tuic":
      case "tor":
      case "ssh":
        return true;
    }
    return false;
  }

  static SingboxJsonOptions? fromJsonStatic(Map<String, dynamic>? map) {
    if (map == null) {
      return null;
    }
    SingboxJsonOptions options = SingboxJsonOptions();
    options.fromJson(map);
    return options;
  }

  Future<List<GroupItem>> getWidgetOptions(
      BuildContext context, SetStateCallback? setstate) async {
    if (socks != null) {
      return socks!.getWidgetOptions(context, setstate);
    }
    if (http != null) {
      return http!.getWidgetOptions(context, setstate);
    }
    if (shadowsocks != null) {
      return shadowsocks!.getWidgetOptions(context, setstate);
    }
    if (shadowsocksr != null) {
      return shadowsocksr!.getWidgetOptions(context, setstate);
    }
    if (shadowtls != null) {
      return shadowtls!.getWidgetOptions(context, setstate);
    }
    if (hysteria != null) {
      return hysteria!.getWidgetOptions(context, setstate);
    }
    if (hysteria2 != null) {
      return hysteria2!.getWidgetOptions(context, setstate);
    }
    if (trojan != null) {
      return trojan!.getWidgetOptions(context, setstate);
    }
    if (vless != null) {
      return vless!.getWidgetOptions(context, setstate);
    }
    if (vmess != null) {
      return vmess!.getWidgetOptions(context, setstate);
    }
    if (wg != null) {
      return wg!.getWidgetOptions(context, setstate);
    }
    if (tuic != null) {
      return tuic!.getWidgetOptions(context, setstate);
    }
    if (tor != null) {
      return tor!.getWidgetOptions(context, setstate);
    }
    if (ssh != null) {
      return ssh!.getWidgetOptions(context, setstate);
    }

    return [];
  }
}
