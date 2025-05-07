// ignore_for_file: non_constant_identifier_names, prefer_interpolation_to_compose_strings, empty_catches

import 'dart:convert';
import 'dart:io';

import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/clash_to_singbox.dart';
import 'package:karing/app/utils/clash_yaml.dart';
import 'package:karing/app/utils/emoji_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/singbox_json.dart';
import 'package:karing/app/utils/stacktrace_utils.dart';
import 'package:karing/app/utils/tag_gen.dart';
import 'package:karing/app/utils/v2ray_txt_utils.dart';
import 'package:path/path.dart' as path;
import 'package:tuple/tuple.dart';
import 'package:uuid/uuid.dart';
import 'package:yaml/yaml.dart';

//clash to singbox https://clash2sfa-xmdhs.koyeb.app/
class ClashYamlError {
  int? ret;
  String? msg;

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    ret = map["ret"];
    msg = map["msg"];
  }

  Map<String, dynamic> toJson() => {'ret': ret, 'msg': msg};
}

abstract final class ClashYamlUtils {
  static String kGlobalClientFingerprint = "global-client-fingerprint";
  static String kOfficalWebsiteName = "official-website";
  static String kISPName = "isp-name";
  static String kISPUrl = "isp-url";
  static String kISPFaq = "isp-faq";
  static String kProxyName = "proxies";
  static String kProxyGroupName = "proxy-groups";
  static String kProxyProvidersName =
      "proxy-providers"; //test https://raw.githubusercontent.com/james-curtis/sub-diversion-rules/hidden/clash.meta.yml
  static String kRuleProvidersName = "rule-providers";
  static String kRulesName = "rules";

  static Future<ReturnResult<bool>> tryConvert(
      String content,
      ServerConfigGroupItem proxyItem,
      ServerDiversionGroupItem? diversionGroupItem,
      TransExceptionAndUnsupport eu,
      bool tryProviders) async {
    if (content.length < 256) {
      List<String> lines = content.split("\n");
      if (lines.length == 1) {
        try {
          var obj = jsonDecode(lines[0]);
          ClashYamlError err = ClashYamlError();
          err.fromJson(obj);
          return ReturnResult(
            handled: err.ret != null,
            error: ReturnResultError("server response: ${err.msg ?? ""}"),
          );
        } catch (err, stacktrace) {
          return ReturnResult(
            handled: false,
            error: ReturnResultError("exception: ${err.toString()}",
                stacktrace: stacktrace),
          );
        }
      }
    }
    int indexProxy = content.indexOf("$kProxyName:");
    int indexProxyGroup = content.indexOf("$kProxyGroupName:");
    int indexRuleName = content.indexOf("$kRulesName:");
    if (indexProxy < 0 && indexProxyGroup < 0 && indexRuleName < 0) {
      return ReturnResult(
        handled: false,
        error: ReturnResultError("clash invalid yaml"),
      );
    }
    String proxyName = "";
    String proxyGroup = "";
    String proxyRuleName = "";
    if (indexProxy == 0) {
      int end = content.indexOf("\n", indexProxy);
      if (end > 0) {
        proxyName = content.substring(0, end).trim();
      }
    } else if (indexProxy > 0) {
      int start = content.lastIndexOf("\n", indexProxy);
      int end = content.indexOf("\n", indexProxy);
      if (start >= 0 && start < end) {
        proxyName = content.substring(start + 1, end).trim();
      }
    }

    if (indexProxyGroup == 0) {
      int end = content.indexOf("\n", indexProxyGroup);
      if (end > 0) {
        proxyGroup = content.substring(0, end).trim();
      }
    } else if (indexProxyGroup > 0) {
      int start = content.lastIndexOf("\n", indexProxyGroup);
      int end = content.indexOf("\n", indexProxyGroup);
      if (start >= 0 && start < end) {
        proxyGroup = content.substring(start + 1, end).trim();
      }
    }

    if (indexRuleName == 0) {
      int end = content.indexOf("\n", indexRuleName);
      if (end > 0) {
        proxyRuleName = content.substring(0, end).trim();
      }
    } else if (indexRuleName > 0) {
      int start = content.lastIndexOf("\n", indexRuleName);
      int end = content.indexOf("\n", indexRuleName);
      if (start >= 0 && start < end) {
        proxyRuleName = content.substring(start + 1, end).trim();
      }
    }
    if (proxyName != "$kProxyName:" &&
        proxyGroup != "$kProxyGroupName:" &&
        proxyRuleName != "$kRulesName:") {
      return ReturnResult(
        handled: false,
        error: ReturnResultError("clash invalid yaml"),
      );
    }

    content = EmojiUtils.unemojify(content);

    dynamic proxies;
    dynamic proxiesGroup;
    dynamic proxiesProviders;
    dynamic ruleProviders;
    dynamic rules;

    try {
      var doc = loadYaml(content);
      if (doc == null) {
        Log.w("ClashYamlUtils.tryConvert loadYaml failed");
        return ReturnResult(
          handled: true,
          error: ReturnResultError("clash: loadYaml failed"),
        );
      }
      if (doc is! YamlMap) {
        Log.w("ClashYamlUtils.tryConvert loadYaml failed: doc is not a map");
        return ReturnResult(
          handled: true,
          error: ReturnResultError("clash: doc is not a map"),
        );
      }
      var globalClientFingerprint = doc[kGlobalClientFingerprint];
      var website = doc[kOfficalWebsiteName];

      proxies = doc[kProxyName];
      proxiesGroup = doc[kProxyGroupName];
      proxiesProviders = doc[kProxyProvidersName];
      ruleProviders = doc[kRuleProvidersName];
      rules = doc[kRulesName];
      if (website != null) {
        proxyItem.site = website.toString();
      }

      if ((proxies == null) && (proxiesProviders == null)) {
        return ReturnResult(
          handled: true,
          error: ReturnResultError(
              "clash: proxies/proxy-providers not found or empty"),
        );
      }

      if (proxies != null && (proxies is List)) {
        _convertProxy(globalClientFingerprint, proxies, proxyItem, eu);
      }

      if ((proxiesProviders != null) && (proxiesProviders is YamlMap)) {
        if (tryProviders == false) {
          await _convertProxyProviders(
              proxiesProviders, proxyItem, diversionGroupItem, eu);
        }
      }
      proxyItem.filterServers();
      if (proxyItem.servers.isEmpty) {
        return ReturnResult(
          handled: true,
          error: ReturnResultError(
              "clash proxies/proxy-providers: No server available"),
        );
      }

      if ((diversionGroupItem != null) &&
          (proxiesGroup != null) &&
          proxiesGroup.isNotEmpty &&
          (rules != null) &&
          rules.isNotEmpty) {
        if (tryProviders == false) {
          Set<String> proxyTags = {};
          for (var i in proxyItem.servers) {
            proxyTags.add(i.tag);
          }
          _convertDiversionGroup(proxyTags, proxiesGroup as List, rules as List,
              diversionGroupItem);
        }
      }

      return ReturnResult(
        handled: true,
        error: null,
      );
    } catch (err, stacktrace) {
      return ReturnResult(
        handled: true,
        error: ReturnResultError("clash:${err.toString()}",
            stacktrace: stacktrace),
      );
    }
  }

