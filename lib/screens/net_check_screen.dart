import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/clash_api.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/websocket.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/listview_multi_parts_builder.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';
import 'package:tuple/tuple.dart';

class NetCheckItem {
  String name = "";
  List<ReturnResult<String>> values = [];
  void clear() => values.clear();
}

class NetCheckItemWarpper {
  NetCheckItem? item;
}

class NetCheckScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "NetCheckScreen");
  }

  const NetCheckScreen({super.key});

  @override
  State<NetCheckScreen> createState() => _NetCheckScreenState();
}

class _NetCheckScreenState extends LasyRenderingState<NetCheckScreen> {
  final List<ListViewMultiPartsItem> _listViewParts = [];

  Websocket? _websocket;
  final _textControllerHost = TextEditingController();
  Tuple2<String, int?> _domainAndPort = const Tuple2("", null);
  String _domain = "";
  bool _checking = false;
  NetCheckItem? _netCheckItemConnectivity;
  NetCheckItem? _netCheckItemRemoteRulesets;
  NetCheckItem? _netCheckItemOutboundDNSQuery;
  NetCheckItem? _netCheckItemOutbound;
  NetCheckItem? _netCheckItemNonOutboundDNSQuery;
  NetCheckItem? _netCheckItemDomainDNSQuery;
  NetCheckItem? _netCheckItemHostConnectivity;

  @override
  void initState() {
    super.initState();
    _domain = SettingManager.getConfig().ui.netCheckDomain;
    _domainAndPort = Tuple2(_domain, null);
    _textControllerHost.value = TextEditingValue(text: _domain);

    _buildData();
    _connectLog();
  }

  @override
  void dispose() {
    _disconnectLog();
    super.dispose();
    if (_domain.isNotEmpty &&
        _domain != SettingManager.getConfig().ui.netCheckDomain) {
      SettingManager.getConfig().ui.netCheckDomain = _domain;
      SettingManager.saveConfig();
    }
  }

  Future<bool> startVPN() async {
    return await Biz.startOrRestartIfDirtyVPN(context, "NetCheckScreen");
  }

  void _connectLog() async {
    bool inProduction = const bool.fromEnvironment("dart.vm.product");
    if (inProduction) {
      return;
    }
    String url = await ClashApi.getLogsUrl(
        SettingManager.getConfig().proxy.controlPort, "info");
    _websocket ??= Websocket(
        url: url,
        userAgent: await HttpUtils.getUserAgent(),
        onMessage: (String message) {
          // print(message);
        },
        onDone: () {
          _disconnectLog();
        },
        onError: (err) {
          _disconnectLog();
        });
    await _websocket!.connect();
  }

  void _disconnectLog() async {
    await _websocket?.disconnect();
  }

  String getTagName(String tag) {
    final tcontext = Translations.of(context);
    if (tag == kOutboundTagUrltest) {
      return tcontext.outboundRuleMode.urltest;
    } else if (tag == kOutboundTagDirect) {
      return tcontext.outboundRuleMode.direct;
    } else if (tag == kOutboundTagBlock) {
      return tcontext.outboundRuleMode.block;
    } else if (tag == kOutboundTagDns) {
      return tcontext.meta.dns;
    }
    return tag;
  }

  Map<String, dynamic> decodeDataFromDnsQueryWithDefaultRouter(
      String jsondata) {
    final tcontext = Translations.of(context);
    Map<String, dynamic> data = jsonDecode(jsondata);
    String tag = data["tag"] ?? "";
    switch (tag) {
      case kDnsTagResolver:
        data["tag"] = tcontext.SettingsScreen.dnsTypeResolver;
        break;
      case kDnsTagOutbound:
        data["tag"] = tcontext.SettingsScreen.dnsTypeOutbound;
        break;
      case kDnsTagDirect:
        data["tag"] = tcontext.SettingsScreen.dnsTypeDirect;
        break;
      case kDnsTagProxy:
        data["tag"] = tcontext.SettingsScreen.dnsTypeProxy;
        break;
      case kDnsTagBlock:
        data["tag"] = "block";
        break;
    }
    return data;
  }

