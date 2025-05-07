import 'dart:convert';
import 'dart:io';

import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/did.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';

class CurrentServerForSelectorHistory {
  int delay = 0;
  String error = "";
  void clear() {
    delay = 0;
    error = "";
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    delay = map["delay"] ?? 0;
    error = map["err"] ?? "";
  }
}

class CurrentServerForUrltest {
  String now = "";
  CurrentServerForSelectorHistory history = CurrentServerForSelectorHistory();

  void clear() {
    now = "";
    history.clear();
  }

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    now = map["now"] ?? "";
    if (map["history"] != null) {
      for (var i in map["history"]) {
        history.fromJson(i);
        break;
      }
    }
  }
}

class DNSServer {
  String tag = "";
  String address = "";
  List<String> addresses = [];
  String strategy = "";
  String detour = "";
  Map<String, dynamic> toJson() => {
        "tag": tag,
        "address": address,
        "addresses": addresses,
        "strategy": strategy,
        "detour": detour,
      };
}

class DNSQueryRequest {
  DNSServer resolver = DNSServer();
  DNSServer query = DNSServer();
  String domain = "";
  Map<String, dynamic> toJson() => {
        "resolver": resolver.toJson(),
        "query": query.toJson(),
        "domain": domain,
      };
}

class DNSQueryResponse {
  String? err;
  int? latency;
  List<String> addr = [];
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    err = map["err"];
    latency = map["latency"];
    var addrTmp = map["addr"];
    if (addrTmp is List) {
      for (var add in addrTmp) {
        addr.add(add as String);
      }
    }
  }
}

class HttpRequestResponse {
  int status_code = 0;
  Map<String, List<String>> header = {};
  String body = "";

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    status_code = map["status_code"] ?? 0;
    header = map["header"] ?? {};
    body = map["body"] ?? {};
  }
}

class GeoResponse {
  String geosite = "";
  String geoip = "";

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    geosite = map["geosite"] ?? "";
    geoip = map["geoip"] ?? "";
  }
}

/*
    {"payload": 
"[410215358 16ms]  router.go:997 router: found process path: C:\\Program Files (x86)\\Tencent\\QQPCMgr\\16.10.24865.208\\QQPCTray.exe"
"type": "info" }*/
class LogsResponse {
  String payload = "";
  String type = "";
}

abstract final class ClashApi {
  static Future<String> getSecret() async {
    String secret = await Did.getDid();
    return secret.substring(8, 24);
  }

  static Map<String, String> getHeaders(String secret) {
    Map<String, String> headers = {};
    headers["Authorization"] = "Bearer $secret";
    headers[HttpHeaders.contentTypeHeader] = "application/json; charset=UTF-8";

    return headers;
  }

  static Future<String> getConnectionsUrl(int port,
      {bool noConnections = false}) async {
    String secret = await ClashApi.getSecret();
    return 'ws://127.0.0.1:$port/connections/?token=$secret&noConnections=$noConnections';
  }

  static Future<String> getLogsUrl(int port, String? level) async {
    String secret = await ClashApi.getSecret();
    return 'ws://127.0.0.1:$port/logs?token=$secret&level=${level ?? "debug"}';
  }

  static Future<ReturnResult<String>> dnsQueryClash(
      int port, String domain) async {
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);

