// ignore_for_file: unused_local_variable, empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/clash_yaml_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/sentry_utils.dart';
import 'package:karing/app/utils/singbox_json_utils.dart';
import 'package:karing/app/utils/ss_json_utils.dart';
import 'package:karing/app/utils/v2ray_txt_utils.dart';
import 'package:karing/app/utils/wireguard_conf_utils.dart';
import 'package:path/path.dart' as path;
import 'package:punycode_converter/punycode_converter.dart' as punycode;
import 'package:uuid/uuid.dart';

enum SubscriptionLinkType {
  clash(name: "clash"),
  //v2ray,stash,shadowrocket //stash https://raw.githubusercontent.com/Repcz/Tool/X/Stash/Stash.yaml
  v2ray(name: "v2ray"),
  //karing,singbox
  singbox(name: "singbox"),
  ss(name: "ss"),
  wireguard(name: "wireguard"),
  unknown(name: "unknown");

  const SubscriptionLinkType({required this.name});
  final String name;
}

abstract final class AutoConfUtils {
  static final Set<String> _exceptionSets = {};
  static final Set<String> _unSupportSets = {};
  static int kMaxContentLength = 2 * 1024;
  static Future<ReturnResultError?> tryConvert(
      String urlOrContent,
      bool isLocalPath,
      bool update,
      ServerConfigGroupItem proxyItem,
      List<ServerDiversionGroupRuleSetItem> rulesetItems,
      ServerDiversionGroupItem? diversionGroupItem) async {
    if (_exceptionSets.length > 50) {
      _exceptionSets.clear();
    }
    if (_unSupportSets.length > 50) {
      _unSupportSets.clear();
    }
    try {
      ReturnResultError? error;
      TransExceptionAndUnsupport eu = TransExceptionAndUnsupport();
      if (isLocalPath) {
        error = await tryConvertLocal(
            urlOrContent, proxyItem, rulesetItems, diversionGroupItem, eu);
      } else {
        String url = urlOrContent.trim();
        if (url.isEmpty) {
          return ReturnResultError("url or content empty");
        }
        error = await tryConvertRemote(
            url, proxyItem, rulesetItems, diversionGroupItem, eu);
      }

      Set<String> serverSets = {};
      Set<String> typeSets = {};
      for (var item in proxyItem.servers) {
        if (item.server != "127.0.0.1" && item.server != "localhost") {
          if (!serverSets.contains(item.server)) {
            serverSets.add(item.server);
          }
          if (!typeSets.contains(item.type)) {
            typeSets.add(item.type);
          }
        }
      }

      String url = "";
      if (!isLocalPath) {
        if (proxyItem.urlOrPath.startsWith("http://") ||
            proxyItem.urlOrPath.startsWith("https://")) {
          url = proxyItem.urlOrPath;
        }
      }
      int kMaxCount = 5;
      String content = error != null ? "${error.message}\n" : "";
      String contentLog = ""; //连续写日志会导致写入的数据存在问题,合并一下再写
      if (eu.unsupports.isNotEmpty) {
        if (eu.unsupports.length > kMaxCount) {
          eu.unsupports.removeRange(kMaxCount, eu.unsupports.length);
        }
        List<String> unsupports = [url];
        for (var unsp in eu.unsupports) {
          if (!_unSupportSets.contains(unsp.context)) {
            _unSupportSets.add(unsp.context);
            unsupports.add(unsp.context);
          }
        }

        contentLog += "unsupports:[$url]\n";
        content += eu.unsupports.join("\n");
        contentLog += content;
      }
      if (eu.exceptions.isNotEmpty) {
        if (eu.exceptions.length > kMaxCount) {
          eu.exceptions.removeRange(kMaxCount, eu.exceptions.length);
        }
        List<String> exceptions = [url];
        for (var excp in eu.exceptions) {
          if (!_exceptionSets.contains(excp.context)) {
            _exceptionSets.add(excp.context);
            exceptions.add(excp.context);
          }
        }

        contentLog += "exceptions:[$url]\n";
        content += eu.exceptions.join("\n");
        contentLog += content;
      }

      if (eu.unsupports.isNotEmpty || eu.exceptions.isNotEmpty) {
        Log.w(contentLog);
      }

      if (error != null) {
        Log.w(
            "AutoConfUtils.tryConvert error\n ${error.message}\n $urlOrContent");
        return ReturnResultError(content);
      }

      return null;
    } catch (err, stacktrace) {
      if (urlOrContent.length > kMaxContentLength) {
        urlOrContent = urlOrContent.substring(0, kMaxContentLength);
      }
      SentryUtils.captureException('AutoConfUtils.tryConvert.exception',
          [proxyItem.type.name, urlOrContent], err, stacktrace);
      Log.w(
          "AutoConfUtils.tryConvert exception\n  ${err.toString()}\n $urlOrContent");

      return ReturnResultError(err.toString(), stacktrace: stacktrace);
    }
  }

