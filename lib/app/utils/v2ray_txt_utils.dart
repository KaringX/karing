// ignore_for_file: no_leading_underscores_for_local_identifiers, non_constant_identifier_names, prefer_interpolation_to_compose_strings, unused_local_variable, empty_catches, unused_catch_stack

import 'dart:convert';

import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/clash_to_singbox.dart';
import 'package:karing/app/utils/clash_yaml.dart';
import 'package:karing/app/utils/cloudflare_warp_utils.dart';
import 'package:karing/app/utils/convert_utils.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_json.dart';
import 'package:karing/app/utils/singbox_json_utils.dart';
import 'package:karing/app/utils/stacktrace_utils.dart';
import 'package:karing/app/utils/tag_gen.dart';
import 'package:karing/app/utils/uri_utils.dart';

class V2RayVemss {
  String? v; //: "2",
  String ps = ""; //:name "🇺🇸 V003--US-付费推荐:dlj.tf/ssrsub",
  String add = ""; //:server "speedip.eu.org",
  String port = ""; //: port "8080",
  String id = ""; //: uuid "dd87d362-dba1-49aa-9c73-87c828f372d6",
  String? aid; //:alterId "0",
  String? scy; //:cipher "auto",
  String? net; //:network "ws",
  String? type; //:network "none",
  String? host; //: "ssrsub.v01.ssrsub.com",
  String? path; //:path "/api/v3/download.getFile",
  bool? tls; //:tls "",
  String? sni; //: "",
  String? alpn; //: ""
  String? fp;
  bool? tfo;
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    var _v = map["v"];
    if (_v is String) {
      v = _v;
    } else if (_v is int) {
      v = _v.toString();
    }
    var _port = map["port"];
    if (_port is String) {
      port = _port;
    } else if (_port is int) {
      port = _port.toString();
    }
    var _aid = map["aid"];
    if (_aid is String) {
      aid = _aid;
    } else if (_aid is int) {
      aid = _aid.toString();
    }
    ps = map["ps"] ?? "";
    try {
      if (ps.isNotEmpty && ps.contains("%")) {
        ps = Uri.decodeComponent(ps);
      }
    } catch (err, stacktrace) {}
    add = map["add"] ?? "";
    id = map["id"] ?? "";
    scy = map["scy"] ?? "auto";
    net = map["net"];
    type = map["type"];
    host = map["host"];
    path = map["path"];
    tls = ConvertUtils.boolParse(map["tls"], "tls");
    sni = map["sni"];
    alpn = map["alpn"];
    fp = map["fp"];
    tfo = ConvertUtils.boolParse(map["tfo"], null);
    if ((host == null || host!.isEmpty) && ((sni != null) && sni!.isNotEmpty)) {
      host = sni;
    }
    if (path == null || path!.isEmpty) {
      path = "/";
    }
    if (type == "http") {
      net = "http";
    } else if (net == "http") {
      net = "h2";
    }
  }

  void fromUrl(String url) {
    //目前只有小火箭会用到这里
    //vmess://YXV0bzpmMzdkYzhmZS1mYWQ5LTQ2MmQtOTI3MS1iMjA5ZDJhNDMzYThAbGF4ZnJlZS5zdGFyc2VhLnZpcDo0NDM=?tfo=1&remark=%E8%B7%9D%E7%A6%BB%E4%B8%8B%E6%AC%A1%E9%87%8D%E7%BD%AE%E5%89%A9%E4%BD%99%EF%BC%9A17%20%E5%A4%A9&alterId=0&tls=1&allowInsecure=1&obfs=websocket&path=%2F&obfsParam=laxfree.starsea.vip
    Uri? uri = Uri.tryParse(url);
    if (uri == null) {
      return;
    }

    if (uri.port == 0) {
      int pos = url.toLowerCase().indexOf(uri.host);
      if (pos >= 0) {
        String body = url.substring(pos, pos + uri.host.length);
        try {
          String de = base64.normalize(body);
          body = utf8.decode(base64.decode(de));
        } catch (err) {
          return;
        }
        List parts = body.split("@");
        if (parts.length != 2) {
          return;
        }
        List parts1 = parts[0].split(":");
        List parts2 = parts[1].split(":");
        if (parts2.length != 2) {
          return;
        }
        add = parts2[0].trim();
        port = parts2[1].trim();
        if (parts1.length != 1 && parts1.length != 2) {
          return;
        }
        if (parts1.length == 1) {
          id = parts1[0];
        } else if (parts1.length == 2) {
          scy = parts1[0].trim();
          id = parts1[1].trim();
        }
      }
    } else {
      add = Uri.decodeComponent(uri.host);
      port = uri.port.toString();
      id = uri.userInfo;
    }

    aid = ConvertUtils.stringParse(uri.queryParameters["alterId"]);
    tfo = ConvertUtils.boolParse(uri.queryParameters["tfo"], null);
    tls = ConvertUtils.boolParse(uri.queryParameters["tls"], "tls");
    String? _security =
        ConvertUtils.stringParse(uri.queryParameters["security"]);
    if (tls == null && _security != null) {
      tls = _security == "tls";
    }
    String? _host = ConvertUtils.stringParse(uri.queryParameters["host"]);
    path = ConvertUtils.stringParse(uri.queryParameters["path"]);
    sni = ConvertUtils.stringParse(uri.queryParameters["sni"]);
    fp = ConvertUtils.stringParse(uri.queryParameters["fp"]);
    if (fp == "undefined") {
      fp = "chrome";
    }
    type = ConvertUtils.stringParse((uri.queryParameters["type"] ?? ""));
    String? headerType =
        ConvertUtils.stringParse(uri.queryParameters["headerType"]);
    bool? _skip_cert_verify =
        ConvertUtils.boolParse(uri.queryParameters["allowInsecure"], null);
    ps = ConvertUtils.stringParse(
            uri.queryParameters["remark"] ?? uri.queryParameters["remarks"]) ??
        "";
    String? _obfs = ConvertUtils.stringParse(uri.queryParameters["obfs"]);
    String? _obfsParam =
        ConvertUtils.stringParse(uri.queryParameters["obfsParam"]);
    if (net == null) {
      if (_obfs == "websocket") {
        net = "ws";
        if (_obfsParam != null) {
          host = _obfsParam;
        }
      }
    }

    if ((host == null || host!.isEmpty) && ((sni != null) && sni!.isNotEmpty)) {
      host = sni;
    }
    if ((host == null || host!.isEmpty) &&
        ((_host != null) && _host.isNotEmpty)) {
      host = _host;
    }
    if (path == null || path!.isEmpty) {
      path = "/";
    }
    if (type == "http") {
      net = "http";
    } else if (net == "http") {
      net = "h2";
    } else if (type == "tcp" && headerType == "http") {
      net = "http";
    } else if (type == "ws") {
      net = "ws";
    }
    if (uri.fragment.isNotEmpty) {
      try {
        ps = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {}
    }
    if (ps.isEmpty) {
      ps = "${uri.host}:${uri.port}";
    }
  }
}

class V2RayTxtUtils {
  static const String kSplit = "://";
  static const String kFragment = "#";
  static const String kQuery = "/?"; //plugin=xxxxx
  static const String kQuery2 = "?"; //plugin=xxxxx
  static const String kPort = ":";
  static const String kHost = "@";
  static const String kPassword = ":";

  static Future<ReturnResult<bool>> tryConvert(String content,
      ServerConfigGroupItem proxyItem, TransExceptionAndUnsupport eu) async {
    String? decoded;
    try {
      String de = base64.normalize(content);
      decoded = utf8.decode(base64.decode(de));
    } catch (err, _) {}

    var result =
        await tryConvertWithoutBase64(decoded ?? content, proxyItem, eu);
    if (result.handled != true) {
      result.handled = decoded != null;
    }
    return result;
  }

  static Future<ReturnResult<bool>> tryConvertWithoutBase64(String content,
      ServerConfigGroupItem proxyItem, TransExceptionAndUnsupport eu) async {
    int htmlStart = content.indexOf("<html>");
    if (htmlStart >= 0) {
      int htmlEnd = content.indexOf("</html>");
      if (htmlEnd > htmlStart) {
        String spString = "```"; //代码段分隔符
        int start = content.indexOf(spString);
        if (start > htmlStart) {
          int end = content.lastIndexOf(spString);
          if (start < end && end < htmlEnd) {
            content = content.substring(start + spString.length, end);
          }
        }
      }
    }

    List<String> items = [];
    List<String> sp = ["\\r\\n", "\\n", "\n", "\r", "|"];
    for (var s in sp) {
      if (content.contains(s)) {
        items = content.split(s);
        break;
      }
    }

    if (items.isEmpty) {
      items = [content];
    }
    bool isValid = false;
    for (var it in items) {
      if (!isValid) {
        isValid = it.contains("://");
      }
      it = it.replaceAll(" \r\n\t", "");
    }
    if (!isValid) {
      return ReturnResult(
          handled: false,
          error:
              ReturnResultError("v2ray unsupport format: [://] was not found"));
    }
    return _convertProxy(items, proxyItem, eu);
  }

//todo 批量订阅 https://raw.githubusercontent.com/mahdibland/V2RayAggregator/master/sub/sub_list.json
  static Future<ReturnResult<bool>> _convertProxy(List<String> data,
      ServerConfigGroupItem proxyItem, TransExceptionAndUnsupport eu) async {
    Map<String, int> tagSets = {};
    for (var item in proxyItem.servers) {
      tagSets[item.tag] = 0;
    }
    var tagGen = TagGen(tags: tagSets);
    ReturnResult<bool> result = ReturnResult<bool>();
    List<String> dataNew = [];
    for (int i = 0; i < data.length; ++i) {
      var proxy = data[i].trim();
      if (proxy.isEmpty) {
        continue;
      }

      int schemeIndex = proxy.indexOf(kSplit);
      if (schemeIndex <= 0) {
        continue;
      }
      String scheme = proxy.substring(0, schemeIndex);

      if (scheme == "warp") {
        List<String> warps = proxy.split("&&detour=");
        if (warps.length > 1) {
          String detour = "";
          for (var warp in warps) {
            Uri? uri = UriUtils.parseUrlFixIPV6(warp);
            if (uri == null) {
              continue;
            }
            if (uri.fragment.isEmpty) {
              warp += "#${warp.hashCode.toString()}";
              uri = UriUtils.parseUrlFixIPV6(warp);
            }
            if (uri == null) {
              continue;
            }
            if (detour.isEmpty) {
              dataNew.add(warp);
            } else {
              Map<String, dynamic> queryParameters = {};
              uri.queryParameters
                  .forEach((key, value) => queryParameters[key] = value);
              queryParameters["detour"] = detour;
              Uri uri2 = uri.replace(queryParameters: queryParameters);
              dataNew.add(uri2.toString());
            }
            if (uri.fragment.isNotEmpty) {
              try {
                detour = Uri.decodeComponent(uri.fragment).trim();
              } catch (err) {
                detour = uri.fragment.trim();
              }
            }
          }
        } else {
          dataNew.add(proxy);
        }
      } else if (scheme == "hysteria" || scheme == "hysteria2") {
        //hysteria://185.22.155.71:63717,40000-50000?peer=apple.com&auth=dongtaiwang.com&insecure=1&upmbps=11&downmbps=55&alpn=h3&obfs=dongtaiwang.com&protocol=udp&fastopen=1#Local_hysteria_3
        //hysteria2://dongtaiwang.com@46.17.41.189:51224,10000-20000?insecure=1&sni=www.bing.com#Local_hysteria2_0
        //hysteria2://velr,glg084r56sw,0.48.48tyw0etSXy@47.242.26.32:443?insecure=1&sni=www.bing.com#Local_hysteria2_0
        int index = proxy.indexOf("?");
        Uri? uri2 = Uri.tryParse(proxy);
        if (index > 0) {
          String newProxy = proxy.substring(0, index);
          int index2 = newProxy.lastIndexOf(":");
          if (index2 > 0) {
            newProxy = newProxy.substring(index2);
            int index3 = newProxy.indexOf(",");
            if (index3 > 0) {
              String ports = newProxy.substring(index3);
              if (ports.isNotEmpty && ports.contains("-")) {
                String newProxy2 = proxy.replaceAll(ports, "");
                Uri? uri = Uri.tryParse(newProxy2);
                if (uri != null) {
                  Map<String, dynamic> queryParameters = {};
                  queryParameters.addAll(uri.queryParameters);
                  queryParameters["ports"] = ports.replaceAll(",", "");
                  proxy =
                      uri.replace(queryParameters: queryParameters).toString();
                }
              }
            }
          }
        }
        dataNew.add(proxy);
      } else {
        dataNew.add(proxy);
      }
    }
    for (var proxy in dataNew) {
      if (proxy.isEmpty) {
        continue;
      }
      if (proxy.startsWith("#") || proxy.startsWith("//")) {
        continue;
      }
      proxy = proxy.replaceAll("`", "");
      int schemeIndex = proxy.indexOf(kSplit);
      if (schemeIndex <= 0) {
        eu.unsupports.add(TransUnsupport(
          context: proxy,
          message: "invalid scheme",
        ));

        continue;
      }

      Map parsers = {
        "socks": _parseSocks,
        "socks5": _parseSocks,
        "ss": _parseSS,
        "ssr": _parseSSR,
        "vmess": _parseVMess,
        "vless": _parseVLess,
        "trojan": _parseTrojan,
        "trojan-go": _parseTrojanGo,
        "hy": _parseHysteria,
        "hysteria": _parseHysteria,
        "hy2": _parseHysteria2,
        "hysteria2": _parseHysteria2,
        "wg": _parseWireguard,
        "wireguard": _parseWireguard,
        "warp": _parseWarp,
        "tuic": _parseTuic,
        "ssh": _parseSSH,
      };
      //链接格式参考 https://clashnode.com/p/1316.html
      try {
        String scheme = proxy.substring(0, schemeIndex);
        Uri? uri = UriUtils.parseUrlFixIPV6(proxy);
        String body = proxy.substring(schemeIndex + kSplit.length).trim();

        if (scheme == "ulink") {
          if (uri == null) {
            eu.unsupports.add(TransUnsupport(
              context: proxy.toString(),
              message: "parse uri failed",
            ));

            continue;
          }
          String? content =
              ConvertUtils.stringParse(uri.queryParameters["content"]);
          if (content == null) {
            eu.unsupports.add(TransUnsupport(
              context: proxy.toString(),
              message: "content is not found",
            ));
            continue;
          }
          try {
            String de = base64.normalize(content);
            body = utf8.decode(base64.decode(de));
            var jsonObj = jsonDecode("{\"outbounds\":$body}");
            List<ServerDiversionGroupRuleSetItem> rulesetItems = [];
            ReturnResult<bool> result = SingboxJsonUtils.tryJsonConvert(
                jsonObj, proxyItem, rulesetItems, null, eu);
          } catch (err) {
            eu.unsupports.add(TransUnsupport(
              context: proxy.toString(),
              message: "base64 decode exception",
            ));
          }
          continue;
        } else {
          var parser = parsers[scheme];
          if (parser == null) {
            eu.unsupports.add(TransUnsupport(
              context: proxy.toString(),
              message: "unsupport scheme: $scheme",
            ));

            continue;
          }
          result.handled = true;
          ClashYamlOubboundOptions clash = ClashYamlOubboundOptions();
          if (!await parser(uri, proxy, scheme, body, result, clash, eu)) {
            continue;
          }
          clash.name = clash.name.trim();
          if (clash.name.isEmpty) {
            clash.name = "no name:${proxyItem.servers.length}";
          }
          SingboxJsonOptions singbox = SingboxJsonOptions();
          var err = ClashToSingbox.convert(clash, singbox);
          if (err != null) {
            eu.unsupports.add(TransUnsupport(
              context: proxy.toString(),
              message: err.message,
            ));

            continue;
          }
          singbox.tag = tagGen.gen(singbox.tag);

          ProxyConfig conf = ProxyConfig();
          conf.fromJson(singbox.toJson());
          conf.groupid = proxyItem.groupid;

          proxyItem.servers.add(conf);
        }
      } catch (err, stacktrace) {
        eu.exceptions.add(TransException(
            context: proxy.toString(),
            message: err.toString(),
            stack: StackTraceUtils.trim(stacktrace, 3)));
      }
    }
    proxyItem.filterServers();
    if (proxyItem.servers.isEmpty) {
      result.error = ReturnResultError("v2ray: No server available");
    }
    return result;
  }

