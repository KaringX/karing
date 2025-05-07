// ignore_for_file: unused_catch_stack

import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:cryptography/cryptography.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/http_utils.dart';
import 'package:tuple/tuple.dart';

//request
class WarpRegisterAccountRequest {
  String fcmToken = "";
  String installId = "";
  String key = "";
  String referrer = "";
  String tos = "";

  WarpRegisterAccountRequest({
    this.fcmToken = "",
    this.installId = "",
    this.key = "",
    this.referrer = "",
    this.tos = "",
  });

  Map<String, dynamic> toJson() => {
        'fcm_token': fcmToken,
        'install_id': installId,
        'key': key,
        'referrer': referrer,
        'tos': tos,
        'locale': Platform.localeName,
        'type': Platform.operatingSystem,
        'model': Platform.localHostname,
        'name': AppUtils.getName(),
        'serial_number': installId,
      };
}

//response
class WarpEndpoint {
  String v6 = "";
  String host = "";
  String v4 = "";

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    v6 = map["v6"] ?? "";
    host = map["host"] ?? "";
    v4 = map["v4"] ?? "";
  }
}

class WarpPeer {
  String publicKey = "";
  WarpEndpoint endpoint = WarpEndpoint();

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    publicKey = map["public_key"] ?? "";
    endpoint.fromJson(map["endpoint"]);
  }
}

class WarpAddresses {
  String v6 = "";
  String v4 = "";

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    v6 = map["v6"] ?? "";
    v4 = map["v4"] ?? "";
  }
}

class WarpInterface {
  WarpAddresses addresses = WarpAddresses();

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    addresses.fromJson(map["addresses"]);
  }
}

class WarpAccount {
  String accountType = "";
  String role = "";
  int referralRenewalCountdown = 0;
  num usage = 0;
  bool warpPlus = false;
  int referralCount = 0;
  String license = "";
  int quota = 0;
  num premiumData = 0;
  String id = "";
  String updated = "";

  String installId = "";
  String deviceId = "";
  String token = "";
  String privateKey = "";
  String publicKey = "";

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    accountType = map["account_type"] ?? "";
    role = map["role"] ?? "";
    referralRenewalCountdown = map["referral_renewal_countdown"] ?? 0;
    usage = map["usage"] ?? 0;
    warpPlus = map["warp_plus"] ?? false;
    referralCount = map["referral_count"] ?? 0;
    license = map["license"] ?? "";
    quota = map["quota"] ?? 0;
    premiumData = map["premium_data"] ?? 0;
    id = map["id"] ?? "";
    updated = map["updated"] ?? "";
    installId = map["install_id"] ?? "";
    deviceId = map["device_id"] ?? "";
    token = map["token"] ?? "";
    privateKey = map["private_key"] ?? "";
    publicKey = map["public_key"] ?? "";
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> ret = {};
    ret['account_type'] = accountType;
    ret['role'] = role;
    ret['referral_renewal_countdown'] = referralRenewalCountdown;
    ret['usage'] = usage;
    ret['warp_plus'] = warpPlus;
    ret['referral_count'] = referralCount;
    ret['license'] = license;
    ret['quota'] = quota;
    ret['premium_data'] = premiumData;
    ret['id'] = id;
    ret['updated'] = updated;
    ret['install_id'] = installId;
    ret['device_id'] = deviceId;
    ret['token'] = token;
    ret['private_key'] = privateKey;
    ret['public_key'] = publicKey;

    return ret;
  }
}

class WarpConfig {
  List<WarpPeer> peers = [];
  WarpInterface interfaceX = WarpInterface();
  String clientId = "";

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    var ps = map["peers"];
    if (ps is List) {
      for (var p in ps) {
        var peer = WarpPeer();
        peer.fromJson(p);
        peers.add(peer);
      }
    }

    interfaceX.fromJson(map["interface"]);
    clientId = map["client_id"] ?? "";
  }
}

class WarpRegisterAccountResponse {
  String token = "";
  String id = "";
  WarpConfig config = WarpConfig();
  WarpAccount account = WarpAccount();

  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }

    token = map["token"] ?? "";
    id = map["id"] ?? "";
    config.fromJson(map["config"]);
    account.fromJson(map["account"]);
  }
}

/*
https://github.com/bepass-org/warp-plus/blob/c805ea83225c2cef9155f60ca4d07d600074f9a9/warp/api.go
https://github.com/Chocolate4U/NekoBoxForAndroid/blob/12cbb835a0ee1af2b65b945288fcc950c701384d/app/src/main/java/io/nekohasekai/sagernet/utils/Cloudflare.kt#L19
https://blog.misaka.rest/2023/03/25/nekoray-warp/  

https://github.com/badafans/warp-reg/blob/fd5627911b53018287680e6672a47ad6927b118a/README.md
https://github.com/Moeomu/blog/blob/98659b8a32a135783a9b0ddf787b209b5aa51499/content/post/2023-10-09-CloudflareWarp/index.zh-cn.md?plain=1#L226

https://raw.githubusercontent.com/barry-far/V2ray-Configs/main/Warp_sub.txt
*/
abstract final class CloudflareWarpApi {
  static const String _apiUrl = "https://api.cloudflareclient.com";
  static const String _apiVersion = "v0a2158";

  static const String _clientVersionKey = "CF-Client-Version";
  static const String _clientVersion = "a-6.10-2158";