  static Future<void> _convertProxyProviders(
      YamlMap proxyProviders,
      ServerConfigGroupItem proxyItem,
      ServerDiversionGroupItem? diversionGroupItem,
      TransExceptionAndUnsupport eu) async {
    List<int?> ports =
        await VPNService.getPortsBySetting(proxyItem.proxyStrategy);
    List<String> urls = [];
    proxyProviders.nodes.forEach((key, value) {
      if (value is YamlMap) {
        String? url = value["url"];
        if (url == null || url.isEmpty) {
          return;
        }
        urls.add(url);
      }
    });
    List<Tuple2<Uri, String>> uris = [];
    List<String> savePaths = [];
    var userAgent =
        await HttpUtils.getUserAgent(compatible: proxyItem.userAgentCompatible);
    for (var url in urls) {
      Uri? uri = Uri.tryParse(url);
      if (uri == null) {
        continue;
      }
      String savePath =
          path.join(await PathUtils.cacheDir(), const Uuid().v4());
      savePaths.add(savePath);
      uris.add(Tuple2(uri, savePath));
    }
    for (var port in ports) {
      if (uris.isEmpty) {
        break;
      }
      var results = await HttpUtils.httpDownloadList(
          uris, port, userAgent, const Duration(seconds: 30));
      for (int i = 0; i < results.length; ++i) {
        if (results[i].error == null) {
          try {
            var file = File(uris[i].item2);
            String content = await file.readAsString();
            if (content.isNotEmpty) {
              if (!content.contains(kProxyName) &&
                  !content.contains(kProxyProvidersName)) {
                V2RayTxtUtils.tryConvert(content, proxyItem, eu);
              } else {
                await tryConvert(
                    content, proxyItem, diversionGroupItem, eu, true);
              }
            }
          } catch (err) {}
        }
      }
      for (int i = results.length - 1; i >= 0; --i) {
        if (results[i].error == null) {
          uris.removeAt(i);
        } else {
          if (results[i].error!.message.contains("404")) {
            uris.removeAt(i);
          }
        }
      }
    }
    for (var savePath in savePaths) {
      await FileUtils.deletePath(savePath);
    }
  }

