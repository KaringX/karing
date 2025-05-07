// ignore_for_file: unused_catch_stack

import 'dart:math';

import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/cloudflare_warp_api.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:tuple/tuple.dart';

const int kWireGuardMtu = 1280 - 160;

class WireGuardConfig {
  String server = "";
  int serverPort = 0;
  String ipv4 = "";
  String ipv6 = "";
  String privateKey = "";
  String peerPublicKey = "";
  int mtu = kWireGuardMtu; //高了可能由于包太大会导致发送失败
  String reserved = "";

  WireGuardConfig(
      {this.server = "",
      this.serverPort = 0,
      this.ipv4 = "",
      this.ipv6 = "",
      this.privateKey = "",
      this.peerPublicKey = "",
      this.mtu = kWireGuardMtu,
      this.reserved = ""});

  Map<String, dynamic> toJson() => {
        'server': server,
        'server_port': serverPort,
        'ipv4': ipv4,
        'ipv6': ipv6,
        'private_key': privateKey,
        'peer_public_key': peerPublicKey,
        'mtu': mtu,
        'reserved': reserved,
      };
  void fromJson(Map<String, dynamic>? map) {
    if (map == null) {
      return;
    }
    server = map["server"] ?? "";
    serverPort = map["server_port"] ?? 0;
    ipv4 = map["ipv4"] ?? "";
    ipv6 = map["ipv6"] ?? "";
    privateKey = map["private_key"] ?? "";
    peerPublicKey = map["peer_public_key"] ?? "";
    mtu = map["mtu"] ?? kWireGuardMtu;
    reserved = map["reserved"] ?? "";
  }
}

/*
https://github.com/bepass-org/warp-plus/blob/69977d9fbbf04230e241d8e6522629a6dafe11a2/warp/account.go
https://github.com/Chocolate4U/NekoBoxForAndroid/blob/12cbb835a0ee1af2b65b945288fcc950c701384d/app/src/main/java/io/nekohasekai/sagernet/utils/Cloudflare.kt#L19
https://blog.misaka.rest/2023/03/25/nekoray-warp/  

https://github.com/badafans/warp-reg/blob/fd5627911b53018287680e6672a47ad6927b118a/README.md
https://github.com/Moeomu/blog/blob/98659b8a32a135783a9b0ddf787b209b5aa51499/content/post/2023-10-09-CloudflareWarp/index.zh-cn.md?plain=1#L226

https://raw.githubusercontent.com/barry-far/V2ray-Configs/main/Warp_sub.txt
*/
abstract final class CloudflareWarpUtils {
  static WireGuardConfig convertTo(
      WarpRegisterAccountResponse resp, String privateKey) {
    var peer = resp.config.peers[0];
    var localAddresses = resp.config.interfaceX.addresses;
    var server = peer.endpoint.v4.split(":")[0];
    var serverPort = peer.endpoint.host.split(":")[1];

    return WireGuardConfig(
      server: server,
      serverPort: int.tryParse(serverPort) ?? 0,
      ipv4: localAddresses.v4,
      ipv6: localAddresses.v6,
      privateKey: privateKey,
      peerPublicKey: peer.publicKey,
      mtu: kWireGuardMtu,
      reserved: resp.config.clientId,
    );
  }

  static List<String> getIPRang() {
    return [
      "162.159.192.0", //24
      "162.159.193.0", //24
      "162.159.195.0", //24
      "162.159.204.0", //24
      "188.114.96.0", //24
      "188.114.97.0", //24
      "188.114.98.0", //24
      "188.114.99.0", //24
    ];
  }

  static String getRandomIP() {
    var warpIPList = getIPRang();
    var randomRange =
        warpIPList[Random().nextInt(warpIPList.length)].split(".");

    return "${randomRange[0]}.${randomRange[1]}.${randomRange[2]}.${Random().nextInt(255)}";
  }

  static int generateRandomPort() {
    var warpPorts = [
      854,
      859,
      864,
      878,
      880,
      890,
      891,
      894,
      903,
      908,
      928,
      934,
      939,
      942,
      943,
      945,
      946,
      955,
      968,
      987,
      988,
      1002,
      1010,
      1014,
      1018,
      1070,
      1074,
      1180,
      1387,
      1843,
      2371,
      2506,
      3138,
      3476,
      3581,
      3854,
      4177,
      4198,
      4233,
      5279,
      5956,
      7103,
      7152,
      7156,
      7281,
      7559,
      8319,
      8742,
      8854,
      8886
    ];
    return warpPorts[Random().nextInt(warpPorts.length)];
  }

  static Future<Tuple2<String, int>> generateRandomWithTestAlive() async {
    int tryTimes = 0;
    do {
      var ip = getRandomIP();
      var port = generateRandomPort();
      var result = await NetworkUtils.testConnectLatency(
          ip, port, const Duration(milliseconds: 1000));

      if (result.error == null) {
        return Tuple2(ip, port);
      }
      tryTimes = tryTimes + 1;
    } while (tryTimes <= 5);

    var ip = getRandomIP();
    var port = generateRandomPort();
    return Tuple2(ip, port);
  }