  static const String _clientUserAgent = "okhttp/3.12.1";
  static const int? _proxyPort = null;

  static const int licenseLength = "dX31rS28-T4P20r5K-Xa780SC5".length;

  static String getRandom(int length) {
    const ch = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz';
    Random r = Random();
    return String.fromCharCodes(
        Iterable.generate(length, (_) => ch.codeUnitAt(r.nextInt(ch.length))));
  }

  static Future<Tuple2<String, String>> getNewKeyPair() async {
    final keyPair = await X25519().newKeyPair();
    final privateKey = base64Encode(await keyPair.extractPrivateKeyBytes());
    final publicKey = base64Encode((await keyPair.extractPublicKey()).bytes);
    return Tuple2(privateKey, publicKey);
  }

  static String getNewInstallId() {
    return getRandom(22);
  }

  static String getFcmToken(String installId) {
    return "$installId:APA91b${getRandom(134)}";
  }

  /*
 installId 设备安装id
 publicKey 自己生成的公钥
 referrer  邀请人
  */
  static Future<ReturnResult<WarpRegisterAccountResponse>> registerAccount(
      {String installId = "",
      String publicKey = "",
      String referrer = ""}) async {
    var headers = {
      _clientVersionKey: _clientVersion,
      HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8"
    };

    ReturnResult<String> result = await HttpUtils.httpPostRequest(
        "$_apiUrl/$_apiVersion/reg",
        _proxyPort,
        headers,
        const JsonEncoder.withIndent(null).convert(WarpRegisterAccountRequest(
          fcmToken: installId.isNotEmpty ? getFcmToken(installId) : "",
          installId: installId,
          key: publicKey,
          referrer: referrer,
          tos: DateTime.now().toUtc().toIso8601String(),
        )),
        null,
        _clientUserAgent,
        null,
        null);
    if (result.error != null) {
      return ReturnResult(error: result.error);
    }
    var jsonObj = jsonDecode(result.data!);
    WarpRegisterAccountResponse response = WarpRegisterAccountResponse();
    response.fromJson(jsonObj);

    return ReturnResult(data: response);
  }

  static Future<ReturnResultError?> setAccountLicense(
      String deviceId, String token, String license) async {
    var headers = {
      _clientVersionKey: _clientVersion,
      HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
      "Authorization": "Bearer $token",
    };

    ReturnResult<String> result = await HttpUtils.httpPutRequest(
        "$_apiUrl/$_apiVersion/reg/$deviceId/account",
        _proxyPort,
        headers,
        const JsonEncoder.withIndent(null).convert({"license": license}),
        null,
        _clientUserAgent,
        null,
        null);
    return result.error;
  }

  static Future<ReturnResult<WarpAccount>> getAccount(
      String deviceId, String token) async {
    var headers = {
      _clientVersionKey: _clientVersion,
      HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
      "Authorization": "Bearer $token",
    };

    ReturnResult<String> result = await HttpUtils.httpGetRequest(
        "$_apiUrl/$_apiVersion/reg/$deviceId/account",
        _proxyPort,
        headers,
        const Duration(seconds: 10),
        _clientUserAgent,
        null);
    if (result.error != null) {
      return ReturnResult(error: result.error);
    }
    var jsonObj = jsonDecode(result.data!);
    WarpAccount account = WarpAccount();
    account.fromJson(jsonObj);

    return ReturnResult(data: account);
  }

  static Future<ReturnResultError?> registerDevice(
      String deviceId, String token) async {
    var headers = {
      _clientVersionKey: _clientVersion,
      HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
      "Authorization": "Bearer $token",
    };

    ReturnResult<String> result = await HttpUtils.httpPostRequest(
        "$_apiUrl/$_apiVersion/reg/$deviceId",
        _proxyPort,
        headers,
        "",
        null,
        _clientUserAgent,
        null,
        null);
    return result.error;
  }

  static Future<void> getDevice(String deviceId, String token) async {
    var headers = {
      _clientVersionKey: _clientVersion,
      HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
      "Authorization": "Bearer $token",
    };

    ReturnResult<String> result = await HttpUtils.httpGetRequest(
        "$_apiUrl/$_apiVersion/reg/$deviceId",
        _proxyPort,
        headers,
        const Duration(seconds: 10),
        _clientUserAgent,
        null);
    if (result.data != null) {
      //print(result.data);
    }
  }

  static Future<void> getDevices(String deviceId, String token) async {
    var headers = {
      _clientVersionKey: _clientVersion,
      HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
      "Authorization": "Bearer $token",
    };

    ReturnResult<String> result = await HttpUtils.httpGetRequest(
        "$_apiUrl/$_apiVersion/reg/$deviceId/account/devices",
        _proxyPort,
        headers,
        const Duration(seconds: 10),
        _clientUserAgent,
        null);
    if (result.data != null) {
      //print(result.data);
    }
  }

  static Future<void> removeDevice(String deviceId, String token) async {
    var headers = {
      _clientVersionKey: _clientVersion,
      HttpHeaders.contentTypeHeader: "application/json; charset=UTF-8",
      "Authorization": "Bearer $token",
    };

    ReturnResult<String> result = await HttpUtils.httpDeleteRequest(
        "$_apiUrl/$_apiVersion/reg/$deviceId",
        _proxyPort,
        headers,
        "",
        null,
        _clientUserAgent,
        null);
  }
}
