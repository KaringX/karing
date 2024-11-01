// ignore_for_file: unused_catch_stack

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/clash_api.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';

class DiversionRuleDetectScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "DiversionRuleDetectScreen");
  }

  const DiversionRuleDetectScreen({super.key});

  @override
  State<DiversionRuleDetectScreen> createState() =>
      _DiversionRuleDetectScreenState();
}

class _DiversionRuleDetectScreenState
    extends LasyRenderingState<DiversionRuleDetectScreen> {
  final _textControllerHost = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  bool _checking = false;
  final ValueNotifier<String> _rule = ValueNotifier<String>("");
  final ValueNotifier<String> _chain = ValueNotifier<String>("");
  final ValueNotifier<String> _ruleset = ValueNotifier<String>("");

  @override
  void initState() {
    super.initState();
    _textControllerHost.value = const TextEditingValue(text: "google.com");
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  Future<bool> startVPN() async {
    return await Biz.startVPN(context, true, "DiversionRuleDetectScreen");
  }

  String getTagName(String tag) {
    final tcontext = Translations.of(context);
    if (tag == kOutboundTagUrltest) {
      return tcontext.outboundActionUrltest;
    } else if (tag == kOutboundTagDirect) {
      return tcontext.outboundActionDirect;
    } else if (tag == kOutboundTagBlock) {
      return tcontext.outboundActionBlock;
    } else if (tag == kOutboundTagDns) {
      return tcontext.dns;
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
      case kDnsTagFinal:
        data["tag"] = tcontext.routeFinal;
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
                    width: windowSize.width - 50 * 2,
                    child: Text(
                      tcontext.DiversionRuleDetectScreen.title,
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
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(18, 10, 18, 10),
                    child: Column(
                      children: [
                        TextField(
                          focusNode: _focusNode,
                          controller: _textControllerHost,
                          textInputAction: TextInputAction.done,
                          cursorColor: Colors.black,
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
                                child: ElevatedButton.icon(
                                    icon: const Icon(
                                        Icons.network_check_outlined),
                                    label: Text(tcontext
                                        .DiversionRuleDetectScreen.detect),
                                    onPressed: () async {
                                      onPressCheck();
                                    }))
                            : const SizedBox(
                                width: 45,
                                height: 45,
                                child: RepaintBoundary(
                                  child:
                                      CircularProgressIndicator(strokeWidth: 2),
                                ),
                              ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(t.DiversionRuleDetectScreen.rule),
                            ValueListenableBuilder<String>(
                              builder: _buildWithValue,
                              valueListenable: _rule,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(t.DiversionRuleDetectScreen.outbound),
                            ValueListenableBuilder<String>(
                              builder: _buildWithValue,
                              valueListenable: _chain,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Rule Set:"),
                            ValueListenableBuilder<String>(
                              builder: _buildWithValue,
                              valueListenable: _ruleset,
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onPressCheck() async {
    if (!mounted) {
      return;
    }
    if (_focusNode.hasFocus) {
      _focusNode.unfocus();
    }

    final tcontext = Translations.of(context);
    _rule.value = "";
    _chain.value = "";
    _ruleset.value = "";
    String domain = _textControllerHost.text.toString().trim();
    Uri? uri = Uri.tryParse(domain);
    if (uri != null && uri.host.isNotEmpty) {
      domain = uri.host;
    }

    if (!NetworkUtils.isDomain(domain, false)) {
      DialogUtils.showAlertDialog(
          context, tcontext.NetCheckScreen.invalidDomain);
      return;
    }
    bool ok = await startVPN();
    if (!ok) {
      return;
    }
    _checking = true;
    setState(() {});
    String ip = "";
    var setting = SettingManager.getConfig();
    if (!setting.novice && setting.dns.enableInboundDomainResolve) {
      ReturnResult<String> resultDns = await ClashApi.dnsQueryWithDefaultRouter(
          SettingManager.getConfig().proxy.controlPort,
          domain,
          setting.ipStrategy.name);
      if (resultDns.error == null) {
        var config = jsonDecode(resultDns.data!);
        if (config != null) {
          List addr = config["addr"] ?? [];
          //var dns = config["tag"];
          if (addr.isNotEmpty) {
            ip = addr[0] as String;
          }
        }
      }
    }

    ReturnResult<String> outboundResult =
        await ClashApi.outboundQuery(setting.proxy.controlPort, domain, ip);

    if (outboundResult.error == null) {
      try {
        Map<String, dynamic> data = jsonDecode(outboundResult.data!);
        String err = data["err"] ?? "";
        if (err.isEmpty) {
          String rule = data["rule"] ?? "";
          String rulechain = "";

          if (data["rulechain"] != null) {
            List<String> chain = [];
            for (var i in data["rulechain"]) {
              chain.add(i);
            }
            rulechain = getChain(chain);
          }
          _rule.value = rule;
          _chain.value = rulechain;
        } else {
          _rule.value = err;
          _chain.value = "";
        }
      } catch (err, stacktrace) {
        _rule.value = err.toString();
        _chain.value = "";
      }
    } else {
      _rule.value = outboundResult.error!.message;
      _chain.value = "";
    }

    var result =
        await ClashApi.getRemoteRulesetsCount(setting.proxy.controlPort);
    if (!mounted) {
      return;
    }

    if (result.error == null) {
      final tcontext = Translations.of(context);

      result.data!.forEach((key, value) {
        if (value == 0) {
          _ruleset.value +=
              "$key: ${tcontext.NetCheckScreen.remoteRulesetsDownloadNotOk}\n";
        }
      });
      if (_ruleset.value.isEmpty) {
        _ruleset.value += tcontext.NetCheckScreen.remoteRulesetsDownloadOk;
      }
    } else {
      _ruleset.value += result.error!.message;
    }

    _checking = false;

    setState(() {});
  }

  Widget _buildWithValue(BuildContext context, String value, Widget? child) {
    return SizedBox(
      width: 200,
      child: Text(
        value,
        style: const TextStyle(
          fontSize: ThemeConfig.kFontSizeListSubItem,
        ),
      ),
    );
  }
}