  static void _convertProxy(
      String? globalClientFingerprint,
      List<dynamic> proxies,
      ServerConfigGroupItem proxyItem,
      TransExceptionAndUnsupport eu) {
    Map<String, int> tagSets = {};
    for (var item in proxyItem.servers) {
      tagSets[item.tag] = 0;
    }
    var tagGen = TagGen(tags: tagSets);
    for (var proxy in proxies) {
      ClashYamlOubboundOptions clash = ClashYamlOubboundOptions();
      try {
        clash.fromYaml(proxy);
        if (clash.name.isEmpty ||
            clash.type.isEmpty ||
            clash.server.isEmpty ||
            clash.port.isEmpty) {
          continue;
        }
        clash.global_client_fingerprint = globalClientFingerprint;

        SingboxJsonOptions singbox = SingboxJsonOptions();
        var err = ClashToSingbox.convert(clash, singbox);
        if (err != null) {
          eu.unsupports.add(TransUnsupport(
            context: proxy.toString(),
            message: err.message,
          ));

          continue;
        }
        //演示模式
        /*
        if (singbox.server == "127.0.0.1") {
          continue;
        }
        singbox.tag = singbox.tag.replaceAll("中转", "Transit ");
        singbox.tag = singbox.tag.replaceAll("美国", "US ");
        singbox.tag = singbox.tag.replaceAll("德国", "DE ");
        singbox.tag = singbox.tag.replaceAll("法国", "FR ");
        singbox.tag = singbox.tag.replaceAll("台湾", "TW ");
        singbox.tag = singbox.tag.replaceAll("日本", "JP ");
        singbox.tag = singbox.tag.replaceAll("韩国", "KR ");
        singbox.tag = singbox.tag.replaceAll("俄罗斯", "RU ");
        singbox.tag = singbox.tag.replaceAll("印度", "IN ");
        singbox.tag = singbox.tag.replaceAll("英国", "GB ");
        singbox.tag = singbox.tag.replaceAll("加拿大", "CA ");
        singbox.tag = singbox.tag.replaceAll("巴西", "BR ");
        singbox.tag = singbox.tag.replaceAll("澳大利亚", "AU ");
        singbox.tag = singbox.tag.replaceAll("荷兰", "NL ");
        singbox.tag = singbox.tag.replaceAll("意大利", "IT ");
        singbox.tag = singbox.tag.replaceAll("西班牙", "ES ");
        singbox.tag = singbox.tag.replaceAll("乌克兰", "UA ");
        singbox.tag = singbox.tag.replaceAll("土耳其", "TR ");
        singbox.tag = singbox.tag.replaceAll("香港", "HK ");
        singbox.tag = singbox.tag.replaceAll("洛杉矶", "Los Angeles ");
        singbox.tag = singbox.tag.replaceAll("圣何塞", "San Jose ");
        singbox.tag = singbox.tag.replaceAll("东京", "Tokyo ");
        singbox.tag = singbox.tag.replaceAll("斯特拉斯堡", "Trasbourg ");
        singbox.tag = singbox.tag.replaceAll("法兰克福", "Frankfurt ");
        */
        singbox.tag = tagGen.gen(singbox.tag);

        ProxyConfig conf = ProxyConfig();
        conf.fromJson(singbox.toJson());
        conf.groupid = proxyItem.groupid;

        proxyItem.servers.add(conf);
      } catch (err, stacktrace) {
        eu.exceptions.add(TransException(
            context: proxy.toString(),
            message: err.toString(),
            stack: StackTraceUtils.trim(stacktrace, 3)));
      }
    }
  }