  static Future<ReturnResultError?> tryConvertRemote(
      String url,
      ServerConfigGroupItem proxyItem,
      List<ServerDiversionGroupRuleSetItem> rulesetItems,
      ServerDiversionGroupItem? diversionGroupItem,
      TransExceptionAndUnsupport eu) async {
    String content = "";
    String sub = "sub";
    String clash = "clash";
    String stash = "stash";
    String singbox = "sing-box";
    String singbox2 = "singbox";
    String karing = "karing";
    String shadowrocket = "shadowrocket";
    String http = "http";
    String https = "https";

    String subScheme = "sub://";
    String clashScheme = "clash://";
    String stashScheme = "stash://";
    String singboxScheme = "sing-box://";
    String singbox2Scheme = "singbox://";
    String karingScheme = "karing://";
    String shadowrocketScheme = "shadowrocket://";
    String snScheme = "sn://";
    String httpScheme = "http://";
    String httpsScheme = "https://";
    List<String> v2raySchemes = [
      "ss",
      "ssr",
      "socks",
      "socks5",
      "vmess",
      "vless",
      "trojan",
      "trojan-go",
      "hy",
      "hysteria",
      "hy2",
      "hysteria2",
      "wg",
      "wireguard",
      "ulink",
    ];
    if (url.startsWith(shadowrocketScheme)) {
      return ReturnResultError("shadowrocket: not support");
    }
    if (url.startsWith(snScheme)) {
      return ReturnResultError("sn: not support");
    }
    //shadowrocket://add/sub://aHR0cHM6Ly93d3cueHN0YXJzLmdheS9hcGkvdjEvY2xpZW50L3N1YnNjcmliZT90b2tlbj1hOGEzNTFkYmVhOWUzODcyOTkyZGQ5ZGMwY2JiYzhlZSZmbGFnPXNoYWRvd3JvY2tldA?remark=Xstars
    //sub://aHR0cHM6Ly9qbXNzdWIubmV0L21lbWJlcnMvZ2V0c3ViLnBocD9zZXJ2aWNlPTQ3ODI2NCZpZD04YmY3MGI0Mi01N2YxLTQyYWItODhhNC1iZTMzYzNjNDYyYjc?allowInsecure=1 不支持此种格式
    //sub://aHR0cHM6Ly94bi0tOWtxMTQ3YzRwMmEuY29tL3N1Yi84MDBmZDc3MGQ2YTEzM2QyL2NsYXNo#clash   //clash
    //sub://aHR0cHM6Ly9hcGkuZmxvd2VyY2xvdWQueHl6L29zdWJzY3JpYmUucGhwP3NpZD02NzQ3NyZ0b2tlbj1JVWNQSHR3VUdoTlcmc2lwMDAyPTE //v2ray
    //sub://#%E6%9C%AC%E5%9C%B0%E8%8A%82%E7%82%B9\nvless://bm9uZTo3M2I2ZGJkNS1hMjdhLTRjNzYtOWFkMS00MmE4MjM4MGRkZGJANDMuMTU0LjM0Ljc0OjE5MzU?remarks=%F0%9F%87%AD%F0%9F%87%B0%20HKG-Tencent&obfsParam=%7B%22Host%22:%220430956d.ed-1ii.pages.dev%22%7D&path=/?ed=2048&obfs=websocket&tls=1&peer=0430956d.ed-1ii.pages.dev&allowInsecure=1\nvless://bm9uZTo3M2I2ZGJkNS1hMjdhLTRjNzYtOWFkMS00MmE4MjM4MGRkZGJANDUuNjYuMTI4LjIxNjoyMDAw?remarks=%F0%9F%87%AF%F0%9F%87%B5%20NRT-xTom&obfsParam=%7B%22Host%22:%220430956d.ed-1ii.pages.dev%22%7D&path=/?ed=2048&obfs=websocket&tls=1&peer=0430956d.ed-1ii.pages.dev&allowInsecure=1\nss://YWVzLTI1Ni1nY206ZTk1Y2VjYjAtMTIwOC00NWNkLTgzN2QtNjEwZDQ3NmJmMzI0QDE4My4yMzIuMjQ5LjIyOjEwMDYx#%F0%9F%87%B8%F0%9F%87%AC%20%E6%96%B0%E5%8A%A0%E5%9D%A1%202\nvless://bm9uZTo3M2I2ZGJkNS1hMjdhLTRjNzYtOWFkMS00MmE4MjM4MGRkZGJAMzUuMjAxLjE2My4zNToxNDcwMw?remarks=%F0%9F%87%AD%F0%9F%87%B0%20HKG-Google&obfsParam=%7B%22Host%22:%220430956d.ed-1ii.pages.dev%22%7D&path=/?ed=2048&obfs=websocket&tls=1&peer=0430956d.ed-1ii.pages.dev&allowInsecure=1\nvless://bm9uZTo3M2I2ZGJkNS1hMjdhLTRjNzYtOWFkMS00MmE4MjM4MGRkZGJAYy54Zi5mcmVlLmhyOjIwODM?remarks=%F0%9F%87%BA%F0%9F%87%B8%20USA-Channel&obfsParam=%7B%22Host%22:%220430956d.ed-1ii.pages.dev%22%7D&path=/?ed=2048&obfs=websocket&tls=1&peer=0430956d.ed-1ii.pages.dev&allowInsecure=1\nwg://162.159.195.5:2408?publicKey=bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=&privateKey=uNDQxW+xNhJcSn08VLO9MYwTOJbl7a0Hqr5ewzy2glY=&ip=172.16.0.2&udp=1&reserved=203,56,173#1.1.1.1\n\nwg://162.159.195.8:2408?publicKey=bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=&privateKey=uCWvh8B4LwYy2zKcA3ZVrp0Hl4oSldzn/fDXluUIznE=&ip=172.16.0.2&udp=1&reserved=104,242,131#Warp
    //clash://install-config?url=https%3A%2F%2Ffast.lycorisrecoil.org%2Flink%2FHiqqgEIbBGa1QwjH%3Fclash%3D1
    if (url.startsWith(subScheme)) {
      int posIndex = url.indexOf("#");
      if (posIndex > 0) {
        String fragment = url.substring(posIndex + 1, url.length).toLowerCase();
        if (subScheme.length == posIndex) {
          url = url.substring(posIndex, url.length);
        } else {
          url = url.substring(subScheme.length, posIndex);
        }

        if (fragment == clash) {
          proxyItem.type = SubscriptionLinkType.clash;
        }
      } else {
        url = url.substring(subScheme.length, url.length);
      }
      try {
        String de = base64.normalize(url);
        url = utf8.decode(base64.decode(de));
      } catch (err) {
        for (var i in v2raySchemes) {
          if (url.contains(i)) {
            content = url;
            proxyItem.type = SubscriptionLinkType.v2ray;
            break;
          }
        }
      }
    } else if (url.startsWith(clashScheme) || url.startsWith(stashScheme)) {
      proxyItem.type = SubscriptionLinkType.clash;
      Uri? uri = Uri.tryParse(url);
      if (uri == null) {
        return ReturnResultError("Invalid Url $url");
      }
      var urlParam = uri.queryParameters["url"];
      if (urlParam == null) {
        return ReturnResultError(
            "Invalid Url queryparam: 'url' not found $url");
      }
      try {
        url = Uri.decodeFull(urlParam);
      } catch (err) {
        return ReturnResultError(
            "Uri.decodeFull exception: $urlParam: ${err.toString()}");
      }
    } else if (url.startsWith(singboxScheme) ||
        url.startsWith(singbox2Scheme) ||
        url.startsWith(karingScheme)) {
      proxyItem.type = SubscriptionLinkType.singbox;
      Uri? uri = Uri.tryParse(url);
      if (uri == null) {
        return ReturnResultError("Invalid Url $url");
      }
      var urlParam = uri.queryParameters["url"];
      if (urlParam == null) {
        return ReturnResultError(
            "Invalid Url queryparam: 'url' not found $url");
      }
      try {
        url = Uri.decodeFull(urlParam);
      } catch (err) {
        return ReturnResultError(
            "Uri.decodeFull exception: $urlParam: ${err.toString()}");
      }
    } else {
      for (var i in v2raySchemes) {
        if (url.startsWith(i)) {
          content = url;
          proxyItem.type = SubscriptionLinkType.v2ray;
          break;
        }
      }
    }

    if (url.startsWith(httpScheme) || url.startsWith(httpsScheme)) {
      url = url.replaceAll(" \r\n\t", "").trim();
      //if (!isURL(url)) {
      //  return ReturnResultError("Invalid Url: $url");
      //}

      /*RegExp exp = RegExp(r'(://)');//https://proxy.v2gh.com/https://raw.githubusercontent.com/Pawdroid/Free-servers/main/sub
      Iterable<RegExpMatch> match = exp.allMatches(url);
      if (match.length > 1) {
        return ReturnResultError("Invalid Http Url scheme: multi scheme ://");
      }*/
      Uri? uri = Uri.tryParse(url);
      if (uri == null) {
        return ReturnResultError("download profile failed: invalid url");
      }
      try {
        proxyItem.urlOrPath = uri.punyEncoded.toString();
      } catch (err) {
        proxyItem.urlOrPath = url;
      }

      String savePath =
          path.join(await PathUtils.cacheDir(), const Uuid().v4());
      await FileUtils.deletePath(savePath);

      late ReturnResult<HttpHeaders> header;
      List<int?> ports =
          await VPNService.getPortsBySetting(proxyItem.proxyStrategy);
      String userAgent = await HttpUtils.getUserAgent(
          compatible: proxyItem.userAgentCompatible);
      for (var port in ports) {
        header = await HttpUtils.httpDownload(
            uri, savePath, port, userAgent, const Duration(seconds: 60));
        if (header.error != null) {
          await FileUtils.deletePath(savePath);
          continue;
        }

        try {
          var file = File(savePath);
          content = await file.readAsString();
        } catch (err) {
          return ReturnResultError(
              "download profile failed: ${err.toString()}");
        }
        await FileUtils.deletePath(savePath);
        break;
      }
      if (header.error != null) {
        return ReturnResultError(
            "download profile failed: ${header.error!.message}");
      }
      proxyItem.traffic = ProxyConfUtils.getTraffic(header.data);
    }

    if (content.isEmpty) {
      if (url.startsWith(httpScheme) || url.startsWith(httpsScheme)) {
        return ReturnResultError(
            "download profile failed: http response is empty");
      }
      content = url;
    }
    return await _tryconvertFromContent(
        content.trim(), proxyItem, rulesetItems, diversionGroupItem, eu);
  }