    return await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/dns/query?name=$domain&type=",
        null,
        headers,
        const Duration(seconds: 10),
        null,
        null);
  }

  static Future<ReturnResult<String>> resetOutboundConnections(int port) async {
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);
    return await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/karing/resetOutboundConnections",
        null,
        headers,
        const Duration(seconds: 1),
        null,
        null);
  }

  static Future<ReturnResult<String>> mainStack(int port) async {
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);
    ReturnResult<String> result = await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/karing/mainStack",
        null,
        headers,
        const Duration(seconds: 1),
        null,
        null);
    if (result.error != null) {
      return ReturnResult(error: result.error);
    }
    try {
      var decodedResponse = jsonDecode(result.data!);
      if (decodedResponse["result"] != null) {
        return ReturnResult(data: decodedResponse["result"].toString());
      }
      return ReturnResult(data: "");
    } catch (err) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<ReturnResult<String>> dnsQueryWithDefaultRouter(
      int port, String domain, String strategy) async {
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);

    return await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/karing/dnsQueryWithDefaultRouter?domain=$domain&strategy=$strategy",
        null,
        headers,
        const Duration(seconds: 10),
        null,
        null);
  }

  static Future<ReturnResult<String>> dnsQuery(
      int port, DNSQueryRequest req) async {
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);
    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String body = encoder.convert(req);
    return await HttpUtils.httpPostRequest(
        "http://127.0.0.1:$port/karing/dnsQuery",
        null,
        headers,
        body,
        const Duration(seconds: 10),
        null,
        null,
        null);
  }

  static Future<ReturnResult<String>> outboundQuery(
      int port, String domain, String ip) async {
    int kTimeout = 3000;
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);

    return await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/karing/outboundQuery?domain=$domain&ip=$ip",
        null,
        headers,
        Duration(milliseconds: kTimeout),
        null,
        null);
  }

  static Future<ReturnResult<String>> getDelay(
      int port, String name, int timeoutSeconds,
      {String url = ""}) async {
    int timeout = timeoutSeconds * 1000;
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);
    ReturnResult<String> result = await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/proxies/${Uri.encodeComponent(name)}/delay?timeout=$timeout&url=${Uri.encodeComponent(url)}",
        null,
        headers,
        Duration(seconds: timeout + 1000),
        null,
        null);
    if (result.error != null) {
      return ReturnResult(error: result.error);
    }
    try {
      var decodedResponse = jsonDecode(result.data!);
      if (decodedResponse["delay"] != null && decodedResponse["delay"] != 0) {
        return ReturnResult(data: decodedResponse["delay"].toString());
      }
      return ReturnResult(error: ReturnResultError(decodedResponse["message"]));
    } catch (err) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<ReturnResult<String>> getDelayHistory(int port) async {
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);
    return await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/group/delayhistory",
        null,
        headers,
        null,
        null,
        null);
  }

  static Future<ReturnResult<HttpRequestResponse>> getHttpRequest(
      int port, String name, url) async {
    int kTimeout = 5000;
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);
    ReturnResult<String> result = await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/proxies/${Uri.encodeComponent(name)}/httprequest?timeout=$kTimeout&url=${Uri.encodeComponent(url)}",
        null,
        headers,
        Duration(milliseconds: kTimeout),
        null,
        null);
    if (result.error != null) {
      return ReturnResult(error: result.error);
    }
    try {
      var decodedResponse = jsonDecode(result.data!);
      HttpRequestResponse resp = HttpRequestResponse();
      resp.status_code = decodedResponse["status_code"] ?? 0;
      Map<String, dynamic> _header = decodedResponse["header"];
      _header.forEach((key, value) {
        List<String> list = [];
        for (var v in value) {
          list.add(v as String);
        }
        resp.header[key] = list;
      });
      String _body = decodedResponse["body"] ?? "";
      if (_body.isNotEmpty) {
        try {
          resp.body = utf8.decode(base64.decode(_body));
        } catch (err) {
          resp.body = _body;
        }
      }

      return ReturnResult(data: resp);
    } catch (err) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<ReturnResult<Map<String, int>>> getRemoteRulesetsCount(
      int port) async {
    int kTimeout = 3000;
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);
    ReturnResult<String> result = await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/karing/remoteRuleSetRulesCount",
        null,
        headers,
        Duration(milliseconds: kTimeout),
        null,
        null);
    if (result.error != null) {
      return ReturnResult(error: result.error);
    }
    try {
      var decodedResponse = jsonDecode(result.data!);
      if (decodedResponse["result"] == null) {
        return ReturnResult(error: ReturnResultError("result is not found"));
      }
      Map<String, int> ret = {};
      decodedResponse["result"].forEach((key, value) {
        ret[key] = value as int;
      });
      return ReturnResult(data: ret);
    } catch (err) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<ReturnResult<CurrentServerForUrltest>>
      getCurrentServerForUrltest(String tag, int port) async {
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);
    ReturnResult<String> result = await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/group/$tag", null, headers, null, null, null);
    if (result.error != null) {
      return ReturnResult(error: result.error);
    }
    try {
      CurrentServerForUrltest res = CurrentServerForUrltest();
      res.fromJson(jsonDecode(result.data ?? ""));
      return ReturnResult(data: res);
    } catch (err) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<ReturnResultError?> updateUrltestCheck(int port) async {
    String secret = await ClashApi.getSecret();
    Map<String, String> headers = ClashApi.getHeaders(secret);
    ReturnResult<String> result = await HttpUtils.httpGetRequest(
        "http://127.0.0.1:$port/group/$kOutboundTagUrltest/delayUpdateCheck",
        null,
        headers,
        null,
        null,
        null);
    return result.error;
  }
}