  static Future<bool> _parseSocks(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));

      return false;
    }
    //socks://Og==@127.0.0.1:10808#%E9%98%B2%E5%A4%B1%E8%81%94%EF%BC%9Ademo.ama.pub
    clash.type = "socks";
    clash.socks = ClashYamlOutboundSocksOptions();

    int fragmentIndex = body.lastIndexOf(kFragment);
    if (fragmentIndex > 0) {
      String sn = body.substring(fragmentIndex + kFragment.length, body.length);
      try {
        clash.name = Uri.decodeComponent(sn).trim();
      } catch (err) {
        clash.name = sn.trim();
      }

      body = body.substring(0, fragmentIndex);
    }
    int portIndex = body.lastIndexOf(kPort);
    if (portIndex > 0) {
      clash.port = body.substring(portIndex + 1, body.length);
      body = body.substring(0, portIndex);
    }
    int hostIndex = body.lastIndexOf(kHost);
    if (hostIndex > 0) {
      clash.server = body.substring(hostIndex + 1, body.length);
      body = body.substring(0, hostIndex);
    } else {
      clash.server = body;
    }

    try {
      String de = base64.normalize(body);
      body = utf8.decode(base64.decode(de));
    } catch (err) {}

    int passwordIndex = body.lastIndexOf(kPassword);
    if (passwordIndex > 0) {
      clash.socks!.password = body.substring(passwordIndex + 1, body.length);
      clash.socks!.username = body.substring(0, passwordIndex);
    }
    return true;
  }

  static Future<bool> _parseSS(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    /*
    协议文档参考 https://shadowsocks.org/doc/sip002.html
    todo//ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTp0MHNybWR4cm0zeHlqbnZxejlld2x4YjJteXE3cmp1dg@110.72.100.82:2377?plugin=obfs-local%3Bobfs%3Dtls%3Bobfs-host%3D%28TG%40WangCai_1%29f478f13%3A54448#Relay_%F0%9F%87%A8%F0%9F%87%B3CN-%F0%9F%87%B8%F0%9F%87%ACSG_120
    这个不确定什么协议 https://dHZiNTg1ODU4QGdtYWlsLmNvbTo3ZDBkNTAwMi04MWE5LTExZWMtYmI3NC1mMjNjOTE2NGNhNWRAMjA0ZDYzYjItcnlydHMwLXJ5bzg0eS00bTBvLnd0dDUucDVwdi5jb206MjI0NDMvI+mmmea4r1dUVDM=,https://dHZiNTg1ODU4QGdtYWlsLmNvbTo3ZDBkNTAwMi04MWE5LTExZWMtYmI3NC1mMjNjOTE2NGNhNWRAODJmM2IyMDUtcnlydHMwLXJ5bzg0eS00bTBvLmRlbnZlci5wMXB2LmNvbTo0NDMvI+e+juWci+S4ueS9mw==,https://dHZiNTg1ODU4QGdtYWlsLmNvbTo3ZDBkNTAwMi04MWE5LTExZWMtYmI3NC1mMjNjOTE2NGNhNWRAYjE4MjUyMGQtcnlydHMwLXJ5bzg0eS00bTBvLnR3NC50Y3BiYnIubmV0OjYxMjM0LyPlj7DngaM=

    ss://YWVzLTI1Ni1jZmI6cXdlclJFV1FAQA@221.150.109.69:2003#_KR_%E9%9F%A9%E5%9B%BD
    ss://YWVzLTI1Ni1jZmI6YW1hem9uc2tyMDU@13.212.239.81:443#_SG_%E6%96%B0%E5%8A%A0%E5%9D%A1
    ss://method:password@127.0.0.1:99#yuyu
    ss://Y2hhY2hhMjA6ZG91Yi5pby9zc3poZngvKmRvdWIuYmlkL3NzemhmeC8qMjk4N0A2NC4xMzcuMjI5LjE1NDoyOTg3#%F0%9F%87%AD%F0%9F%87%B0%20Relay%20%F0%9F%87%AD%F0%9F%87%B0%20Hong%20Kong%28ChatGPT%29%2006%20TG%3A%40SSRSUB1
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTpmZDZiMDMxZS03YjM1LTQ3MTYtOGU1My0wNjBjNzU1YjUyNTk=@zjcu.lele233.top:26111#%F0%9F%87%AD%F0%9F%87%B0%20Relay%20%F0%9F%87%AD%F0%9F%87%B0%20Hong%20Kong%28ChatGPT%29%2006%20TG%3A%40SSRSUB
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTp0MHNybWR4cm0zeHlqbnZxejlld2x4YjJteXE3cmp1dg@103.29.68.226:2377/?plugin=obfs-local%3Bobfs%3Dtls%3Bobfs-host%3D%28tg%40wangcai_1%297a40fa6%3A41065#%E6%97%A5%E6%9C%AC-642.5KB%2Fs
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTp0MHNybWR4cm0zeHlqbnZxejlld2x4YjJteXE3cmp1dg@125.227.83.21:2377?plugin=obfs-local%3Bobfs%3Dtls%3Bobfs-host%3D%28TG%40WangCai_1%292dd887b%3A29784#%F0%9F%87%A8%F0%9F%87%B3TW_29784%20%E6%97%BA%E8%B4%A2%E8%8A%82%E7%82%B9
    ss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNToyYmEwYTQxOC03ZGI5LTQ0NDAtYTA4Yy1mMWVhMGJlNzViZDQ=@gd-cn.jdyzyjd.xyz:19287#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_1\r\ntrojan://af61ca1c-fb6c-427b-b298-0791a43a968b@120.232.242.14:26700?security=tls&sni=18-140-66-207.nhost.00cdn.com&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_2\r\nss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTo1NjYzMzY4Ny0zYzM1LTRiYWUtOWExNS1lZmZmOGViNjdmOTg=@125.88.212.59:33567#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_3\r\ntrojan://d56cb8dc-e932-4d57-bd90-1381a1245f90@sg2.lvwf8n-hh8e-2300-nmoo-d2e9naobeacn.9d8f269f96b25232-759cbb36d6548597.kaufen:443?security=tls&sni=206.237.5.220&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_4\r\nss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTp5WmRSZ3NrZTg1SG91OTZ6MmRSZHRI@45.144.30.202:28490#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_5\r\nss://YWVzLTI1Ni1nY206ZTk1Y2VjYjAtMTIwOC00NWNkLTgzN2QtNjEwZDQ3NmJmMzI0@183.232.249.22:10048#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_6\r\nss://YWVzLTI1Ni1nY206ZTk1Y2VjYjAtMTIwOC00NWNkLTgzN2QtNjEwZDQ3NmJmMzI0@183.232.249.22:10016#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_7\r\ntrojan://db7f083f-e152-4a82-9cbb-fbbaef67a4ac@conn-t571qa.nodes.fireflysolutions.cloud:43665?security=tls&sni=conn-t571qa.nodes.fireflysolutions.cloud&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_8\r\nss://YWVzLTI1Ni1nY206ZTk1Y2VjYjAtMTIwOC00NWNkLTgzN2QtNjEwZDQ3NmJmMzI0@183.232.249.22:10061#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_9\r\ntrojan://af61ca1c-fb6c-427b-b298-0791a43a968b@5.104.108.109:443?security=tls&sni=20-24-33-134.nhost.00cdn.com&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_10\r\ntrojan://e5f9c753-d401-487f-a77b-1004b7f0f439@us2.lvwf8n-hh8e-2300-nmoo-d2e9naobeacn.9d8f269f96b25232-759cbb36d6548597.kaufen:443?security=tls&sni=206.237.5.220&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_11\r\ntrojan://db7f083f-e152-4a82-9cbb-fbbaef67a4ac@conn-1w213v.nodes.fireflysolutions.cloud:45068?security=tls&sni=conn-1w213v.nodes.fireflysolutions.cloud&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_12\r\ntrojan://af61ca1c-fb6c-427b-b298-0791a43a968b@36.139.138.6:26700?security=tls&sni=18-140-66-207.nhost.00cdn.com&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_13\r\ntrojan://db7f083f-e152-4a82-9cbb-fbbaef67a4ac@conn-y0s7h2.nodes.fireflysolutions.cloud:14614?security=tls&sni=conn-y0s7h2.nodes.fireflysolutions.cloud&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_14\r\nss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTo3Njc5ZTJkZi1hODVjLTQyYzktYTQyMi1hMjQ4ZTAwMGY4ZDg=@sg.colacloud.site:20153#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_15\r\ntrojan://db7f083f-e152-4a82-9cbb-fbbaef67a4ac@conn-8c4f0g.nodes.fireflysolutions.cloud:12927?security=tls&sni=conn-8c4f0g.nodes.fireflysolutions.cloud&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_16\r\ntrojan://telegram-id-directvpn@3.134.139.55:22222?security=tls&sni=trj.rollingnext.co.uk&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_17\r\ntrojan://af61ca1c-fb6c-427b-b298-0791a43a968b@5.104.108.120:443?security=tls&sni=20-24-33-134.nhost.00cdn.com&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_18\r\nss://Y2hhY2hhMjAtaWV0Zi1wb2x5MTMwNTo3Njc5ZTJkZi1hODVjLTQyYzktYTQyMi1hMjQ4ZTAwMGY4ZDg=@au.colacloud.site:20262#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_19\r\ntrojan://db7f083f-e152-4a82-9cbb-fbbaef67a4ac@conn-04chn1.nodes.fireflysolutions.cloud:49516?security=tls&sni=conn-04chn1.nodes.fireflysolutions.cloud&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_20\r\ntrojan://db7f083f-e152-4a82-9cbb-fbbaef67a4ac@conn-8t3i05.nodes.fireflysolutions.cloud:21792?security=tls&sni=conn-8t3i05.nodes.fireflysolutions.cloud&type=tcp&headerType=none#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_21\r\nss://YWVzLTEyOC1nY206ZjUxYTZkYTYtOGQ2OS00ZmU5LThhYzMtMGVkZGVjOTgyMWM5@185.189.32.56:8881#Twitter%E8%8B%8F%E5%B0%8F%E6%9F%A0%7C%E6%B7%B1%E6%B8%AF%E9%9A%A7%E9%81%93%7C%E6%B5%81%E5%AA%92%E4%BD%93_22
    ss://YWVzLTEyOC1nY206YS13eW00b3ZZNFl3@8.217.217.138:80?plugin=obfs-local;mode=websocket#%40ZDYZ2_%F0%9F%87%AD%F0%9F%87%B0_HK
    */

    clash.type = scheme;
    clash.shadowsocks = ClashYamlOutboundShadowsocksOptions();
    //clash.shadowsocks!.udp = false;
    if (body.lastIndexOf("plugin=") > 0) {
      String? plugin = ConvertUtils.stringParse(uri.queryParameters["plugin"]);
      if (plugin != null) {
        List<String> kw = plugin.split(";");
        if (kw.isNotEmpty) {
          clash.shadowsocks!.plugin = kw[0];
          Map<String, dynamic> kvs = {};
          for (var item in kw) {
            List<String> subitems = item.split('=');
            if (subitems.length != 2) {
              continue;
            }
            String key = subitems[0].trim();
            dynamic value = subitems[1].trim();
            kvs[key] = value;
          }
          switch (clash.shadowsocks!.plugin) {
            case "obfs":
            case "obfs-local":
            case "simple-obfs":
              clash.shadowsocks!.plugin_opts_obfs =
                  ClashYamlPluginObfsOptions();
              clash.shadowsocks!.plugin_opts_obfs!.mode =
                  kvs["mode"] ?? kvs["obfs"];
              clash.shadowsocks!.plugin_opts_obfs!.host =
                  kvs["host"] ?? kvs["obfs-host"];
              break;
            case "v2ray-plugin":
              clash.shadowsocks!.plugin_opts_v2ray =
                  ClashYamlPluginV2rayOptions();
              clash.shadowsocks!.plugin_opts_v2ray!.mode = kvs["mode"];
              clash.shadowsocks!.plugin_opts_v2ray!.host = kvs["host"];
              clash.shadowsocks!.plugin_opts_v2ray!.path = kvs["path"];
              clash.shadowsocks!.plugin_opts_v2ray!.mux = kvs["mux"];
              clash.shadowsocks!.plugin_opts_v2ray!.fingerprint =
                  kvs["fingerprint"];
              clash.shadowsocks!.plugin_opts_v2ray!.skip_cert_verify =
                  kvs["skip-cert-verify"];
              break;
            case "shadow-tls":
              clash.shadowsocks!.plugin_opts_shadowtls =
                  ClashYamlPluginShadowTlsOptions();
              clash.shadowsocks!.plugin_opts_shadowtls!.password =
                  kvs["password"];
              clash.shadowsocks!.plugin_opts_shadowtls!.host = kvs["host"];
              clash.shadowsocks!.plugin_opts_shadowtls!.version =
                  kvs["version"];
              break;
          }
        }
      }
    }

    if (uri.fragment.isNotEmpty) {
      try {
        clash.name = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {
        clash.name = uri.fragment.trim();
      }
    }

    const String kFragment = "#";
    int fragmentIndex = body.lastIndexOf(kFragment);
    if (fragmentIndex > 0) {
      if (clash.name.isEmpty) {
        String sn =
            body.substring(fragmentIndex + kFragment.length, body.length);
        try {
          clash.name = Uri.decodeComponent(sn).trim();
        } catch (err) {
          clash.name = sn.trim();
        }
      }

      body = body.substring(0, fragmentIndex);
    }
    int queryIndex = body.lastIndexOf(kQuery);
    if (queryIndex < 0) {
      queryIndex = body.lastIndexOf(kQuery2);
    }
    if (queryIndex > 0) {
      body = body.substring(0, queryIndex);
    }
    int portIndex = body.lastIndexOf(kPort);
    if (portIndex > 0) {
      clash.port = body.substring(portIndex + 1, body.length);
      body = body.substring(0, portIndex);
    } else {
      String de = base64.normalize(body);
      body = utf8.decode(base64.decode(de));
      portIndex = body.lastIndexOf(kPort);
      if (portIndex > 0) {
        clash.port = body.substring(portIndex + 1, body.length);
        body = body.substring(0, portIndex);
      }
    }

    int hostIndex = body.lastIndexOf(kHost);
    if (hostIndex > 0) {
      clash.server = body.substring(hostIndex + 1, body.length);
      body = body.substring(0, hostIndex);
    }
    int passwordIndex = body.lastIndexOf(kPassword);
    if (passwordIndex > 0) {
      clash.shadowsocks!.password =
          body.substring(passwordIndex + 1, body.length);
      clash.shadowsocks!.cipher = body.substring(0, passwordIndex);
    } else {
      try {
        String de = base64.normalize(body);
        body = utf8.decode(base64.decode(de));
        passwordIndex = body.indexOf(kPassword);
        if (passwordIndex > 0) {
          clash.shadowsocks!.password =
              body.substring(passwordIndex + 1, body.length);
          clash.shadowsocks!.cipher = body.substring(0, passwordIndex);
        }
      } catch (err) {
        clash.shadowsocks!.password = body;
      }
    }
    return true;
  }

  static Future<bool> _parseSSR(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    /*
    ssr://MTUwLjEwNy40Ni4yMTo4MDgzOm9yaWdpbjphZXMtMjU2LWNmYjp0bHMxLjJfdGlja2V0X2F1dGg6YVVaeGJucFRjMk5PLz9yZW1hcmtzPThKK0hyZkNmaDdEQ3QrbW1tZWE0cjhLM1ZFZEFhMnR2ZG05cmE4SzNPQT09Jmdyb3VwPVUxTlNVSEp2ZG1sa1pYST0=
    ssr://OTQuMjMuMTE2LjE5MDo0NDM6b3JpZ2luOmFlcy0yNTYtY3RyOnRsczEuMl90aWNrZXRfYXV0aDpTRzkzWkhsQ2VYQmhjM05sY2pJd01qST0vP3JlbWFya3M9OEorSHEvQ2ZoN2ZDdCthemxlV2J2Y0szVkVkQWEydHZkbTlyYThLM01UTT0mZ3JvdXA9VTFOU1VISnZkbWxrWlhJPQ==
    ssr://c2ctYW0zLmVxc3Vuc2hpbmUuY29tOjMyMDAxOm9yaWdpbjphZXMtMjU2LWNmYjp0bHMxLjJfdGlja2V0X2F1dGg6TTJjd1pFaHNTMDFGLz9yZW1hcmtzPThKK0h1UENmaDZ6Q3QrYVdzT1dLb09XZG9jSzNWRWRBYTJ0dmRtOXJhOEszTVRZPSZncm91cD1VMU5TVUhKdmRtbGtaWEk9
    ssr://ZG9uZ3RhaXdhbmc1LmNvbToyMjY2NjphdXRoX2NoYWluX2E6bm9uZTpwbGFpbjpaRzl1WjNSaGFYZGhibWN1WTI5dC8_b2Jmc3BhcmFtPSZyZW1hcmtzPWFIUjBjSE02THk5bmFYUm9kV0l1WTI5dEwwRnNkbWx1T1RrNU9TOXVaWGN0Y0dGakwzZHBhMmt2YzNNbFJUVWxPRFVsT0VRbFJUZ2xRalFsUWprbFJUZ2xRalFsUVRZbFJUVWxPRVlsUWpj
    */

    clash.type = scheme;
    clash.shadowsocksr = ClashYamlOutboundShadowsocksROptions();
    try {
      String de = base64.normalize(body);
      body = utf8.decode(base64.decode(de));
    } catch (err) {}
    int len = 0;
    int queryIndex = body.lastIndexOf(kQuery);
    if (queryIndex < 0) {
      queryIndex = body.lastIndexOf(kQuery2);
      if (queryIndex > 0) {
        len = kQuery2.length;
      }
    } else {
      len = kQuery.length;
    }

    if (queryIndex > 0) {
      String qu = body.substring(queryIndex + len, body.length);
      body = body.substring(0, queryIndex);
      List<String> querys = qu.split("&");
      for (String q in querys) {
        int eqIndex = q.indexOf("=");
        if (eqIndex > 0) {
          String key = q.substring(0, eqIndex);
          String value = q.substring(eqIndex + 1);
          if (key == "remarks") {
            try {
              String de = base64.normalize(value);
              clash.name = utf8.decode(base64.decode(de));
            } catch (err) {
              clash.name = value;
            }

            break;
          }
        }
      }
      List<String> ssr = body.split(":");
      if (ssr.length == 6) {
        clash.server = ssr[0];
        clash.port = ssr[1];
        clash.shadowsocksr!.protocol = ssr[2];
        clash.shadowsocksr!.cipher = ssr[3];
        clash.shadowsocksr!.obfs = ssr[4];
        try {
          String de = base64.normalize(ssr[5]);
          clash.shadowsocksr!.password = utf8.decode(base64.decode(de));
        } catch (err) {
          clash.shadowsocksr!.password = ssr[5];
        }
      } else {
        eu.unsupports.add(TransUnsupport(
          context: proxy.toString(),
          message: "length != 6",
        ));

        return false;
      }
    }
    return true;
  }

  static Future<bool> _parseVMess(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    /*
    doc  https://github.com/2dust/v2rayN/wiki/%E5%88%86%E4%BA%AB%E9%93%BE%E6%8E%A5%E6%A0%BC%E5%BC%8F%E8%AF%B4%E6%98%8E(ver-2)
    vmess://eyJwcyI6IkpNUy04MjcyODRAYzc5czMuampjcnVpc2VzLmNvbToxNjYzNSIsInBvcnQiOiIxNjYzNSIsImlkIjoiMmU0NDY3NDItNTFhZi00YTI3LTgyNmMtNDJhN2Q4OTJjMzkwIiwiYWlkIjowLCJuZXQiOiJ0Y3AiLCJ0eXBlIjoibm9uZSIsInRscyI6Im5vbmUiLCJhZGQiOiI2NC42NC4yMjguMjM3In0
    vmess://eyJwcyI6ICJcdTdmOGVcdTU3MGJcdThkMzlcdTUyMjlcdTg0OTkiLCAidGxzIjogIiIsICJhaWQiOiAyLCAidiI6IDAsICJwb3J0IjogODAsICJhZGQiOiAiODFiNTg1MWItcnlydHMwLXJ5bzg0eS00bTBvLmZyZW1vbnQuY29tZWZyb21jaGluYXRvd24uY29tIiwgImlkIjogIjdkMGQ1MDAyLTgxYTktMTFlYy1iYjc0LWYyM2M5MTY0Y2E1ZCIsICJwYXRoIjogIi8iLCAidHlwZSI6ICJhdXRvIiwgIm5ldCI6ICJ3cyIsICJob3N0IjogInd3dy5oZ2Nicm9hZGJhbmQuY29tIn0=
    vmess://ew0KICAidiI6ICIyIiwNCiAgInBzIjogIvCfh7rwn4e4IFYwMDMtLVVTLeS7mOi0ueaOqOiNkDpkbGoudGYvc3Nyc3ViIiwNCiAgImFkZCI6ICJzcGVlZGlwLmV1Lm9yZyIsDQogICJwb3J0IjogIjgwODAiLA0KICAiaWQiOiAiZGQ4N2QzNjItZGJhMS00OWFhLTljNzMtODdjODI4ZjM3MmQ2IiwNCiAgImFpZCI6ICIwIiwNCiAgInNjeSI6ICJhdXRvIiwNCiAgIm5ldCI6ICJ3cyIsDQogICJ0eXBlIjogIm5vbmUiLA0KICAiaG9zdCI6ICJzc3JzdWIudjAxLnNzcnN1Yi5jb20iLA0KICAicGF0aCI6ICIvYXBpL3YzL2Rvd25sb2FkLmdldEZpbGUiLA0KICAidGxzIjogIiIsDQogICJzbmkiOiAiIiwNCiAgImFscG4iOiAiIg0KfQ==
    vmess://ew0KICAidiI6ICIyIiwNCiAgInBzIjogIueLl+S6kS3nvo7lm70iLA0KICAiYWRkIjogIjQ1LjE0MC44OC4xNTEiLA0KICAicG9ydCI6ICIyMDg4IiwNCiAgImlkIjogIjcyMGU2MjQ4LThjZWUtNGYzNC1iZjFlLTY1NTMyOTlmNTExMyIsDQogICJhaWQiOiAiMCIsDQogICJzY3kiOiAiYXV0byIsDQogICJuZXQiOiAidGNwIiwNCiAgInR5cGUiOiAibm9uZSIsDQogICJob3N0IjogIiIsDQogICJwYXRoIjogIiIsDQogICJ0bHMiOiAiIiwNCiAgInNuaSI6ICIiLA0KICAiYWxwbiI6ICIiDQp9
    */
    clash.type = scheme;
    clash.vmess = ClashYamlOutboundVmessOptions();

    V2RayVemss v2rayvmess = V2RayVemss();
    try {
      //json后base64编码格式, 由于使用http协议的链接无法正常携带=字符,导致=丢失, 需要用base64.normalize补偿
      String de = base64.normalize(body);
      body = utf8.decode(base64.decode(de));
      var config = jsonDecode(body);
      v2rayvmess.fromJson(config);
    } catch (err) {
      //url格式
      v2rayvmess.fromUrl(proxy);
      if (v2rayvmess.port.isEmpty) {
        eu.unsupports.add(TransUnsupport(
          context: proxy.toString(),
          message: err.toString(),
        ));

        return false;
      }
    }
    if (v2rayvmess.ps.isEmpty) {
      clash.name = "${v2rayvmess.host}:${v2rayvmess.port}";
    } else {
      clash.name = v2rayvmess.ps;
    }

    clash.server = v2rayvmess.add;
    clash.port = v2rayvmess.port;

    clash.vmess!.uuid = v2rayvmess.id;
    clash.vmess!.alter_id =
        v2rayvmess.aid != null ? int.tryParse(v2rayvmess.aid!) : null;
    clash.vmess!.cipher = v2rayvmess.scy;
    clash.vmess!.network = v2rayvmess.net;
    clash.vmess!.servername = v2rayvmess.sni;
    clash.vmess!.tls = v2rayvmess.tls;
    clash.vmess!.tls_opts.client_fingerprint = v2rayvmess.fp;
    clash.vmess!.tfo = v2rayvmess.tfo;
    clash.vmess!.tls_opts.tls_tricks = parseTLSTricks(uri);
    if (v2rayvmess.alpn != null) {
      List<String> alpn = v2rayvmess.alpn!.split(",");
      alpn.removeWhere((item) => item.trim().isEmpty);
      clash.vmess!.tls_opts.alpn = alpn;
    }

    if (clash.vmess!.network == "http") {
      clash.vmess!.http_opts = ClashYamlHTTPOptions();
      clash.vmess!.http_opts!.path = [];
      if ((v2rayvmess.path != null) && v2rayvmess.path!.isNotEmpty) {
        clash.vmess!.http_opts!.path!.add(v2rayvmess.path!);
      }

      if ((v2rayvmess.host != null) && v2rayvmess.host!.isNotEmpty) {
        clash.vmess!.http_opts!.headers = {};
        clash.vmess!.http_opts!.headers!["Host"] = v2rayvmess.host!;
        if (clash.vmess!.servername == null) {
          clash.vmess!.servername = v2rayvmess.host!;
        }
      }
    } else if (clash.vmess!.network == "h2" ||
        clash.vmess!.network == "httpupgrade") {
      clash.vmess!.httpupgrade_opts = ClashYamlHttpupgradeOptions();
      clash.vmess!.httpupgrade_opts!.path = v2rayvmess.path;

      if ((v2rayvmess.host != null) && v2rayvmess.host!.isNotEmpty) {
        clash.vmess!.httpupgrade_opts!.host = [];
        clash.vmess!.httpupgrade_opts!.host!.add(v2rayvmess.host!);
      }
    } else if (clash.vmess!.network == "ws") {
      clash.vmess!.ws_opts = ClashYamlWSOptions();
      clash.vmess!.ws_opts!.path = v2rayvmess.path;

      if (clash.vmess!.ws_opts!.path != null) {
        if (!clash.vmess!.ws_opts!.path!.startsWith("/")) {
          clash.vmess!.ws_opts!.path = "/" + clash.vmess!.ws_opts!.path!;
        }
        Uri? uri = Uri.tryParse(
            "https://localhost:8080${clash.vmess!.ws_opts!.path!}");
        if ((uri != null) && uri.queryParameters.isNotEmpty) {
          int? ed = ConvertUtils.intParse(uri.queryParameters["ed"]);
          if (ed != null) {
            try {
              clash.vmess!.ws_opts!.path = Uri.decodeComponent(uri.path);
            } catch (err) {
              clash.vmess!.ws_opts!.path = uri.path;
            }
            clash.vmess!.ws_opts!.max_early_data = ed;
            clash.vmess!.ws_opts!.early_data_header_name =
                'Sec-WebSocket-Protocol';
          }
        }
      }

      if ((v2rayvmess.host != null) && v2rayvmess.host!.isNotEmpty) {
        clash.vmess!.ws_opts!.headers = {};
        clash.vmess!.ws_opts!.headers!["Host"] = v2rayvmess.host!;
        if (clash.vmess!.servername == null) {
          clash.vmess!.servername = v2rayvmess.host!;
        }
      }
    } else if (clash.vmess!.network == "grpc") {
      clash.vmess!.grpc_opts = ClashYamlGRPCOptions();
      clash.vmess!.grpc_opts!.service_name = v2rayvmess.path;
    }
    return true;
  }

  static Future<bool> _parseVLess(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri != null) {
      if (!uri.host.contains(".") && !uri.host.contains("::")) {
        int index = proxy.toLowerCase().indexOf(uri.host);
        if (index >= 0) {
          try {
            String newhost = proxy.substring(index, index + uri.host.length);
            String newUrl = "";
            String de = base64.normalize(newhost);
            newUrl = utf8.decode(base64.decode(de));
            String newI =
                proxy.replaceRange(index, index + uri.host.length, newUrl);
            Uri? newUri = Uri.tryParse(newI);
            if (newUri != null) {
              proxy = newI;
              uri = newUri;
            }
          } catch (err) {}
        }
      }
    }
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    /*
    vless://1b3a34da-2568-41c9-cff3-1ca6ebbfd7d7@142.171.33.142:80?type=ws&security=none&path=%2F1b3a34da#xiaohuvps
    vless://de889af4-1678-41fe-8bce-49a66bbbf358@108.181.22.249:443?encryption=none&flow=xtls-rprx-vision&security=reality&sni=www.icloud.com.cn&type=tcp&headerType=none#%E5%89%A9%E4%BD%99%E6%B5%81%E9%87%8F%EF%BC%9A1000%20GB
    vless://de889af4-1678-41fe-8bce-49a66bbbf358@108.181.22.249:443?encryption=none&flow=xtls-rprx-vision&security=none&sni=www.icloud.com.cn&type=tcp&headerType=none#%E5%A5%97%E9%A4%90%E5%88%B0%E6%9C%9F%EF%BC%9A2023-11-20
    vless://5d7c3fbb-ad6c-4360-912d-0c0b517ee008@108.181.22.249:443?encryption=none&flow=xtls-rprx-vision&security=reality&sni=www.icloud.com.cn&type=tcp&headerType=none#%E5%89%A9%E4%BD%99%E6%B5%81%E9%87%8F%EF%BC%9A1000%20GB
    vless://5d7c3fbb-ad6c-4360-912d-0c0b517ee008@108.181.22.249:443?encryption=none&flow=xtls-rprx-vision&security=reality&sni=www.icloud.com.cn&type=tcp&headerType=none#%E5%A5%97%E9%A4%90%E5%88%B0%E6%9C%9F%EF%BC%9A2023-11-01
    vless://c66f1e54-7ce6-4249-89bd-85ebcbb5f9eb@realall.skrspc.com:443?security=reality&flow=xtls-rprx-vision&type=tcp&sni=www.ucla.edu&fp=random&pbk=RWXDc5Ol3h4RkxLtfGtLm6MUBi6um_-JHcYts9xuJAk&sid=ae4d1249&encryption=none&headerType=none#%F0%9F%87%BA%F0%9F%87%B8%C2%B7%E7%BE%8E%E5%9B%BD%C2%B7TG%40kkovokk%C2%B77
    vless://239A8C26-E8F3-AA33-0811-BBA69E919000@50.114.206.69:443?encryption=none&flow=xtls-rprx-vision&security=reality&sni=azure.microsoft.com&fp=safari&pbk=OIZG5tPDg7SHoOHjvZ-UpKnEPynbFmiNXnNMEDZfoWg&type=tcp&headerType=none#DaWang-US-Xr1
    vless://09747e35-83b0-4248-bcb2-5d9b21843203@us4.xixi444.top:443?security=reality&flow=xtls-rprx-vision&type=tcp&sni=m.media-amazon.com&fp=chrome&pbk=MvLgS83kw_wzIsNMwxTQQFuH4OctdSOzBwsub8F5S0w&sid=38204118&encryption=none&headerType=none#%F0%9F%87%B0%F0%9F%87%B7%C2%B7%E9%9F%A9%E5%9B%BD%C2%B7TG%40kkovokk%C2%B75
    vless://bm9uZTo3M2I2ZGJkNS1hMjdhLTRjNzYtOWFkMS00MmE4MjM4MGRkZGJANDMuMTU0LjM0Ljc0OjE5MzU?remarks=%F0%9F%87%AD%F0%9F%87%B0%20HKG-Tencent&obfsParam=%7B%22Host%22:%220430956d.ed-1ii.pages.dev%22%7D&path=/?ed=2048&obfs=websocket&tls=1&peer=0430956d.ed-1ii.pages.dev&allowInsecure=1
    vless://bm9uZTo3M2I2ZGJkNS1hMjdhLTRjNzYtOWFkMS00MmE4MjM4MGRkZGJANDUuNjYuMTI4LjIxNjoyMDAw?remarks=%F0%9F%87%AF%F0%9F%87%B5%20NRT-xTom&obfsParam=%7B%22Host%22:%220430956d.ed-1ii.pages.dev%22%7D&path=/?ed=2048&obfs=websocket&tls=1&peer=0430956d.ed-1ii.pages.dev&allowInsecure=1
    vless://bm9uZTo3M2I2ZGJkNS1hMjdhLTRjNzYtOWFkMS00MmE4MjM4MGRkZGJAMzUuMjAxLjE2My4zNToxNDcwMw?remarks=%F0%9F%87%AD%F0%9F%87%B0%20HKG-Google&obfsParam=%7B%22Host%22:%220430956d.ed-1ii.pages.dev%22%7D&path=/?ed=2048&obfs=websocket&tls=1&peer=0430956d.ed-1ii.pages.dev&allowInsecure=1
    vless://bm9uZTo3M2I2ZGJkNS1hMjdhLTRjNzYtOWFkMS00MmE4MjM4MGRkZGJAYy54Zi5mcmVlLmhyOjIwODM?remarks=%F0%9F%87%BA%F0%9F%87%B8%20USA-Channel&obfsParam=%7B%22Host%22:%220430956d.ed-1ii.pages.dev%22%7D&path=/?ed=2048&obfs=websocket&tls=1&peer=0430956d.ed-1ii.pages.dev&allowInsecure=1
    vless://0773256c-d020-436d-afea-6eee7cb6c872@dongtaiwang3.com:443?security=tls&allowInsecure=0&flow=&type=ws&fp=chrome&pbk=&sid=&sni=xray1.freegradely.xyz&serviceName=&path=/bodhws&host=xray1.freegradely.xyz#vless_0
    vless://f5c180eb-fbce-49ac-9029-482eca9385c0@www.baota.me:443?security=tls&allowInsecure=0&flow=&type=ws&fp=chrome&pbk=&sid=&sni=xray1.freeh1.xyz&serviceName=&path=/gzogws&host=xray1.freeh1.xyz#vless_1
    vless://3cf5352c-ba83-40d2-a661-df6affa019eb@162.159.142.120:443?security=tls&allowInsecure=0&flow=&type=ws&fp=chrome&pbk=&sid=&sni=yhc1.freeh1.xyz&serviceName=&path=/kdnhws&host=yhc1.freeh1.xyz#vless_2
    vless://f5c180eb-fbce-49ac-9029-482eca9385c0@cloudflare.cfgo.cc:443?security=tls&allowInsecure=0&flow=&type=ws&fp=chrome&pbk=&sid=&sni=xray1.freeh1.xyz&serviceName=&path=/gzogws&host=xray1.freeh1.xyz#vless_3
    vless://516bb7aa-b624-4854-aed8-4219fb4d8f21@190.93.247.155:443?encryption=none&fp=chrome&mode=multi&security=tls&serviceName=%E2%80%8C+%40VPNCUSTOMIZE+%E2%80%8C&sni=FreeV2rayng.VPNCUSTOMIZE.tech&type=grpc#ODIUM - 178
    vless://2a269c03-fd20-46e2-8464-60b10a244801@104.20.2.1:80?encryption=none&host=RFDJCK.%D8%B3%DB%8C%D8%B3%DB%8C.wOrLd&path=%2Fdl%2Findex.php&security=none&type=ws#🫐 ODIUM - 200
    vless://5743b7c7-cbbc-4ca7-8ffb-b653b934a825@dl4.vipnetwork.tech:24673?security=none&type=tcp&headerType=http&path=%2F&host=upstv.com#%F0%9F%87%B9%F0%9F%87%B7%20TR%20-%20TUNNEL%20-%20VIP%20%F0%9F%8C%9F
    */
    clash.type = scheme;
    clash.vless = ClashYamlOutboundVlessOptions();
    clash.server = uri.host;
    clash.port = uri.port == 0 ? "443" : uri.port.toString();

    clash.vless!.tls =
        ConvertUtils.boolParse(uri.queryParameters["tls"], "tls");
    clash.vless!.tls_opts.skip_cert_verify =
        ConvertUtils.boolParse(uri.queryParameters["allowInsecure"], null);
    String? _remark = ConvertUtils.stringParse(uri.queryParameters["remarks"]);
    String? _encryption =
        ConvertUtils.stringParse(uri.queryParameters["encryption"]);
    String? _flow = ConvertUtils.stringParse(uri.queryParameters["flow"]);
    if (_flow != null) {
      try {
        _flow = Uri.decodeComponent(_flow);
      } catch (err) {}
      clash.vless!.flow = _flow;
    }
    if (clash.vless!.flow == "none") {
      clash.vless!.flow = "";
    }
    String? _security =
        ConvertUtils.stringParse(uri.queryParameters["security"]);
    String? _sni = uri.queryParameters["sni"];
    if (_sni != null) {
      try {
        _sni = Uri.decodeComponent(_sni);
      } catch (err) {}
      clash.vless!.tls_opts.sni = _sni;
    }
    String? _alpn = ConvertUtils.stringParse(uri.queryParameters["alpn"]);
    if (_alpn != null) {
      //vless://89b3cbba-e6ac-485a-9481-976a0415eab9@199.232.35.188:443?encryption=none&security=tls&sni=bwdraper.faculty.ucdavis.edu&alpn=h2%2Chttp%2F1.1&fp=randomized&allowInsecure=1&type=ws&host=dominbpb.ir&path=%2FqtP3gzbPuQ6dd7iA%3Fed%3D2560#%F0%9F%92%A6%2023%20-%20VLESS%20C%20-%20Domain%20%3A%20443_MTN_IRCF
      List<String> alpn = _alpn.split(",");
      alpn.removeWhere((item) => item.trim().isEmpty);
      clash.vless!.tls_opts.alpn = alpn;
    }

    String? _serviceName =
        ConvertUtils.stringParse(uri.queryParameters["serviceName"]);
    String? _network = ConvertUtils.stringParse(uri.queryParameters["type"]);
    if (_serviceName != null) {
      try {
        _serviceName = Uri.decodeComponent(_serviceName);
      } catch (err) {}
    }
    clash.vless!.servername = _serviceName;
    if (_network != null) {
      try {
        _network = Uri.decodeComponent(_network);
      } catch (err) {}
      clash.vless!.network = _network!;
    }

    String? _type = ConvertUtils.stringParse(uri.queryParameters["type"]);
    String? _headerType = uri.queryParameters["headerType"];
    clash.vless!.tls_opts.client_fingerprint = ConvertUtils.stringParse(
        uri.queryParameters["fingerprint"] ?? uri.queryParameters["fp"]);
    clash.vless!.tls_opts.tls_tricks = parseTLSTricks(uri);
    String? _sid = ConvertUtils.stringParse(uri.queryParameters["sid"]);
    String? _pbk = ConvertUtils.stringParse(uri.queryParameters["pbk"]);
    String? _path = ConvertUtils.stringParse(uri.queryParameters["path"]);
    String? _host = ConvertUtils.stringParse(uri.queryParameters["host"]);
    String? _method = ConvertUtils.stringParse(uri.queryParameters["method"]);
    String? _obfs = ConvertUtils.stringParse(uri.queryParameters["obfs"]);
    String? _obfsParam =
        ConvertUtils.stringParse(uri.queryParameters["obfsParam"]);
    String? _peer = ConvertUtils.stringParse(uri.queryParameters["peer"]);

    if (_host != null) {
      try {
        _host = Uri.decodeComponent(_host);
      } catch (err) {}
    }
    if (_path != null) {
      try {
        _path = Uri.decodeComponent(_path);
      } catch (err) {}
    }

    if (uri.fragment.isNotEmpty) {
      try {
        clash.name = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {
        clash.name = uri.fragment.trim();
      }
    } else if (_remark != null) {
      clash.name = _remark;
    } else {
      clash.name = "${uri.host}:${clash.port}";
    }

    int pos = uri.userInfo.indexOf(":");
    if (pos >= 0) {
      _encryption ??= uri.userInfo.substring(0, pos);
      clash.vless!.uuid = uri.userInfo.substring(pos + 1, uri.userInfo.length);
    } else {
      clash.vless!.uuid = uri.userInfo;
    }
    if (_security != null) {
      switch (_security) {
        case "reality":
          clash.vless!.tls = true;
          break;
        case "tls":
          clash.vless!.tls = true;
          break;
        case "none":
          clash.vless!.tls = false;
          break;
      }
      if (_security == "reality" || _pbk != null) {
        clash.vless!.reality_opts = ClashYamlRealityOptions();
        clash.vless!.reality_opts!.public_key = _pbk;
        clash.vless!.reality_opts!.short_id = _sid;
      }
    }
    if (_type == "udp") {
      clash.vless!.udp = true;
    } else if (_type == "ws") {
      clash.vless!.ws_opts = ClashYamlWSOptions();
      clash.vless!.ws_opts!.path = _path;
      if (clash.vless!.ws_opts!.path != null) {
        if (!clash.vless!.ws_opts!.path!.startsWith("/")) {
          clash.vless!.ws_opts!.path = "/" + clash.vless!.ws_opts!.path!;
        }
        Uri? uri = Uri.tryParse(
            "https://localhost:8080${clash.vless!.ws_opts!.path!}");
        if ((uri != null) && uri.queryParameters.isNotEmpty) {
          int? ed = ConvertUtils.intParse(uri.queryParameters["ed"]);
          if (ed != null) {
            try {
              clash.vless!.ws_opts!.path = Uri.decodeComponent(uri.path);
            } catch (err) {
              clash.vless!.ws_opts!.path = uri.path;
            }
            clash.vless!.ws_opts!.max_early_data = ed;
            clash.vless!.ws_opts!.early_data_header_name =
                'Sec-WebSocket-Protocol';
          }
        }
      }
    } else if (_type == "http" || _headerType == "http") {
      clash.vless!.http_opts = ClashYamlHTTPOptions();
      if (_path != null) {
        clash.vless!.http_opts!.path = [];
        clash.vless!.http_opts!.path!.add(_path);
      }
      clash.vless!.http_opts!.method = _method;
      if (_host != null) {
        clash.vless!.http_opts!.headers = {};
        clash.vless!.http_opts!.headers!["Host"] = _host;
      }
    } else if (_type == "h2" || clash.vless!.network == "httpupgrade") {
      clash.vless!.httpupgrade_opts = ClashYamlHttpupgradeOptions();
      clash.vless!.httpupgrade_opts!.path = _path;

      if (_host != null) {
        clash.vless!.httpupgrade_opts!.host = [];
        clash.vless!.httpupgrade_opts!.host!.add(_host);
      }
    }

    if (_obfs == "websocket") {
      clash.vless!.ws_opts = ClashYamlWSOptions();
      if (_path != null) {
        clash.vless!.ws_opts!.path = _path;
        if (clash.vless!.ws_opts!.path != null) {
          if (!clash.vless!.ws_opts!.path!.startsWith("/")) {
            clash.vless!.ws_opts!.path = "/" + clash.vless!.ws_opts!.path!;
          }
          Uri? uri = Uri.tryParse(
              "https://localhost:8080${clash.vless!.ws_opts!.path!}");
          if ((uri != null) && uri.queryParameters.isNotEmpty) {
            int? ed = ConvertUtils.intParse(uri.queryParameters["ed"]);
            if (ed != null) {
              try {
                clash.vless!.ws_opts!.path = Uri.decodeComponent(uri.path);
              } catch (err) {
                clash.vless!.ws_opts!.path = uri.path;
              }

              clash.vless!.ws_opts!.max_early_data = ed;
              clash.vless!.ws_opts!.early_data_header_name =
                  'Sec-WebSocket-Protocol';
            }
          }
        }
      }
      if (_obfsParam != null) {
        clash.vless!.ws_opts!.headers = {};
        try {
          var config = jsonDecode(_obfsParam);
          if (config["Host"] != null) {
            clash.vless!.ws_opts!.headers!["Host"] = config["Host"];
            if (clash.vless!.servername == null) {
              clash.vless!.servername = config["Host"];
            }
          }
        } catch (err) {}
      }
    }
    if (clash.vless!.network == "ws") {
      clash.vless!.ws_opts = ClashYamlWSOptions();
      if (_path != null) {
        clash.vless!.ws_opts!.path = _path;
        if (!clash.vless!.ws_opts!.path!.startsWith("/")) {
          clash.vless!.ws_opts!.path = "/" + clash.vless!.ws_opts!.path!;
        }
        Uri? uri = Uri.tryParse(
            "https://localhost:8080${clash.vless!.ws_opts!.path!}");
        if ((uri != null) && uri.queryParameters.isNotEmpty) {
          int? ed = ConvertUtils.intParse(uri.queryParameters["ed"]);
          if (ed != null) {
            try {
              clash.vless!.ws_opts!.path = Uri.decodeComponent(uri.path);
            } catch (err) {
              clash.vless!.ws_opts!.path = uri.path;
            }
            clash.vless!.ws_opts!.max_early_data = ed;
            clash.vless!.ws_opts!.early_data_header_name =
                'Sec-WebSocket-Protocol';
          }
        }
      }
      if (_host != null) {
        clash.vless!.ws_opts!.headers = {};
        clash.vless!.ws_opts!.headers!["Host"] = _host;
        if (clash.vless!.servername == null) {
          clash.vless!.servername = _host;
        }
      }
    } else if (clash.vless!.network == "grpc") {
      clash.vless!.grpc_opts = ClashYamlGRPCOptions();
      clash.vless!.grpc_opts!.service_name = _serviceName;
    }
    return true;
  }

  static Future<bool> _parseTrojan(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    /*
    trojan://41bec492-cd79-4b57-9a15-7d2bb00fcfca@163.123.192.57:443?allowInsecure=1#%F0%9F%87%BA%F0%9F%87%B8%20_US_%E7%BE%8E%E5%9B%BD
    trojan://a8f54f4e-1d9d-44e4-9ef7-50ee7ba89561@jk.jkk.kisskiss.pro:1887?allowInsecure=1#%F0%9F%87%B0%F0%9F%87%B7%20_KR_%E9%9F%A9%E5%9B%BD
    trojan://telegram-id-privatevpns@18.135.101.40:22222?allowInsecure=1&sni=trj.rollingnext.co.uk#%F0%9F%87%AC%F0%9F%87%A7%20_GB_%E8%8B%B1%E5%9B%BD
    trojan://cdca9247-c6c5-4521-a782-d888a4565065@84.252.121.218:443?security=tls&type=tcp&headerType=none#orgorg.tktk.one__07
    trojan://cf2bd6f7-d094-4ca8-99ed-b8289f5a93cd@6w7j3p03.mcfront.xyz:31111?allowInsecure=0&peer=jp03.lovemc.xyz&sni=jp03.lovemc.xyz#翻墙党fanqiangdang.com
    */
    clash.type = scheme;
    clash.trojan = ClashYamlOutboundTrojanOptions();
    clash.server = Uri.decodeComponent(uri.host);
    clash.port = uri.port == 0 ? "443" : uri.port.toString();

    if (uri.fragment.isNotEmpty) {
      try {
        clash.name = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {
        clash.name = uri.fragment.trim();
      }
    } else {
      clash.name = "${uri.host}:${clash.port}";
    }
    clash.trojan!.password = Uri.decodeComponent(uri.userInfo);

    String? _security =
        ConvertUtils.stringParse(uri.queryParameters["security"]);
    if (_security != null) {
      switch (_security) {
        case "none":
          clash.trojan!.tls = false;
          break;
      }
    }
    clash.trojan!.tls_opts.skip_cert_verify =
        ConvertUtils.boolParse(uri.queryParameters["allowInsecure"], null);
    clash.trojan!.tls_opts.client_fingerprint = ConvertUtils.stringParse(
        uri.queryParameters["client-fingerprint"] ??
            uri.queryParameters["fingerprint"] ??
            uri.queryParameters["fp"]);
    clash.trojan!.tls_opts.sni =
        ConvertUtils.stringParse(uri.queryParameters["sni"]);
    String? _alpn = ConvertUtils.stringParse(uri.queryParameters["alpn"]);
    if (_alpn != null) {
      List<String> alpn = _alpn.split(",");
      alpn.removeWhere((item) => item.trim().isEmpty);
      clash.trojan!.tls_opts.alpn = alpn;
    }
    clash.trojan!.tls_opts.tls_tricks = parseTLSTricks(uri);
    String? _network = ConvertUtils.stringParse(uri.queryParameters["type"]);
    String? _path = ConvertUtils.stringParse(uri.queryParameters["path"]);
    String? _host = ConvertUtils.stringParse(uri.queryParameters["host"]);
    String? _serviceName =
        ConvertUtils.stringParse(uri.queryParameters["serviceName"]);
    if (_host != null) {
      try {
        _host = Uri.decodeComponent(_host);
      } catch (err) {}
    }
    if (_path != null) {
      try {
        _path = Uri.decodeComponent(_path);
      } catch (err) {}
    }
    if (_serviceName != null) {
      try {
        _serviceName = Uri.decodeComponent(_serviceName);
      } catch (err) {}
    }
    if (_network != null) {
      try {
        _network = Uri.decodeComponent(_network);
      } catch (err) {}
      clash.trojan!.network = _network;
    }
    if (clash.trojan!.network == "ws") {
      clash.trojan!.ws_opts = ClashYamlWSOptions();
      if (_path != null) {
        clash.trojan!.ws_opts!.path = _path;
        if (!clash.trojan!.ws_opts!.path!.startsWith("/")) {
          clash.trojan!.ws_opts!.path = "/" + clash.trojan!.ws_opts!.path!;
        }
        Uri? uri = Uri.tryParse(
            "https://localhost:8080${clash.trojan!.ws_opts!.path!}");
        if ((uri != null) && uri.queryParameters.isNotEmpty) {
          int? ed = ConvertUtils.intParse(uri.queryParameters["ed"]);
          if (ed != null) {
            try {
              clash.trojan!.ws_opts!.path = Uri.decodeComponent(uri.path);
            } catch (err) {
              clash.trojan!.ws_opts!.path = uri.path;
            }

            clash.trojan!.ws_opts!.path = uri.path;
            clash.trojan!.ws_opts!.max_early_data = ed;
            clash.trojan!.ws_opts!.early_data_header_name =
                'Sec-WebSocket-Protocol';
          }
        }
      }
      if ((_host != null) && _host.isNotEmpty) {
        clash.trojan!.ws_opts!.headers = {};
        clash.trojan!.ws_opts!.headers!["Host"] = _host;
      }
    } else if (clash.trojan!.network == "grpc") {
      clash.trojan!.grpc_opts = ClashYamlGRPCOptions();
      clash.trojan!.grpc_opts!.service_name = _serviceName;
    }
    return true;
  }

  static Future<bool> _parseTrojanGo(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    scheme = "trojan";
    //协议规范 https://p4gefau1t.github.io/trojan-go/developer/url/
    //trojan-go://password1234@google.com/?sni=microsoft.com&type=ws&host=youtube.com&path=%2Fgo&encryption=ss%3Baes-256-gcm%3Afuckgfw
    clash.type = "trojan";
    clash.trojan = ClashYamlOutboundTrojanOptions();
    clash.server = Uri.decodeComponent(uri.host);
    clash.port = uri.port == 0 ? "443" : uri.port.toString();

    if (uri.fragment.isNotEmpty) {
      try {
        clash.name = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {
        clash.name = uri.fragment.trim();
      }
    } else {
      clash.name = "${uri.host}:${clash.port}";
    }
    clash.trojan!.password = Uri.decodeComponent(uri.userInfo);

    //clash.trojan!.udp = true;

    String? _security = uri.queryParameters["security"];
    if (_security != null) {
      switch (_security) {
        case "none":
          clash.trojan!.tls = false;
          break;
      }
    }
    clash.trojan!.tls_opts.skip_cert_verify =
        ConvertUtils.boolParse(uri.queryParameters["allowInsecure"], null);
    clash.trojan!.tls_opts.client_fingerprint = ConvertUtils.stringParse(
        uri.queryParameters["client-fingerprint"] ??
            uri.queryParameters["fingerprint"] ??
            uri.queryParameters["fp"]);
    String? _sni = ConvertUtils.stringParse(uri.queryParameters["sni"]);
    if (_sni != null) {
      try {
        _sni = Uri.decodeComponent(_sni);
      } catch (err) {}
      clash.trojan!.tls_opts.sni = _sni;
    }
    String? _alpn = ConvertUtils.stringParse(uri.queryParameters["alpn"]);
    if (_alpn != null) {
      List<String> alpn = _alpn.split(",");
      alpn.removeWhere((item) => item.trim().isEmpty);
      clash.trojan!.tls_opts.alpn = alpn;
    }
    String? _network = ConvertUtils.stringParse(uri.queryParameters["type"]);
    if (_network != null) {
      try {
        _network = Uri.decodeComponent(_network);
      } catch (err) {}
      clash.trojan!.network = _network;
    }
    String? _path = ConvertUtils.stringParse(uri.queryParameters["path"]);
    String? _host = ConvertUtils.stringParse(uri.queryParameters["host"]);
    String? _encryption =
        ConvertUtils.stringParse(uri.queryParameters["encryption"]);
    String? _serviceName =
        ConvertUtils.stringParse(uri.queryParameters["serviceName"]);
    if (_host != null) {
      try {
        _host = Uri.decodeComponent(_host);
      } catch (err) {}
    }
    if (_path != null) {
      try {
        _path = Uri.decodeComponent(_path);
      } catch (err) {}
    }
    if (_serviceName != null) {
      try {
        _serviceName = Uri.decodeComponent(_serviceName);
      } catch (err) {}
    }
    if (clash.trojan!.network == "ws") {
      clash.trojan!.ws_opts = ClashYamlWSOptions();
      if (_path != null) {
        clash.trojan!.ws_opts!.path = _path;
        if (!clash.trojan!.ws_opts!.path!.startsWith("/")) {
          clash.trojan!.ws_opts!.path = "/" + clash.trojan!.ws_opts!.path!;
        }
        Uri? uri = Uri.tryParse(
            "https://localhost:8080${clash.trojan!.ws_opts!.path!}");
        if ((uri != null) && uri.queryParameters.isNotEmpty) {
          int? ed = ConvertUtils.intParse(uri.queryParameters["ed"]);
          if (ed != null) {
            try {
              clash.trojan!.ws_opts!.path = Uri.decodeComponent(uri.path);
            } catch (err) {
              clash.trojan!.ws_opts!.path = uri.path;
            }

            clash.trojan!.ws_opts!.max_early_data = ed;
            clash.trojan!.ws_opts!.early_data_header_name =
                'Sec-WebSocket-Protocol';
          }
        }
      }
      if (_host != null) {
        clash.trojan!.ws_opts!.headers = {};
        clash.trojan!.ws_opts!.headers!["Host"] = _host;
      }
    } else if (clash.trojan!.network == "grpc") {
      clash.trojan!.grpc_opts = ClashYamlGRPCOptions();
      clash.trojan!.grpc_opts!.service_name = _serviceName;
    }
    return true;
  }

  static Future<bool> _parseHysteria(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    scheme = "hysteria";
    /*
    hysteria://167.160.90.251:48089?peer=&auth=dongtaiwang.com&insecure=1&upmbps=50&downmbps=80&alpn=h3&mport=48089&obfs=&protocol=udp&fastopen=1#hysteria_meta_0
    hysteria://108.181.22.239:41146?peer=&auth=dongtaiwang.com&insecure=1&upmbps=50&downmbps=80&alpn=h3&mport=41146&obfs=&protocol=udp&fastopen=1#hysteria_meta_0
    hysteria://108.181.22.213:52284?peer=&auth=dongtaiwang.com&insecure=1&upmbps=50&downmbps=80&alpn=h3&mport=52284&obfs=&protocol=udp&fastopen=1#hysteria_meta_1
    hysteria://108.181.22.155:19721?peer=&auth=dongtaiwang.com&insecure=1&upmbps=50&downmbps=80&alpn=h3&mport=19721&obfs=&protocol=udp&fastopen=1#hysteria_meta_2
    hysteria://104.234.70.41:57153?peer=&auth=dongtaiwang.com&insecure=1&upmbps=50&downmbps=80&alpn=h3&mport=57153&obfs=&protocol=udp&fastopen=1#hysteria_meta_3
    hysteria://www.dtku46.xyz:11223?peer=&auth=mqoE9qSoyMFa&insecure=1&upmbps=50&downmbps=80&alpn=h3&mport=11223&obfs=&protocol=udp&fastopen=1#hysteria_meta_4
    hysteria://104.234.70.6:16117?peer=&auth=dongtaiwang.com&insecure=1&upmbps=50&downmbps=80&alpn=h3&mport=16117&obfs=&protocol=udp&fastopen=1#hysteria_meta_5
    hysteria://www.dtku46.xyz:11223?peer=&auth=mqoE9qSoyMFa&insecure=1&upmbps=50&downmbps=80&alpn=h3&mport=11223&obfs=&protocol=udp&fastopen=1#hysteria_meta_6
    hysteria://167.160.91.115:41189?peer=www.amazon.cn&auth=bWAwIqINo7XDm1fUlXQGBifVIXoYs1ylgVKqWFKzK1XyDKuwNF&insecure=1&upmbps=11&downmbps=55&alpn=h3&obfs=&protocol=udp&fastopen=1#hysteria_0
    hysteria://173.234.25.52:20164?peer=www.microsoft.com&auth=Ljg6NNEATDqP97hdAdHe1lJv7ggtKc0h7zmCCZKCX3qY0LR64F&insecure=1&upmbps=11&downmbps=55&alpn=h3&obfs=&protocol=udp&fastopen=1#hysteria_1
    hysteria://108.181.22.239:39967?peer=bing.com&auth=dongtaiwang.com&insecure=1&upmbps=11&downmbps=55&alpn=h3&obfs=&protocol=udp&fastopen=1#hysteria_2
    hysteria://51.158.54.46:11926?peer=youku.com&auth=Trz2alKwzCImRAXI3nXfpo1ylpHfqOL8s1vageWKoyjjvWeMVs&insecure=1&upmbps=11&downmbps=55&alpn=h3&obfs=&protocol=udp&fastopen=1#hysteria_3
    */
    clash.type = "hysteria";
    clash.hysteria = ClashYamlOutboundHysteriaOptions();
    clash.server = Uri.decodeComponent(uri.host);
    clash.port = uri.port == 0 ? "443" : uri.port.toString();

    if (uri.fragment.isNotEmpty) {
      try {
        clash.name = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {
        clash.name = uri.fragment.trim();
      }
    } else {
      clash.name = "${uri.host}:${clash.port}";
    }
    clash.hysteria!.tls_opts.skip_cert_verify =
        ConvertUtils.boolParse(uri.queryParameters["insecure"], null);
    clash.hysteria!.tls_opts.sni =
        ConvertUtils.stringParse(uri.queryParameters["sni"]);
    String? _alpn = ConvertUtils.stringParse(uri.queryParameters["alpn"]);
    if (_alpn != null) {
      List<String> alpn = _alpn.split(",");
      alpn.removeWhere((item) => item.trim().isEmpty);
      clash.hysteria!.tls_opts.alpn = alpn;
    }
    clash.hysteria!.ports =
        ConvertUtils.stringParse(uri.queryParameters["ports"]);
    var auth = ConvertUtils.stringParse(uri.queryParameters["auth"]);
    if (auth != null && auth.isNotEmpty) {
      try {
        var au = base64.decode(base64.normalize(auth));
        clash.hysteria!.auth = auth;
      } catch (err) {
        clash.hysteria!.auth_str = auth;
      }
    }

    clash.hysteria!.obfs =
        ConvertUtils.stringParse(uri.queryParameters["obfs"]);
    clash.hysteria!.protocol =
        ConvertUtils.stringParse(uri.queryParameters["protocol"]);
    clash.hysteria!.up =
        ConvertUtils.stringParse(uri.queryParameters["upmbps"]);
    clash.hysteria!.down =
        ConvertUtils.stringParse(uri.queryParameters["downmbps"]);
    clash.hysteria!.recv_window_conn =
        ConvertUtils.intParse(uri.queryParameters["recvwindowconn"]);
    clash.hysteria!.recv_window =
        ConvertUtils.intParse(uri.queryParameters["recvwindow"]);
    clash.hysteria!.ca = ConvertUtils.stringParse(uri.queryParameters["ca"]);
    clash.hysteria!.disable_mtu_discovery = ConvertUtils.boolParse(
        uri.queryParameters["disablemtudiscovery"], null);
    clash.hysteria!.fast_open =
        ConvertUtils.boolParse(uri.queryParameters["fastopen"], null);
    var presult = parseTurnRelay(uri.queryParameters["relay"]);
    if (presult.error != null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse turn-relay failed: ${presult.error!.message}",
      ));
      return false;
    }
    clash.hysteria!.relay = presult.data;
    clash.hysteria!.ports = ConvertUtils.stringParse(
        uri.queryParameters["mport"] ?? uri.queryParameters["ports"]);
    clash.hysteria!.hop_interval =
        ConvertUtils.intParse(uri.queryParameters["hop_interval"]);
    return true;
  }

  static Future<bool> _parseHysteria2(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));

      return false;
    }
    scheme = "hysteria2";
    /*
    hy2://NDE0NTc3OjExMTIwMTplODE1ODQ3YmIyZGJjZDM0%3D@45.11.104.44:3074/?insecure=1#%F0%9F%87%AD%F0%9F%87%B0HK_044
    hy2://f40b1e441addaec3@45.76.44.57:443?insecure=1&obfs=salamander&obfs-password=2db7b42a&sni=google.co#HK_0442
    hy2://32242006cd6d9890@194.116.215.65:443/?obfs=salamander&obfs-password=0eb626ab&insecure=1#solapscrypto
    hysteria2://dongtaiwang.com@45.145.72.212:23520?insecure=1&sni=bing.com&obfs=&obfs-password=#hysteria2_meta_7
    */

    clash.type = "hysteria2";
    clash.hysteria2 = ClashYamlOutboundHysteria2Options();
    clash.server = Uri.decodeComponent(uri.host);
    clash.port = uri.port == 0 ? "443" : uri.port.toString();

    if (uri.fragment.isNotEmpty) {
      try {
        clash.name = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {
        clash.name = uri.fragment.trim();
      }
    } else {
      clash.name = "${uri.host}:${clash.port}";
    }

    clash.hysteria2!.tls_opts.skip_cert_verify =
        ConvertUtils.boolParse(uri.queryParameters["insecure"], null);
    clash.hysteria2!.tls_opts.sni =
        ConvertUtils.stringParse(uri.queryParameters["sni"]);
    String? _alpn = ConvertUtils.stringParse(uri.queryParameters["alpn"]);
    if (_alpn != null) {
      List<String> alpn = _alpn.split(",");
      alpn.removeWhere((item) => item.trim().isEmpty);
      clash.hysteria2!.tls_opts.alpn = alpn;
    }
    clash.hysteria2!.up = ConvertUtils.stringParse(uri.queryParameters["up"]);
    clash.hysteria2!.down =
        ConvertUtils.stringParse(uri.queryParameters["down"]);
    clash.hysteria2!.password =
        ConvertUtils.stringParse(Uri.decodeComponent(uri.userInfo));
    clash.hysteria2!.obfs =
        ConvertUtils.stringParse(uri.queryParameters["obfs"]);
    clash.hysteria2!.obfs_password =
        ConvertUtils.stringParse(uri.queryParameters["obfs-password"]);
    clash.hysteria2!.ca = ConvertUtils.stringParse(uri.queryParameters["ca"]);
    clash.hysteria2!.ca_str =
        ConvertUtils.stringParse(uri.queryParameters["ca-str"]);
    var presult = parseTurnRelay(uri.queryParameters["relay"]);
    if (presult.error != null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse turn-relay failed: ${presult.error!.message}",
      ));
      return false;
    }
    clash.hysteria2!.relay = presult.data;
    clash.hysteria2!.ports = ConvertUtils.stringParse(
        uri.queryParameters["mport"] ?? uri.queryParameters["ports"]);
    clash.hysteria2!.hop_interval =
        ConvertUtils.intParse(uri.queryParameters["hop_interval"]);
    return true;
  }

  static Future<bool> _parseWireguard(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    /*
wg://162.159.195.5:2408?publicKey=bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=&privateKey=uNDQxW+xNhJcSn08VLO9MYwTOJbl7a0Hqr5ewzy2glY=&ip=172.16.0.2&udp=1&reserved=203,56,173#1.1.1.1\n\n
wg://162.159.195.8:2408?publicKey=bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=&privateKey=uCWvh8B4LwYy2zKcA3ZVrp0Hl4oSldzn/fDXluUIznE=&ip=172.16.0.2&udp=1&reserved=104,242,131#Warp
          */
    clash.type = "wireguard";
    clash.wg = ClashYamlOutboundWireguardOptions();
    clash.server = Uri.decodeComponent(uri.host);
    clash.port = uri.port == 0 ? "443" : uri.port.toString();

    if (uri.fragment.isNotEmpty) {
      try {
        clash.name = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {
        clash.name = uri.fragment.trim();
      }
    } else {
      clash.name = "${uri.host}:${clash.port}";
    }

    clash.wg!.ip = ConvertUtils.stringParse(uri.queryParameters["ip"]);
    clash.wg!.ipv6 = ConvertUtils.stringParse(uri.queryParameters["ipv6"]);
    if (clash.wg!.ip == null && clash.wg!.ipv6 == null) {
      String? address =
          ConvertUtils.stringParse(uri.queryParameters["address"]);
      if (address != null && address.isNotEmpty) {
        List<String> addressList = address.split(",");
        for (int i = 0; i < addressList.length; ++i) {
          if (NetworkUtils.isIpv4WithMask(addressList[i])) {
            clash.wg!.ip = addressList[i];
          } else if (NetworkUtils.isIpv6WithMask(addressList[i])) {
            clash.wg!.ipv6 = addressList[i];
          }
        }
      }
    }

    String? publicKey = ConvertUtils.stringParse(
        uri.queryParameters["publicKey"] ?? uri.queryParameters["publickey"]);
    if (publicKey != null) {
      clash.wg!.public_key = publicKey.replaceAll(" ", "+");
    }
    String? privateKey = ConvertUtils.stringParse(
        uri.queryParameters["privateKey"] ?? uri.queryParameters["privatekey"]);
    if (privateKey != null) {
      clash.wg!.private_key = privateKey.replaceAll(" ", "+");
    } else {
      try {
        clash.wg!.private_key = base64.normalize(uri.userInfo);
        clash.wg!.private_key = clash.wg!.private_key!.replaceAll(" ", "+");
      } catch (err) {
        eu.unsupports.add(TransUnsupport(
          context: proxy.toString(),
          message: "base64 decode exception",
        ));

        return false;
      }
    }
    String? preSharedKey = ConvertUtils.stringParse(
        uri.queryParameters["preSharedKey"] ??
            uri.queryParameters["presharedkey"]);
    if (preSharedKey != null) {
      clash.wg!.pre_shared_key = preSharedKey.replaceAll(" ", "+");
    }
    clash.wg!.udp = ConvertUtils.boolParse(uri.queryParameters["udp"], null);
    String? _reserved =
        ConvertUtils.stringParse(uri.queryParameters["reserved"]);
    clash.wg!.mtu = ConvertUtils.intParse(uri.queryParameters["mtu"]);

    if ((_reserved != null) && _reserved.isNotEmpty) {
      var resList = _reserved.split(",");
      List<int>? reserved = [];
      for (var res in resList) {
        int? value = int.tryParse(res);
        if (value == null) {
          reserved = null;
          break;
        }
        reserved!.add(value);
      }

      clash.wg!.reserved = reserved;
    }
    var presult = parseTurnRelay(uri.queryParameters["relay"]);
    if (presult.error != null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse turn-relay failed: ${presult.error!.message}",
      ));
      return false;
    }
    clash.wg!.relay = presult.data;
    return true;
  }

  static Future<bool> _parseWarp(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    /*
    warp://188.114.99.215:890?ifp=5-10#WiW-🔵&&detour=warp://162.159.192.227:890?ifp=5-10#WARP-🔵
    warp://auto?ifp=10-20&ifps=40-100&ifpd=10-20#Warp_10-20_40-100_10-20&&detour=warp://162.159.192.227:890?ifp=5-10#WARP&&detour=warp://188.114.99.215:890?ifp=5-10#WiW
    warp://[2606:4700:d0::4667:2aa8:c75a:5a53]:864/?ifp=1-5#WarpInWarp ⭐️&&detour=warp://[2606:4700:d0::112a:fc3f:3700:8e7d]:4500/?ifp=5-10#Warp 🇮🇷&&detour=warp://162.159.192.227:890?ifp=5-10#WARP
    warp://[2606:4700:d0::33af:8a38:f7c4:41de]:4500/?ifp=1-5#warp-ir&&detour=warp://[2606:4700:d0::33af:8a38:f7c4:41de]:864/?ifp=1-5#warp-main
    */

    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    var settingConfig = SettingManager.getConfig();
    var warpConfig = await CloudflareWarpUtils.genFreeWarpConfig(uri.userInfo);
    if (warpConfig.error != null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "genFreeWarpConfig failed:${warpConfig.error!.message}",
      ));
      return false;
    }

    clash.type = "wireguard";
    clash.wg = ClashYamlOutboundWireguardOptions();
    clash.server = Uri.decodeComponent(uri.host);
    if (NetworkUtils.isIpv4(clash.server)) {
      var result = await NetworkUtils.testConnectLatency(
          clash.server, uri.port, const Duration(milliseconds: 3000));

      if (result.error != null) {
        clash.server = "auto";
      }
    }
    if (clash.server == "auto" ||
        clash.server == "default" ||
        clash.server == "random") {
      var address = await CloudflareWarpUtils.generateRandomWithTestAlive();
      clash.server = address.item1;
      clash.port = address.item2.toString();
    } else {
      clash.port = uri.port.toString();
    }
    if (uri.fragment.isNotEmpty) {
      try {
        clash.name = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {
        clash.name = uri.fragment.trim();
      }
    } else {
      clash.name = "${uri.host}:${clash.port}";
    }
    if (warpConfig.data!.item2.premiumData != 0) {
      clash.attach = ProxyConfUtils.convertTrafficToString(
          warpConfig.data!.item2.premiumData,
          kb: 1000);
    }

    clash.wg!.public_key = warpConfig.data!.item1.peerPublicKey;
    clash.wg!.private_key = settingConfig.warp.account.privateKey.isNotEmpty
        ? settingConfig.warp.account.privateKey
        : warpConfig.data!.item1.privateKey;
    clash.wg!.ip = warpConfig.data!.item1.ipv4;
    clash.wg!.ipv6 = warpConfig.data!.item1.ipv6.isNotEmpty
        ? warpConfig.data!.item1.ipv6
        : null;
    clash.wg!.mtu = warpConfig.data!.item1.mtu;

    clash.wg!.fake_packets =
        ConvertUtils.stringParse(uri.queryParameters["ifp"]);
    clash.wg!.fake_packets_size =
        ConvertUtils.stringParse(uri.queryParameters["ifps"]);
    clash.wg!.fake_packets_delay =
        ConvertUtils.stringParse(uri.queryParameters["ifpd"]);
    clash.wg!.fake_packets_mode =
        ConvertUtils.stringParse(uri.queryParameters["ifpm"]);
    clash.detour = ConvertUtils.stringParse(uri.queryParameters["detour"]);

    if (warpConfig.data!.item1.reserved.isNotEmpty) {
      clash.wg!.reserved = [];
      var arr = base64.decode(warpConfig.data!.item1.reserved);
      for (var i in arr) {
        clash.wg!.reserved!.add(i);
      }
    }

    return true;
  }

  static Future<bool> _parseTuic(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    //tuic://764b539f-2d3c-4772-9731-5ebf6984af98:dongtaiwang.com@64.110.25.10:11227?sni=bing.com&congestion_control=bbr&udp_relay_mode=native&alpn=h3&allow_insecure=1
    clash.type = "tuic";
    clash.tuic = ClashYamlOutboundTuicOptions();
    clash.server = Uri.decodeComponent(uri.host);
    clash.port = uri.port == 0 ? "443" : uri.port.toString();

    if (uri.fragment.isNotEmpty) {
      try {
        clash.name = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {
        clash.name = uri.fragment.trim();
      }
    } else {
      clash.name = "${uri.host}:${clash.port}";
    }

    clash.tuic!.tls_opts.skip_cert_verify =
        ConvertUtils.boolParse(uri.queryParameters["allow_insecure"], null);
    String? _sni = ConvertUtils.stringParse(uri.queryParameters["sni"]);
    if (_sni != null) {
      try {
        _sni = Uri.decodeComponent(_sni);
      } catch (err) {}
      clash.tuic!.tls_opts.sni = _sni;
    }
    String? _alpn = ConvertUtils.stringParse(uri.queryParameters["alpn"]);
    if (_alpn != null) {
      List<String> alpn = _alpn.split(",");
      alpn.removeWhere((item) => item.trim().isEmpty);
      clash.tuic!.tls_opts.alpn = alpn;
    }
    List<String> parts = uri.userInfo.split(":");
    try {
      if (parts.length <= 1) {
        //tuic://1386297f-59cc-4227-b978-4516d5619643%3AMZsK9QssTfuy932qtg7TowmF@45.147.2222.00:3111?sni=www.bing.com&alpn=h3&congestion_control=bbr#RU-LLc
        String userinfo = Uri.decodeComponent(uri.userInfo);
        parts = userinfo.split(":");
      } else {
        for (var index = 0; index < parts.length; index++) {
          parts[index] = Uri.decodeComponent(parts[index]);
        }
      }
    } catch (err) {}

    if (parts.length == 2) {
      clash.tuic!.uuid = parts[0];
      clash.tuic!.password = parts[1];
    }
    if (clash.tuic!.uuid == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "invalid uuid",
      ));

      return false;
    }
    clash.tuic!.token = ConvertUtils.stringParse(uri.queryParameters["token"]);
    clash.tuic!.ip = ConvertUtils.stringParse(uri.queryParameters["ip"]);
    clash.tuic!.heartbeat_interval =
        ConvertUtils.intParse(uri.queryParameters["heartbeat_interval"]);
    clash.tuic!.reduce_rtt =
        ConvertUtils.boolParse(uri.queryParameters["reduce_rtt"], null);
    clash.tuic!.request_timeout =
        ConvertUtils.intParse(uri.queryParameters["request_timeout"]);
    clash.tuic!.udp_relay_mode =
        ConvertUtils.stringParse(uri.queryParameters["udp_relay_mode"]);
    clash.tuic!.congestion_controller =
        ConvertUtils.stringParse(uri.queryParameters["congestion_control"]);
    clash.tuic!.max_udp_relay_packet_size =
        ConvertUtils.intParse(uri.queryParameters["max_udp_relay_packet_size"]);
    clash.tuic!.fast_open =
        ConvertUtils.boolParse(uri.queryParameters["fastopen"], null);
    clash.tuic!.max_open_streams =
        ConvertUtils.intParse(uri.queryParameters["max_open_streams"]);
    var presult = parseTurnRelay(uri.queryParameters["relay"]);
    if (presult.error != null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse turn-relay failed: ${presult.error!.message}",
      ));
      return false;
    }
    clash.tuic!.relay = presult.data;
    return true;
  }

  static Future<bool> _parseSSH(
      Uri? uri,
      String proxy,
      String scheme,
      String body,
      ReturnResult<bool> result,
      ClashYamlOubboundOptions clash,
      TransExceptionAndUnsupport eu) async {
    if (uri == null) {
      eu.unsupports.add(TransUnsupport(
        context: proxy.toString(),
        message: "parse uri failed",
      ));
      return false;
    }
    /*
    ssh://NjkzMTRlNmUtM2VlYy00YWRmLWIwMGQtOTU4ZDhkYzQ4MjY5OjA6LS0tLS1CRUdJTiBPUEVOU1NIIFBSSVZBVEUgS0VZLS0tLS0KYjNCbGJuTnphQzFyWlhrdGRqRUFBQUFBQkc1dmJtVUFBQUFFYm05dVpRQUFBQUFBQUFBQkFBQUFNd0FBQUF0emMyZ3RaV1F5TlRVeApPUUFBQUNBOGxsRmdaMzljRmlTc0phQW4zVEZwcXB1NEdSZTNJTkU4VEhTb0JHWFhxZ0FBQUlpVEw3VldreSsxVmdBQUFBdHpjMmd0ClpXUXlOVFV4T1FBQUFDQThsbEZnWjM5Y0ZpU3NKYUFuM1RGcHFwdTRHUmUzSU5FOFRIU29CR1hYcWdBQUFFQUdESExuZTlDdGQwVVgKNUZIaXAvbEF6WkYwN0s0S3ZkUkx1b0QydUJBeGpqeVdVV0JuZjF3V0pLd2xvQ2ZkTVdtcW03Z1pGN2NnMFR4TWRLZ0VaZGVxQUFBQQpBQUVDQXdRRgotLS0tLUVORCBPUEVOU1NIIFBSSVZBVEUgS0VZLS0tLS0KOjpAczAudmlwcHAuc2hvcDozNTM4MA==#Direct%20SSH
    ssh://69314e6e-3eec-4adf-b00d-958d8dc48269@s0.vippp.shop:35380/?pk=LS0tLS1CRUdJTiBPUEVOU1NIIFBSSVZBVEUgS0VZLS0tLS0KYjNCbGJuTnphQzFyWlhrdGRqRUFBQUFBQkc1dmJtVUFBQUFFYm05dVpRQUFBQUFBQUFBQkFBQUFNd0FBQUF0emMyZ3RaV1F5TlRVeApPUUFBQUNBOGxsRmdaMzljRmlTc0phQW4zVEZwcXB1NEdSZTNJTkU4VEhTb0JHWFhxZ0FBQUlpVEw3VldreSsxVmdBQUFBdHpjMmd0ClpXUXlOVFV4T1FBQUFDQThsbEZnWjM5Y0ZpU3NKYUFuM1RGcHFwdTRHUmUzSU5FOFRIU29CR1hYcWdBQUFFQUdESExuZTlDdGQwVVgKNUZIaXAvbEF6WkYwN0s0S3ZkUkx1b0QydUJBeGpqeVdVV0JuZjF3V0pLd2xvQ2ZkTVdtcW03Z1pGN2NnMFR4TWRLZ0VaZGVxQUFBQQpBQUVDQXdRRgotLS0tLUVORCBPUEVOU1NIIFBSSVZBVEUgS0VZLS0tLS0K&hk=["ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBCMt6A4Gn/6S2uV8CkexS+ixeb+MGJjsArR7FP+eroi356sHkzqB5pL9YcvPza8WECHrRyr3J2tBpWE8QMOmUvU=", "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJJf678lqDAUJovqZyPBmJkhP1GQnqsu/OsAYJcPNy8z"]#Direct%20SSH
    ssh://testtest2121%40gmail.com:50ED2-C49C98@141.141.141.141:22#🇦🇹%20Austria%201
    */
    clash.type = "ssh";
    clash.ssh = ClashYamlOutboundSSHOptions();

    if (uri.fragment.isNotEmpty) {
      try {
        clash.name = Uri.decodeComponent(uri.fragment).trim();
      } catch (err) {
        clash.name = uri.fragment.trim();
      }
    } else {
      clash.name = "${uri.host}:${clash.port}";
    }
    if (uri.host.contains(".")) {
      clash.server = Uri.decodeComponent(uri.host);
      clash.port = uri.port == 0 ? "443" : uri.port.toString();
      if (uri.userInfo.contains(":")) {
        List<String> parts = uri.userInfo.split(":");
        if (parts.length == 2) {
          try {
            clash.ssh!.user = Uri.decodeComponent(parts[0]);
          } catch (err) {}

          clash.ssh!.password = parts[1];
        }
      } else {
        clash.ssh!.user = uri.userInfo;
      }

      clash.ssh!.client_version =
          ConvertUtils.stringParse(uri.queryParameters["cv"]);
      String? pk = ConvertUtils.stringParse(uri.queryParameters["pk"]);

      if (pk != null) {
        try {
          String de = base64.normalize(pk);
          pk = utf8.decode(base64.decode(de));
          clash.ssh!.private_key = [pk];
        } catch (err) {
          eu.unsupports.add(TransUnsupport(
            context: proxy.toString(),
            message: "base64 decode exception",
          ));

          return false;
        }
      }

      String shk = "hk=";
      int pos = proxy.indexOf(shk);
      if (pos >= 0) {
        String hk = proxy.substring(pos);
        int spos = hk.indexOf("[");
        int epos = hk.indexOf("]");
        if (spos < 0 || epos < 0 || spos >= epos) {
          eu.unsupports.add(TransUnsupport(
            context: proxy.toString(),
            message: "hk: bad pos",
          ));

          return false;
        }

        hk = hk.substring(spos, epos + 1);
        var obj = jsonDecode(hk);
        if (obj is List) {
          clash.ssh!.host_key = ConvertUtils.convertList(obj);
        }
      }
    } else {
      String ni = proxy.toLowerCase();
      int pos = ni.indexOf(uri.host);
      if (pos < 0) {
        eu.unsupports.add(TransUnsupport(
          context: proxy.toString(),
          message: "host not found",
        ));

        return false;
      }
      body = proxy.substring(pos, uri.host.length + pos);
      try {
        String de = base64.normalize(body);
        body = utf8.decode(base64.decode(de));
      } catch (err) {
        eu.unsupports.add(TransUnsupport(
          context: proxy.toString(),
          message: "base64 decode exception",
        ));

        return false;
      }
      List<String> parts = body.split(":");
      if (parts.length != 6) {
        eu.unsupports.add(TransUnsupport(
          context: proxy.toString(),
          message: "length != 6",
        ));

        return false;
      }
      clash.server = parts[4].replaceAll("@", "");
      clash.port = parts[5];

      clash.ssh!.user = parts[0];
      clash.ssh!.password = parts[1];
      clash.ssh!.private_key = [parts[2]];
      clash.ssh!.private_key_path = parts[3];
    }
    return true;
  }

  static ReturnResult<HiddifyTurnRelayOptions?> parseTurnRelay(
      String? turnURL) {
    if (turnURL == null || turnURL.isEmpty) {
      return ReturnResult(data: null);
    }
    Uri? uri = Uri.tryParse(turnURL);
    if (uri == null) {
      return ReturnResult(error: ReturnResultError("invalid turn url"));
    }

    if (uri.scheme != "turn") {
      return ReturnResult(
          error: ReturnResultError("invalid turn scheme:${uri.scheme}"));
    }
    if (uri.port == 0) {
      return ReturnResult(error: ReturnResultError("invalid turn port"));
    }

    List<String> userinfo = uri.userInfo.split(":");

    HiddifyTurnRelayOptions turn = HiddifyTurnRelayOptions();
    turn.server = uri.host;
    turn.server_port = uri.port;
    turn.username = userinfo.isNotEmpty ? userinfo[0] : null;
    turn.password = userinfo.length > 1 ? userinfo[1] : null;
    turn.realm = ConvertUtils.stringParse(uri.queryParameters["realm"]);

    return ReturnResult(data: turn);
  }

  static HiddifyTLSTricksOptions parseTLSTricks(Uri uri) {
    HiddifyTLSTricksOptions trick = HiddifyTLSTricksOptions();
    trick.mixedcase_sni =
        ConvertUtils.boolParse(uri.queryParameters["mc"], "1");
    trick.padding_mode =
        ConvertUtils.stringParse(uri.queryParameters["padmode"]);
    trick.padding_size =
        ConvertUtils.stringParse(uri.queryParameters["padsize"]);
    trick.padding_sni = ConvertUtils.stringParse(uri.queryParameters["padsni"]);

    return trick;
  }

  static int sortAlpn(String a, String b) {
    return -a.compareTo(b);
  }
}