  static Future<ReturnResultError?> tryConvertLocal(
      String filePath,
      ServerConfigGroupItem proxyItem,
      List<ServerDiversionGroupRuleSetItem> rulesetItems,
      ServerDiversionGroupItem? diversionGroupItem,
      TransExceptionAndUnsupport eu) async {
    proxyItem.urlOrPath = filePath;
    var file = File(filePath);
    String content = "";
    try {
      content = await file.readAsString();
    } catch (err) {
      return ReturnResultError("load failed: ${err.toString()}");
    }

    return await _tryconvertFromContent(
        content, proxyItem, rulesetItems, diversionGroupItem, eu);
  }

  static Future<ReturnResultError?> _tryconvertFromContent(
      String content,
      ServerConfigGroupItem proxyItem,
      List<ServerDiversionGroupRuleSetItem> rulesetItems,
      ServerDiversionGroupItem? diversionGroupItem,
      TransExceptionAndUnsupport eu) async {
    if (content.isEmpty) {
      return ReturnResultError("content is empty");
    }
    late ReturnResult<bool> result;
    switch (proxyItem.type) {
      case SubscriptionLinkType.clash:
        result = await ClashYamlUtils.tryConvert(
            content, proxyItem, diversionGroupItem, eu, false);
        break;
      case SubscriptionLinkType.v2ray:
        result = await V2RayTxtUtils.tryConvert(content, proxyItem, eu);
        break;
      case SubscriptionLinkType.singbox:
        result = SingboxJsonUtils.tryConvert(
            content, proxyItem, rulesetItems, diversionGroupItem, eu);
        break;
      case SubscriptionLinkType.ss:
        result = SSJsonUtils.tryConvert(content, proxyItem, eu);
        break;
      case SubscriptionLinkType.wireguard:
        result = WireguardConfUtils.tryConvert(content, proxyItem, eu);
        break;
      case SubscriptionLinkType.unknown:
        return _tryconvertFromContentExcept(
            content, proxyItem, rulesetItems, diversionGroupItem, eu, null);
    }
    if (result.error != null) {
      if (result.handled != true) {
        if (proxyItem.type != SubscriptionLinkType.unknown) {
          return _tryconvertFromContentExcept(content, proxyItem, rulesetItems,
              diversionGroupItem, eu, proxyItem.type);
        }
      }
    }
    return result.error;
  }