  static ReturnResultError? _convertDiversionGroup(
      Set<String> proxies,
      List<dynamic> proxyGroup,
      List<dynamic> rules,
      ServerDiversionGroupItem diversionGroupItem) {
    Map<String, DiversionRulesGroup> groups = {};
    int kMaxCount = PlatformUtils.isPC() ? 20000 : 1000;

    const String kBlock = "REJECT";
    try {
      Set<String> blockGroups = {};
      Set<String> directGroups = {};
      for (var group in proxyGroup) {
        var groupName = group["name"];
        /*
        groupName = groupName.replaceAll("节点选择", "Node Selection ");
        groupName = groupName.replaceAll("国外媒体", "Foreign Media ");
        groupName = groupName.replaceAll("国内媒体", "Domestic Media ");
        groupName = groupName.replaceAll("电报信息", "Telegram ");
        groupName = groupName.replaceAll("微软服务", "Mirosoft ");
        groupName = groupName.replaceAll("苹果服务", "Apple ");
        groupName = groupName.replaceAll("谷歌", "Google ");
        groupName = groupName.replaceAll("全球直连", "Global Direct ");
        groupName = groupName.replaceAll("漏网之鱼", "Leak Fish ");
        */
        var groupType = group["type"];
        var groupProxies = group["proxies"];
        if ((groupName != null) && (groupProxies != null)) {
          DiversionRulesGroup group = DiversionRulesGroup();

          groupName = EmojiUtils.emojify(groupName).trim();
          group.groupid = diversionGroupItem.groupid;
          group.name = groupName;
          group.type = groupType ?? ""; //to my
          if (group.type.isEmpty || group.type == "url-test") {
            continue;
          }
          bool needAdd = true;
          var itProxies = groupProxies.iterator;
          while (itProxies.moveNext()) {
            String name = itProxies.current.toString();
            name = EmojiUtils.emojify(name).trim();
            if (name == kBlock) {
              needAdd = false;
              if (group.proxies.isEmpty) {
                blockGroups.add(group.name);
              }
              break;
            }

            if (name == kProxyDirect) {
              if (group.proxies.isEmpty) {
                directGroups.add(group.name);
              }
            }
            if (proxies.contains(name)) {
              group.proxies.add("PROXIES");
              break;
            }
            group.proxies.add(name);
          }
          if (needAdd) {
            groups[group.name] = group;
          }
        }
      }
      groups.forEach((key, value) {
        if (value.proxies.isEmpty) {
          return;
        }
        if (directGroups.contains(value.proxies[0])) {
          value.proxies.insert(0, kProxyDirect);
          return;
        }
        if (blockGroups.contains(value.proxies[0])) {
          value.proxies.insert(0, kProxyBlock);
          return;
        }
      });
      for (var line in rules) {
        List<String> item = line.split(',');
        if (item.length < 3) {
          continue;
        }
        String rule = item[0].trim();
        String domain = item[1].trim();
        String groupName = item[2].trim();
        if (groupName.endsWith('\'') || groupName.endsWith('"')) {
          groupName = groupName.substring(0, groupName.length - 1).trim();
        }
        groupName = EmojiUtils.emojify(groupName).trim();
        if (rule.isEmpty || domain.isEmpty || groupName.isEmpty) {
          continue;
        }

        var groupDiversion = groups[groupName];
        if (groupDiversion == null) {
          continue;
        }

        if (rule == "IP-CIDR") {
          if (groupDiversion.ipCidrSet.length < kMaxCount) {
            groupDiversion.ipCidrSet.add(domain);
          }
        } else if (rule == "IP-CIDR6") {
          if (groupDiversion.ipCidr6Set.length < kMaxCount) {
            groupDiversion.ipCidr6Set.add(domain);
          }
        } else if (rule == "DOMAIN-KEYWORD") {
          if (groupDiversion.domainKeywordSet.length < kMaxCount) {
            groupDiversion.domainKeywordSet.add(domain);
          }
        } else if (rule == "DOMAIN-SUFFIX") {
          if (groupDiversion.domainSuffixSet.length < kMaxCount) {
            groupDiversion.domainSuffixSet.add(domain);
          }
        } else if (rule == "DOMAIN") {
          if (groupDiversion.domainSet.length < kMaxCount) {
            groupDiversion.domainSet.add(domain);
          }
        }
      }

      groups.forEach((k, v) {
        v.domainSuffix = v.domainSuffixSet.toList();
        v.domain = v.domainSet.toList();
        v.domainKeyword = v.domainKeywordSet.toList();
        v.ipCidr = v.ipCidrSet.toList();
        v.ipCidr.addAll(v.ipCidr6Set.toList());
        if (v.domainSuffix.isNotEmpty ||
            v.domain.isNotEmpty ||
            v.domainKeyword.isNotEmpty ||
            v.ipCidr.isNotEmpty) {
          diversionGroupItem.groups.add(v);
        }
      });
      groups.clear();

      return null;
    } catch (err, stacktrace) {
      return ReturnResultError("clash:${err.toString()}",
          stacktrace: stacktrace);
    }
  }
}