  String getChain(List<String> chain) {
    if (chain.isEmpty) {
      return "";
    }
    for (var i = 0; i < chain.length; i++) {
      chain[i] = getTagName(chain[i]);
    }
    if (chain.length >= 2) {
      return "${chain[0]} -> ${chain[chain.length - 1]}";
    }
    return chain[0];
  }

  void _buildData() {
    _listViewParts.clear();
    {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        return _createHeadField();
      };
      _listViewParts.add(item);
    }
    List<NetCheckItem?> checks = [
      _netCheckItemConnectivity,
      _netCheckItemRemoteRulesets,
      _netCheckItemOutboundDNSQuery,
      _netCheckItemOutbound,
      _netCheckItemNonOutboundDNSQuery,
      _netCheckItemDomainDNSQuery,
      _netCheckItemHostConnectivity,
    ];
    for (var check in checks) {
      if (check == null) {
        return;
      }
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        return _createItem(check);
      };
      _listViewParts.add(item);
    }
    {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.creator = (data, index, bindNO) {
        return _createTailField();
      };
      _listViewParts.add(item);
    }
  }

  Tuple2<String, int?> getDomainAndPort() {
    int? port;
    String domain = _textControllerHost.text.toString().trim();
    Uri? uri = Uri.tryParse(domain);
    if (uri != null && uri.host.isNotEmpty) {
      domain = uri.host;
      port = uri.port;
    } else {
      List<String> domainList = domain.split(":");
      if (domainList.length == 2) {
        domain = domainList[0];
        port = int.tryParse(domainList[1]) ?? 443;
      }
    }
    return Tuple2(domain, port);
  }

  Future<bool> _checkConnectivity() async {
    var setting = SettingManager.getConfig();
    final tcontext = Translations.of(context);
    _netCheckItemConnectivity ??= NetCheckItem();
    _netCheckItemConnectivity!.name = tcontext.NetCheckScreen.connectivity;

    List<String> ipsv4 = [];
    List<String> ipsv6 = [];

    bool ipv4Ok = false;
    bool ipv6Ok = false;
    for (var item in SettingConfigItemDNS.kDNSList) {
      String url = item["url"];
      if (!url.contains("://")) {
        continue;
      }
      Uri? uri = Uri.tryParse(url);
      if (uri == null) {
        continue;
      }
      if (!NetworkUtils.isIpv4(uri.host)) {
        continue;
      }

      var result = await ServerManager.testDNSConnectLatency(
          [url], kOutboundTagDirect, null);

      if (!mounted) {
        return false;
      }
      if (result.error == null) {
        ipv4Ok = true;
        break;
      }
      ipsv4.add(uri.host);
    }
    if (!ipv4Ok) {
      _netCheckItemConnectivity?.values.add(ReturnResult(
          error: ReturnResultError(
              tcontext.NetCheckScreen.connectivityTestIpv4AllFailed(
                  p: ipsv4.toString()))));
    } else {
      _netCheckItemConnectivity?.values.add(
          ReturnResult(data: tcontext.NetCheckScreen.connectivityTestIpv4Ok));
    }

    if (setting.ipStrategy.index >= IPStrategy.preferIPv4.index) {
      for (var item in SettingConfigItemDNS.kDNSList) {
        String url = item["url"];
        if (!url.contains("://")) {
          continue;
        }
        Uri? uri = Uri.tryParse(url);
        if (uri == null) {
          continue;
        }
        if (!NetworkUtils.isIpv6(uri.host)) {
          continue;
        }

        var result = await ServerManager.testDNSConnectLatency(
            [url], kOutboundTagDirect, null);

        if (!mounted) {
          return false;
        }
        if (result.error == null) {
          ipv6Ok = true;
          break;
        }
        ipsv6.add(uri.host);
      }

      if (!ipv6Ok) {
        _netCheckItemConnectivity?.values.add(ReturnResult(
            error: ReturnResultError(
                tcontext.NetCheckScreen.connectivityTestIpv6AllFailed(
                    p: ipsv6.toString()))));
      } else {
        _netCheckItemConnectivity?.values.add(
            ReturnResult(data: tcontext.NetCheckScreen.connectivityTestIpv6Ok));
      }
    }

    if (ipv4Ok || (!setting.novice && ipv6Ok)) {
      _netCheckItemConnectivity?.values
          .add(ReturnResult(data: tcontext.NetCheckScreen.connectivityTestOk));
    } else {
      _netCheckItemConnectivity?.values.add(ReturnResult(
          error: ReturnResultError(
              tcontext.NetCheckScreen.connectivityTestFailed)));
    }

    return ipv4Ok || (!setting.novice && ipv6Ok);
  }

  Future<bool> _checkOutboundDnsQuery() async {
    var setting = SettingManager.getConfig();
    List<DNSType> dnsTypes = !setting.novice
        ? [
            DNSType.dnsTypeResolver,
            DNSType.dnsTypeOutbound,
            DNSType.dnsTypeDirect
          ]
        : [DNSType.dnsTypeResolver, DNSType.dnsTypeDirect];
    NetCheckItemWarpper warpper = NetCheckItemWarpper();
    bool ok = await _checkDnsQuery(warpper, dnsTypes);
    if (!mounted) {
      return false;
    }
    _netCheckItemOutboundDNSQuery = warpper.item;
    return ok;
  }

  Future<bool> _checkOutbound() async {
    final tcontext = Translations.of(context);
    var settingConfig = SettingManager.getConfig();
    _netCheckItemOutbound ??= NetCheckItem();
    _netCheckItemOutbound!.name = tcontext.NetCheckScreen.outbound;
    ProxyConfig current = VPNService.getCurrent();
    String tag = current.tag;
    String realTag = tag;
    if (current.groupid == ServerManager.getUrltestGroupId()) {
      if (tag != kOutboundTagUrltest) {
        realTag = ServerManager.getUrltestTagForCustom(tag);
      }
    }
    ReturnResult<String> result = await ClashApi.getDelay(
        settingConfig.proxy.controlPort, realTag, settingConfig.urlTestTimeout,
        url: SettingManager.getConfig().urlTest);
    if (!mounted) {
      return false;
    }
    String name = getTagName(tag);
    bool hasError = false;
    String domain = current.server;

    String strategy = settingConfig.ipStrategy.name;
    if (NetworkUtils.isDomain(domain, false)) {
      ReturnResult<String> resultDns = await ClashApi.dnsQueryWithDefaultRouter(
          settingConfig.proxy.controlPort, domain, strategy);
      if (!mounted) {
        return false;
      }
      if (resultDns.error == null) {
        Map<String, dynamic> data =
            decodeDataFromDnsQueryWithDefaultRouter(resultDns.data!);
        String tag = data["tag"] ?? "";
        int? latency = data["latency"];
        String? err = data["err"];
        var addrs = data["addr"];
        // List<dynamic>? addr = data["addr"];
        if (err == null) {
          _netCheckItemOutbound?.values.add(ReturnResult(
              data: tcontext.NetCheckScreen.dnsOk(
                  p1: domain,
                  p2: tag,
                  p3: latency ?? 0,
                  p4: addrs != null ? addrs.join(",") : "")));
        } else {
          _netCheckItemOutbound?.values.add(ReturnResult(
              error: ReturnResultError(tcontext.NetCheckScreen.dnsFailed(
                  p1: domain, p2: tag, p3: err))));
          return false;
        }
      } else {
        hasError = true;
        _netCheckItemOutbound?.values.add(result);
      }
    }
    if (hasError) {
      return false;
    }

    if (result.error == null) {
      _netCheckItemOutbound?.values
          .add(ReturnResult(data: tcontext.NetCheckScreen.outboundOk(p: name)));
    } else {
      _netCheckItemOutbound?.values.add(ReturnResult(
          error: ReturnResultError(tcontext.NetCheckScreen.outboundFailed(
              p1: name, p2: result.error!.message))));
    }
    return result.error == null;
  }

  Future<bool> _checkNonOutboundDnsQuery() async {
    NetCheckItemWarpper warpper = NetCheckItemWarpper();
    bool ok = await _checkDnsQuery(warpper, [DNSType.dnsTypeProxy]);
    if (!mounted) {
      return false;
    }
    _netCheckItemNonOutboundDNSQuery = warpper.item;
    return ok;
  }

  Future<bool> _checkDnsQuery(
      NetCheckItemWarpper wrapper, List<DNSType> dnsTypes) async {
    final tcontext = Translations.of(context);
    wrapper.item ??= NetCheckItem();
    wrapper.item!.name = tcontext.NetCheckScreen.dnsServer;

    var settingConfig = SettingManager.getConfig();
    String regionCode = settingConfig.regionCode.toLowerCase();
    bool tunMode = await VPNService.getTunMode();

    ProxyConfig current = VPNService.getCurrent();
    bool hasError = false;
    for (var dnsType in dnsTypes) {
      List<String> dnsAddress = [];
      String detour = "";
      String detourName = "";
      String name = "";

      if (dnsType == DNSType.dnsTypeOutbound) {
        dnsAddress = settingConfig.dns.getOutboundDns(regionCode, tunMode);
        name = tcontext.SettingsScreen.dnsTypeOutbound;
        detour = kOutboundTagDirect;
      } else if (dnsType == DNSType.dnsTypeDirect) {
        dnsAddress = settingConfig.dns.getDirectDns(regionCode, tunMode);
        name = tcontext.SettingsScreen.dnsTypeDirect;
        detour = kOutboundTagDirect;
      } else if (dnsType == DNSType.dnsTypeProxy) {
        dnsAddress = settingConfig.dns.getProxyDns(regionCode, tunMode);
        name = tcontext.SettingsScreen.dnsTypeProxy;
        switch (settingConfig.dns.proxyResolveMode) {
          case SettingConfigItemDNSProxyResolveMode.fakeip:
            detourName = tcontext.dnsProxyResolveMode.fakeip;
            break;
          case SettingConfigItemDNSProxyResolveMode.proxy:
            detourName = tcontext.dnsProxyResolveMode.proxy;
            break;
          case SettingConfigItemDNSProxyResolveMode.direct:
            detourName = tcontext.dnsProxyResolveMode.direct;
            break;
        }

        if (settingConfig.dns.proxyResolveMode ==
            SettingConfigItemDNSProxyResolveMode.direct) {
          detour = kOutboundTagDirect;
        } else {
          detour = current.tag;
          if (current.groupid == ServerManager.getUrltestGroupId()) {
            if (detour != kOutboundTagUrltest) {
              detour = ServerManager.getUrltestTagForCustom(detour);
            }
          }
        }
      } else if (dnsType == DNSType.dnsTypeResolver) {
        dnsAddress = settingConfig.dns.getResolverDns(regionCode, tunMode);
        name = tcontext.SettingsScreen.dnsTypeResolver;
        detour = kOutboundTagDirect;
      }

      ReturnResult<int> result =
          await ServerManager.testDNSConnectLatency(dnsAddress, detour, null);
      if (!mounted) {
        return false;
      }
      if (result.error == null) {
        wrapper.item!.values.add(ReturnResult(
            data: detourName.isNotEmpty
                ? "$name[$detourName]:[${result.data} ms]"
                : "$name:[${result.data} ms]"));
      } else {
        hasError = true;
        wrapper.item!.values.add(ReturnResult(
            error: ReturnResultError(detourName.isNotEmpty
                ? "$name[$detourName]:${result.error!.message}"
                : "$name:${result.error!.message}")));
      }
    }
    return !hasError;
  }

  Future<bool> _checkDomainDnsQuery() async {
    final tcontext = Translations.of(context);
    var settingConfig = SettingManager.getConfig();
    _netCheckItemDomainDNSQuery ??= NetCheckItem();
    _netCheckItemDomainDNSQuery!.name = tcontext.meta.dns;

    String strategy = settingConfig.ipStrategy.name;
    ReturnResult<String> result = await ClashApi.dnsQueryWithDefaultRouter(
        settingConfig.proxy.controlPort,
        _domainAndPort.item1,
        strategy); //sb 10s

    List<String> dnsResult = await NetworkUtils.dnsLookup(_domainAndPort.item1,
        settingConfig.ipStrategy.index >= IPStrategy.preferIPv4.index);
    if (!mounted) {
      return false;
    }
    if (result.error == null) {
      final tcontext = Translations.of(context);

      Map<String, dynamic> data =
          decodeDataFromDnsQueryWithDefaultRouter(result.data!);
      String tag = data["tag"] ?? "";
      int? latency = data["latency"];
      String? err = data["err"];
      var addrs = data["addr"];

      String addrsStr = addrs != null ? addrs.join(",") : "";
      String addrsStr1 = dnsResult.isNotEmpty ? dnsResult.join(",") : "";

      _netCheckItemDomainDNSQuery?.values.add(ReturnResult(
          data: (settingConfig.dns.proxyResolveMode ==
                  SettingConfigItemDNSProxyResolveMode.fakeip)
              ? "FakeIP[ON]"
              : "FakeIP[OFF]"));

      if (err == null) {
        _netCheckItemDomainDNSQuery?.values.add(ReturnResult(
            data: tcontext.NetCheckScreen.dnsOk(
                p1: _domainAndPort.item1,
                p2: tag,
                p3: latency ?? 0,
                p4: "$addrsStr/$addrsStr1")));
      } else {
        _netCheckItemDomainDNSQuery?.values.add(ReturnResult(
            error: ReturnResultError(tcontext.NetCheckScreen.dnsFailed(
                p1: _domainAndPort.item1, p2: tag, p3: err))));
        return false;
      }
    } else {
      _netCheckItemDomainDNSQuery?.values.add(result);
    }

    return result.error == null;
  }

  Future<bool> _checkRemoteRulesets() async {
    _netCheckItemRemoteRulesets ??= NetCheckItem();
    _netCheckItemRemoteRulesets!.name = "Rule Set";

    var result = await ClashApi.getRemoteRulesetsCount(
        SettingManager.getConfig().proxy.controlPort);
    if (!mounted) {
      return false;
    }
    if (result.error == null) {
      final tcontext = Translations.of(context);
      result.data!.forEach((key, value) {
        if (value == 0) {
          _netCheckItemRemoteRulesets?.values.add(ReturnResult(
              error: ReturnResultError(
                  "$key: ${tcontext.NetCheckScreen.remoteRulesetsDownloadNotOk}")));
        }
      });
      if (_netCheckItemRemoteRulesets!.values.isEmpty) {
        _netCheckItemRemoteRulesets?.values.add(ReturnResult(
            data: tcontext.NetCheckScreen.remoteRulesetsDownloadOk));
      }
    } else {
      _netCheckItemRemoteRulesets?.values
          .add(ReturnResult(error: result.error));
    }
    return true;
  }

  Future<bool> _checkHostConnectivity() async {
    final tcontext = Translations.of(context);
    var settingConfig = SettingManager.getConfig();
    _netCheckItemHostConnectivity ??= NetCheckItem();
    _netCheckItemHostConnectivity!.name = tcontext.NetCheckScreen.host;
    const timeout = Duration(seconds: 10);

    bool ok = false;
    /*if (NetworkUtils.isIpv4(domain) || NetworkUtils.isIpv6(domain)) {
      ReturnResult<int> result =
          await NetworkUtils.testConnectLatency(domain, 443, timeout);
      if (result.error == null) {
        _netCheckItemHostConnectivity?.values
            .add(ReturnResult(data: "[$domain] ok"));
      } else {
        _netCheckItemHostConnectivity?.values
            .add(ReturnResult(error: ReturnResultError(result.error!.message)));
      }
      ok = result.error == null;
    } else */
    if (NetworkUtils.isDomain(_domainAndPort.item1, false)) {
      String domain = _domainAndPort.item1;
      String ip = "";
      var setting = SettingManager.getConfig();
      if (!setting.novice && setting.dns.enableInboundDomainResolve) {
        ReturnResult<String> resultDns =
            await ClashApi.dnsQueryWithDefaultRouter(
                SettingManager.getConfig().proxy.controlPort,
                domain,
                setting.ipStrategy.name);
        if (resultDns.error == null) {
          var config = jsonDecode(resultDns.data!);
          List addr = config["addr"] ?? [];
          //var dns = config["tag"];
          if (addr.isNotEmpty) {
            ip = addr[0] as String;
          }
        }
      }

      ReturnResult<String> outboundResult = await ClashApi.outboundQuery(
          settingConfig.proxy.controlPort, domain, ip);
      if (!mounted) {
        return false;
      }
      String rule = "";
      String rulechain = "";

      if (outboundResult.error == null) {
        Map<String, dynamic> data = jsonDecode(outboundResult.data!);
        rule = data["rule"] ?? "";
        if (data["chain"] != null) {
          List<String> chain = [];
          for (var i in data["chain"]) {
            chain.add(i);
          }
          rulechain = getChain(chain);
        }
      }

      late ReturnResult<String> result;
      if (_domainAndPort.item2 == null) {
        result = await HttpUtils.httpGetRequest(
            "https://${_domainAndPort.item1}",
            settingConfig.proxy.mixedRulePort,
            null,
            timeout,
            null,
            null,
            noResponseBody: true);
        if (!mounted) {
          return false;
        }
        if (result.error != null) {
          result = await HttpUtils.httpGetRequest(
              "http://${_domainAndPort.item1}",
              settingConfig.proxy.mixedRulePort,
              null,
              timeout,
              null,
              null,
              noResponseBody: true);
        }
      } else {
        result = await HttpUtils.httpGetRequest(
            "https://${_domainAndPort.item1}:${_domainAndPort.item2}",
            settingConfig.proxy.mixedRulePort,
            null,
            timeout,
            null,
            null,
            noResponseBody: true);
        if (!mounted) {
          return false;
        }
        if (result.error != null) {
          result = await HttpUtils.httpGetRequest(
              "http://${_domainAndPort.item1}:${_domainAndPort.item2}",
              settingConfig.proxy.mixedRulePort,
              null,
              timeout,
              null,
              null,
              noResponseBody: true);
        }
      }

      if (!mounted) {
        return false;
      }
      _netCheckItemHostConnectivity?.values.add(ReturnResult(
          data: tcontext.NetCheckScreen.hostConnection(
              p1: _domainAndPort.item1, p2: rule, p3: rulechain)));

      if (result.error == null ||
          result.error!.message.contains("http statusCode:")) {
        _netCheckItemHostConnectivity?.values
            .add(ReturnResult(data: tcontext.NetCheckScreen.hostConnectionOk));
      } else {
        _netCheckItemHostConnectivity?.values.add(ReturnResult(
            error: ReturnResultError(
                tcontext.NetCheckScreen.hostConnectionFailed(
                    p: result.error!.message))));
      }
      ok = result.error == null;
    }

    return ok;
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            children: [
              Row(
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
                    width: windowSize.width - 50 * 3 - 26,
                    child: Text(
                      tcontext.NetCheckScreen.title,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontWeight: ThemeConfig.kFontWeightTitle,
                          fontSize: ThemeConfig.kFontSizeTitle),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListViewMultiPartsBuilder.build(_listViewParts),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createHeadField() {
    final tcontext = Translations.of(context);
    var currentCountry = SettingManager.getConfig().currentCountry();
    final countryName = currentCountry
            .isoShortNameByLocale[SettingConfig.languageTagForCountry()] ??
        "";
    return Padding(
        padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
        child: Column(
          children: [
            TextFieldEx(
              controller: _textControllerHost,
              textInputAction: TextInputAction.done,
              decoration: const InputDecoration(
                labelText: "Domain",
                hintText: "Domain",
                prefixIcon: Icon(Icons.edit_note_outlined),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            !_checking
                ? SizedBox(
                    height: 45.0,
                    child: ElevatedButton(
                        child: Text(tcontext.meta.check),
                        onPressed: () async {
                          onPressCheck();
                        }))
                : const SizedBox(
                    width: 45,
                    height: 45,
                    child: RepaintBoundary(
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
            const SizedBox(
              height: 10,
            ),
            Text(
              tcontext.NetCheckScreen.warn,
              style:
                  const TextStyle(fontSize: ThemeConfig.kFontSizeListSubItem),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "${tcontext.RegionSettingsScreen.title}:$countryName",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: ThemeConfig.kFontSizeGroupItem,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () async {
                    try {
                      await Clipboard.setData(ClipboardData(text: _domain));
                    } catch (e) {}
                  },
                  child: Text(
                    "Domain: $_domain",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: ThemeConfig.kFontSizeGroupItem,
                      color: _domain != _domainAndPort.item1
                          ? Colors.yellow
                          : null,
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }

  Widget _createItem(NetCheckItem? item) {
    if (item == null) {
      return const SizedBox.shrink();
    }
    Size windowSize = MediaQuery.of(context).size;
    const double paddingLR = 18;
    double textWidth = windowSize.width - 10 - 15 - 5 - paddingLR * 2;
    return Padding(
        padding: const EdgeInsets.fromLTRB(paddingLR, 10, paddingLR, 10),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: const TextStyle(fontSize: ThemeConfig.kFontSizeListItem),
              ),
              const SizedBox(
                height: 5,
              ),
              ...item.values.map((item) {
                ReturnResult<String> result = item;
                return Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      result.error == null
                          ? Icons.check_circle_outline
                          : Icons.warning_amber_outlined,
                      color: result.error == null ? Colors.green : Colors.red,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    SizedBox(
                      width: textWidth,
                      child: Text(
                          result.error == null
                              ? result.data!
                              : result.error!.message,
                          style: TextStyle(
                              fontSize: ThemeConfig.kFontSizeListSubItem,
                              color: result.error == null
                                  ? Colors.green
                                  : Colors.red)),
                    )
                  ],
                );
              })
            ]));
  }

  Widget _createTailField() {
    return const SizedBox(
      height: 200,
    );
  }

  Future<void> onPressCheck() async {
    if (!mounted) {
      return;
    }
    _domainAndPort = getDomainAndPort();
    _domain = "";

    _netCheckItemConnectivity = null;
    _netCheckItemRemoteRulesets = null;
    _netCheckItemOutboundDNSQuery = null;
    _netCheckItemOutbound = null;
    _netCheckItemNonOutboundDNSQuery = null;
    _netCheckItemDomainDNSQuery = null;
    _netCheckItemHostConnectivity = null;
    _buildData();
    setState(() {});
    if (!NetworkUtils.isDomain(_domainAndPort.item1, false)) {
      final tcontext = Translations.of(context);
      DialogUtils.showAlertDialog(
          context, tcontext.NetCheckScreen.invalidDomain);
      return;
    }
    _domain = NetworkUtils.getRealDomain(_domainAndPort.item1) ??
        _domainAndPort.item1;
    _disconnectLog();
    _connectLog();
    bool ok = await startVPN();
    if (!ok) {
      return;
    }
    _checking = true;
    List<Future<bool> Function()> callbacks = [
      _checkConnectivity,
      _checkRemoteRulesets,
      _checkOutboundDnsQuery,
      _checkOutbound,
      _checkNonOutboundDnsQuery,
      _checkDomainDnsQuery,
      _checkHostConnectivity
    ];

    for (var callback in callbacks) {
      bool ok = await callback();
      if (!ok) {
        break;
      }
      if (!mounted) {
        return;
      }
      _buildData();
      setState(() {});
    }
    if (!mounted) {
      return;
    }

    _checking = false;
    _buildData();
    setState(() {});
  }
}