  static Future<ReturnResultError?> _tryconvertFromContentExcept(
      String content,
      ServerConfigGroupItem proxyItem,
      List<ServerDiversionGroupRuleSetItem> rulesetItems,
      ServerDiversionGroupItem? diversionGroupItem,
      TransExceptionAndUnsupport eu,
      SubscriptionLinkType? exceptType) async {
    ReturnResult<bool> result = ReturnResult<bool>();
    dynamic jsonObj;
    try {
      jsonObj = jsonDecode(content);
      if (jsonObj != null) {
        if (jsonObj is Map) {
          var ret = jsonObj["ret"];
          var msg = jsonObj["msg"];
          if ((ret != null) && //处理clash json响应错误
              (msg != null) &&
              (ret is int) &&
              (msg is String) &&
              msg.isNotEmpty) {
            return ReturnResultError("server response: $msg");
          }
        }
        String? newContent = getFromGithubContent(jsonObj);
        if ((newContent != null) && newContent.isNotEmpty) {
          try {
            jsonObj = jsonDecode(content);
          } catch (err) {
            jsonObj = null;
            content = newContent;
            newContent = "";
          }
        }
      }
    } catch (err) {}
    if (jsonObj != null) {
      //singbox
      if (exceptType != SubscriptionLinkType.singbox) {
        if (jsonObj is Map) {
          result = SingboxJsonUtils.tryJsonConvert(
              jsonObj, proxyItem, rulesetItems, diversionGroupItem, eu);
          if (result.handled == true) {
            proxyItem.type = SubscriptionLinkType.singbox;
            return result.error;
          }
        }
      }

      //ss
      if (exceptType != SubscriptionLinkType.ss) {
        if (jsonObj is List) {
          eu.clear();
          result.error = SSJsonUtils.tryConvertJson(jsonObj, proxyItem, eu);
          if (result.error == null) {
            proxyItem.type = SubscriptionLinkType.ss;
            return null;
          }
        } else if (jsonObj is Map) {
          //https://ucss.moe/api/v1/subscription/45993/ss/3cac9ca95b/3months-7438
          var outbounds = jsonObj["servers"];
          if ((outbounds != null) && (outbounds is List)) {
            eu.clear();
            result.handled = true;
            result.error = SSJsonUtils.tryConvertJson(outbounds, proxyItem, eu);

            proxyItem.type = SubscriptionLinkType.ss;
            return result.error;
          }
        }
      }
      if (jsonObj is Map) {
        var code = jsonObj["code"];
        var msg = jsonObj["msg"];
        if (code != null && msg != null) {
          if (msg is String) {
            return ReturnResultError("server response: $msg");
          }
        }
      }

      return ReturnResultError("json unknown format");
    }

    //wireguard
    if (exceptType != SubscriptionLinkType.wireguard) {
      TransExceptionAndUnsupport neu = TransExceptionAndUnsupport();
      ReturnResult<bool> newResult =
          WireguardConfUtils.tryConvert(content, proxyItem, neu);
      if (newResult.handled == true) {
        eu.exceptions = neu.exceptions;
        eu.unsupports = neu.unsupports;
        proxyItem.type = SubscriptionLinkType.wireguard;
        return newResult.error;
      }
    }

    //v2ray
    if (exceptType != SubscriptionLinkType.v2ray) {
      TransExceptionAndUnsupport neu = TransExceptionAndUnsupport();
      ReturnResult<bool> newResult =
          await V2RayTxtUtils.tryConvert(content, proxyItem, neu);
      if (newResult.handled == true) {
        eu.exceptions = neu.exceptions;
        eu.unsupports = neu.unsupports;
        proxyItem.type = SubscriptionLinkType.v2ray;
        return newResult.error;
      }
    }

    //clash
    if (exceptType != SubscriptionLinkType.clash) {
      TransExceptionAndUnsupport neu = TransExceptionAndUnsupport();
      ReturnResult<bool> newResult = await ClashYamlUtils.tryConvert(
          content, proxyItem, diversionGroupItem, neu, false);
      if (newResult.handled == true) {
        eu.exceptions = neu.exceptions;
        eu.unsupports = neu.unsupports;
        proxyItem.type = SubscriptionLinkType.clash;
        return newResult.error;
      }
    }

    return result.error;
  }

  static String? getFromGithubContent(dynamic json) {
    //https://github.com/aiboboxx/clashfree/blob/main/clash.yml
    try {
      if (json! is Map) {
        return null;
      }
      var payload = json["payload"];
      if (payload == null) {
        return null;
      }
      var blob = payload["blob"];
      if (blob == null) {
        return null;
      }
      var rawLines = blob["rawLines"];
      if (rawLines == null || rawLines is! List) {
        return null;
      }
      return rawLines.join("\n");
    } catch (err, stacktrace) {
      return null;
    }
  }
}
