import 'dart:convert';

import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/singbox_json.dart';
import 'package:karing/app/utils/stacktrace_utils.dart';
import 'package:karing/app/utils/tag_gen.dart';

class SingboxJsonUtils {
  static ReturnResult<bool> tryJsonConvert(
      dynamic json,
      ServerConfigGroupItem proxyItem,
      List<ServerDiversionGroupRuleSetItem> rulesetItems,
      ServerDiversionGroupItem? diversionGroupItem,
      TransExceptionAndUnsupport eu) {
    Map<String, int> tagSets = {};
    for (var item in proxyItem.servers) {
      tagSets[item.tag] = 0;
    }
    var tagGen = TagGen(tags: tagSets);
    var sets = {
      SingboxOutboundType.socks.name,
      SingboxOutboundType.http.name,
      "mixed",
      SingboxOutboundType.shadowsocks.name,
      SingboxOutboundType.vmess.name,
      SingboxOutboundType.trojan.name,
      SingboxOutboundType.wireguard.name,
      SingboxOutboundType.hysteria.name,
      SingboxOutboundType.vless.name,
      SingboxOutboundType.shadowtls.name,
      SingboxOutboundType.tuic.name,
      SingboxOutboundType.hysteria2.name,
      SingboxOutboundType.tor.name,
      SingboxOutboundType.ssh.name,
      SingboxOutboundType.shadowsocksr.name,
    };
    var outbounds = json["outbounds"];
    try {
      Set<String> directs = {};
      Set<String> blocks = {};

      var route = json["route"];
      if (outbounds != null && outbounds is List<dynamic>) {
        for (var proxy in outbounds) {
          try {
            if (proxy is! Map<String, dynamic>) {
              continue;
            }
            String? type = proxy["type"];
            String? tag = proxy["tag"];

            if (type == null || type.isEmpty || tag == null || tag.isEmpty) {
              continue;
            }
            if (type == kOutboundTypeDirect) {
              directs.add(tag);
              continue;
            } else if (type == kOutboundTypeBlock) {
              blocks.add(tag);
              continue;
            } else if (type == kOutboundTypeDns ||
                type == kOutboundTypeSelector ||
                type == kOutboundTypeUrltest) {
              continue;
            }
          } catch (err, stacktrace) {
            eu.exceptions.add(TransException(
                context: proxy.toString(),
                message: err.toString(),
                stack: StackTraceUtils.trim(stacktrace, 3)));
          }
        }
        for (var proxy in outbounds) {
          try {
            if (proxy is! Map<String, dynamic>) {
              continue;
            }
            String? type = proxy["type"];
            String? tag = proxy["tag"];
            String? detour = proxy["detour"];
            if (type == null || type.isEmpty || tag == null || tag.isEmpty) {
              continue;
            }
            if (type == kOutboundTypeDirect ||
                type == kOutboundTypeBlock ||
                type == kOutboundTypeDns ||
                type == kOutboundTypeSelector ||
                type == kOutboundTypeUrltest) {
              continue;
            }
            if (detour != null) {
              if (directs.contains(detour)) {
                proxy.remove("detour");
              }
            }
            if (!sets.contains(type)) {
              eu.unsupports.add(TransUnsupport(
                context: proxy.toString(),
                message: "unsupport type [$type]",
              ));

              continue;
            }
            ProxyConfig conf = ProxyConfig();
            conf.fromJson(proxy);
            conf.groupid = proxyItem.groupid;
            conf.tag = tagGen.gen(conf.tag);

            proxyItem.servers.add(conf);
          } catch (err, stacktrace) {
            eu.exceptions.add(TransException(
                context: proxy.toString(),
                message: err.toString(),
                stack: StackTraceUtils.trim(stacktrace, 3)));
          }
        }
        proxyItem.filterServers();
        if (proxyItem.servers.isEmpty) {
          return ReturnResult(
            handled: true,
            error: ReturnResultError("singbox outbounds: No server available"),
          );
        }

        if (diversionGroupItem != null &&
            route != null &&
            route is Map<String, dynamic>) {
          Set<String> rulesetTags = {};
          Map<String, String> rulesetTagsMap = {};
          for (var rule in rulesetItems) {
            rulesetTags.add(rule.url!.toLowerCase());
          }
          var ruleSet = route["rule_set"];
          var rules = route["rules"];
          if (ruleSet != null && ruleSet is List) {
            for (var rs in ruleSet) {
              String? orTag = rs["tag"];
              String? type = rs["type"];
              String? format = rs["format"];
              String? url = rs["url"];
              if (type != "remote") {
                continue;
              }
              if (format != "source" && format != "binary") {
                continue;
              }
              if (orTag == null ||
                  orTag.isEmpty ||
                  url == null ||
                  url.isEmpty) {
                continue;
              }
              Uri? uri = Uri.tryParse(url);
              if (uri == null) {
                continue;
              }
              String tag = url.toLowerCase();
              if (!rulesetTags.contains(tag)) {
                ServerDiversionGroupRuleSetItem rsi =
                    ServerDiversionGroupRuleSetItem();
                rsi.type = type!;
                rsi.tag = tag;
                rsi.format = format!;
                rsi.url = url;
                rulesetItems.add(rsi);
                rulesetTags.add(tag);
              }
              rulesetTagsMap[orTag] = tag;
            }
          }
          if (rules != null && rules is List) {
            for (var rule in rules) {
              if (rule.length != 2) {
                //rule_set,outbound
                continue;
              }

              var ruleSetTag = rule["rule_set"];
              String? outbound = rule["outbound"];
              if (ruleSetTag == null || outbound == null) {
                continue;
              }
              if (ruleSetTag is String || ruleSetTag is List) {
                List<String> newRuleSet = [];
                if (ruleSetTag is String) {
                  String? newRS = rulesetTagsMap[ruleSetTag];
                  if (newRS != null) {
                    newRuleSet.add(newRS);
                  }
                } else {
                  for (var r in ruleSetTag) {
                    if (r is String) {
                      String? newRS = rulesetTagsMap[r];
                      if (newRS != null) {
                        newRuleSet.add(newRS);
                      }
                    }
                  }
                }
                if (newRuleSet.isEmpty) {
                  continue;
                }
                for (var rs in newRuleSet) {
                  DiversionRulesGroup diversionGroup = DiversionRulesGroup();
                  diversionGroup.name = rs;
                  diversionGroup.groupid = proxyItem.groupid;
                  if (directs.contains(outbound)) {
                    diversionGroup.proxies.add(kProxyDirect);
                  } else if (blocks.contains(outbound)) {
                    diversionGroup.proxies.add(kProxyBlock);
                  }
                  diversionGroup.ruleSet = [rs];
                  diversionGroupItem.groups.add(diversionGroup);
                }
              }
            }
          }
        }

        return ReturnResult(
          handled: true,
          error: null,
        );
      }
    } catch (err, stacktrace) {
      return ReturnResult(
        handled: outbounds != null && outbounds is List<dynamic>,
        error: ReturnResultError(err.toString(), stacktrace: stacktrace),
      );
    }

    return ReturnResult(
      handled: outbounds != null && outbounds is List<dynamic>,
      error: null,
    );
  }

  static ReturnResult<bool> tryConvert(
      String content,
      ServerConfigGroupItem proxyItem,
      List<ServerDiversionGroupRuleSetItem> rulesetItems,
      ServerDiversionGroupItem? diversionGroupItem,
      TransExceptionAndUnsupport eu) {
    try {
      var decodedResponse = jsonDecode(content);
      return tryJsonConvert(
          decodedResponse, proxyItem, rulesetItems, diversionGroupItem, eu);
    } catch (err, stacktrace) {
      return ReturnResult(
        handled: false,
        error: ReturnResultError(err.toString(), stacktrace: stacktrace),
      );
    }
  }
}