  static Future<ReturnResult<Tuple2<WireGuardConfig, WarpAccount>>>
      genFreeWarpConfig(String license) async {
    String installId = CloudflareWarpApi.getNewInstallId();
    Tuple2<String, String> keys = await CloudflareWarpApi.getNewKeyPair();

    var result = await CloudflareWarpApi.registerAccount(
        installId: installId, publicKey: keys.item2, referrer: "");
    if (result.error != null) {
      return ReturnResult(
          error: ReturnResultError("registerAccount:${result.error!.message}"));
    }

    if (license.length != CloudflareWarpApi.licenseLength) {
      var settingConfig = SettingManager.getConfig();
      license = settingConfig.warp.license;
    }
    if (license.length == CloudflareWarpApi.licenseLength) {
      do {
        ReturnResultError? err = await CloudflareWarpApi.setAccountLicense(
            result.data!.id, result.data!.token, license);
        if (err != null) {
          Log.w(
              "warp: bind license failed(make sure the license is valid): ${err.message}");
          break;
        }
        var getAccount = await CloudflareWarpApi.getAccount(
            result.data!.id, result.data!.token);
        if (getAccount.error != null) {
          Log.w(
              "warp: getAccount failed(make sure the license is valid): ${getAccount.error!.message}");
          break;
        }
        result.data!.account = getAccount.data!;
      } while (false);
    }

    return ReturnResult(
        data:
            Tuple2(convertTo(result.data!, keys.item1), result.data!.account));
  }

  static Future<ReturnResult<WarpAccount>> gen25PBWarpAccount() async {
    //https://github.com/Moeomu/blog/blob/98659b8a32a135783a9b0ddf787b209b5aa51499/content/post/2023-10-09-CloudflareWarp/index.zh-cn.md?plain=1#L226
    List<String> licenses = [
      "np08aC76-2Nb574Co-bv1L503f",
      "B731fxU5-0IB12YO4-Z2dO38r4",
      "MwH20V81-v5fn6r38-J70eVZ92",
      "639KI4Pp-aKl687W2-dCF93v76",
      "D346CYI9-Bw78a14I-S78wFA64",
      "o3J561Hp-ZQ1b2Y34-Hw165J9C",
      "1PU5O3J0-27P1Rw0a-1b9m75jT",
    ];

    String installIdA = CloudflareWarpApi.getNewInstallId();
    Tuple2<String, String> keysA = await CloudflareWarpApi.getNewKeyPair();

    //注册A,B两个账号,并且A为B的邀请人
    String installIdB = CloudflareWarpApi.getNewInstallId();
    Tuple2<String, String> keysB = await CloudflareWarpApi.getNewKeyPair();
    var registerResultA = await CloudflareWarpApi.registerAccount(
        installId: installIdA, publicKey: keysA.item2, referrer: "");
    if (registerResultA.error != null) {
      return ReturnResult(
          error: ReturnResultError(
              "registerAccount[A]:${registerResultA.error!.message}"));
    }
    var registerResultB = await CloudflareWarpApi.registerAccount(
        installId: installIdB,
        publicKey: keysB.item2,
        referrer: registerResultA.data!.id);
    if (registerResultB.error != null) {
      return ReturnResult(
          error: ReturnResultError(
              "registerAccount[B]:${registerResultB.error!.message}"));
    }

    //删除B
    await CloudflareWarpApi.removeDevice(
        registerResultB.data!.id, registerResultB.data!.token);

    //更新A的license
    var err = await CloudflareWarpApi.setAccountLicense(
        registerResultA.data!.id,
        registerResultA.data!.token,
        licenses[Random().nextInt(licenses.length)]);
    if (err != null) {
      return ReturnResult(
          error: ReturnResultError("setAccountLicense[1]:${err.message}"));
    }
    err = await CloudflareWarpApi.setAccountLicense(registerResultA.data!.id,
        registerResultA.data!.token, registerResultA.data!.account.license);
    if (err != null) {
      return ReturnResult(
          error: ReturnResultError("setAccountLicense[2]:${err.message}"));
    }
    //到这里, A就成功获得了25PB
    var result = await CloudflareWarpApi.getAccount(
        registerResultA.data!.id, registerResultA.data!.token);
    if (result.error != null) {
      return ReturnResult(
          error: ReturnResultError("getAccount:${result.error!.message}"));
    }
    result.data!.installId = installIdA;
    result.data!.deviceId = registerResultA.data!.id;
    result.data!.token = registerResultA.data!.token;
    result.data!.privateKey = keysA.item1;
    result.data!.publicKey = keysA.item2;
    return result;
  }
}
