// ignore_for_file: unused_catch_stack

import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/clash_to_singbox.dart';
import 'package:karing/app/utils/clash_yaml.dart';
import 'package:karing/app/utils/conf_parser.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_json.dart';
import 'package:karing/app/utils/tag_gen.dart';

/*
[Interface]
PrivateKey = SMY9q/Jge8YMf5Bi+6M6anAuRfU0HnXG2OEJIPdGs0w=
Address = 172.16.0.2/32, 2606:4700:110:84ba:1022:27a1:4721:dd25/128
DNS = 1.1.1.1, 1.0.0.1, 2606:4700:4700::1111, 2606:4700:4700::1001
MTU = 1280
[Peer]
PublicKey = bmXOC+F1FxEMF9dyiK2H5/1SUtzH0JuVo51h2wPfgyo=
AllowedIPs = 0.0.0.0/0
AllowedIPs = ::/0
Endpoint = engage.cloudflareclient.com:2408
 */
/*
[Interface]
Address = fd7d:76ee:e68f:a993:880f:33fe:48c5:a9e0/128
PrivateKey = iGhh0+T117ls6oaOu2Kw3p9Th34nZYG+1sjJLMjHpFI=
MTU = 1280
DNS = fd7d:76ee:e68f:a993::1

[Peer]
PublicKey = PyLCXAQT8KkM4T+dUsOQfn+Ub3pGxfGlxkIApuig+hk=
PresharedKey = X9uawzd+VISEjg1S1kkjdqrKGR4OjHQAySnCIHJsrW4=
Endpoint = [2a02:4840:2:237:a1fb:cb4e:7bc4:7bc4]:47107
AllowedIPs = ::/0
PersistentKeepalive = 15
 */

abstract final class WireguardConfUtils {
  static ReturnResult<bool> tryConvert(String content,
      ServerConfigGroupItem proxyItem, TransExceptionAndUnsupport eu) {
    Map<String, int> tagSets = {};
    for (var item in proxyItem.servers) {
      tagSets[item.tag] = 0;
    }
    var tagGen = TagGen(tags: tagSets);

    Map<String, Map<String, String>> result = ConfParser.parse(content);
    var _interface = result["Interface"];
    var _peer = result["Peer"];
    if (_interface == null || _peer == null) {
      return ReturnResult(
        handled: false,
        error: ReturnResultError("wg: unknown format"),
      );
    }
    String privateKey = _interface["PrivateKey"] ?? "";
    String address = _interface["Address"] ?? "";
    int? mtu = int.tryParse(_interface["MTU"] ?? "");
    String server = _peer["Endpoint"] ?? "";
    String publicKey = _peer["PublicKey"] ?? "";
    String presharedKey = _peer["PresharedKey"] ?? "";
    if (privateKey.isEmpty ||
        address.isEmpty ||
        server.isEmpty ||
        publicKey.isEmpty) {
      return ReturnResult(
        handled: true,
        error: ReturnResultError("wg: invalid format"),
      );
    }
    int pos = server.lastIndexOf(":");
    if (pos <= 0) {
      return ReturnResult(
        handled: true,
        error: ReturnResultError("wg: invalid Endpoint format"),
      );
    }

    List<String> ips = address.split(",");
    if (ips.isEmpty) {
      return ReturnResult(
        handled: true,
        error: ReturnResultError("wg: invalid Address format"),
      );
    }

    ClashYamlOubboundOptions clash = ClashYamlOubboundOptions();
    clash.type = "wireguard";
    clash.wg = ClashYamlOutboundWireguardOptions();
    clash.server = server.substring(0, pos).trim();
    clash.port = server.substring(pos + 1).trim();
    clash.name = "wireguard:${content.hashCode}";
    clash.wg!.public_key = publicKey.trim();
    clash.wg!.private_key = privateKey.trim();
    clash.wg!.pre_shared_key = presharedKey.trim();
    for (var ip in ips) {
      ip = ip.trim();
      if (clash.wg!.ip == null && NetworkUtils.isIpv4WithMask(ip)) {
        clash.wg!.ip = ip;
      } else if (clash.wg!.ipv6 == null && NetworkUtils.isIpv6WithMask(ip)) {
        clash.wg!.ipv6 = ip;
      }
    }
    clash.wg!.mtu = mtu;

    SingboxJsonOptions singbox = SingboxJsonOptions();
    var err = ClashToSingbox.convert(clash, singbox);
    if (err != null) {
      eu.unsupports.add(TransUnsupport(
        context: content,
        message: err.message,
      ));

      return ReturnResult(
        handled: true,
        error: err,
      );
    }
    singbox.tag = tagGen.gen(singbox.tag);

    ProxyConfig conf = ProxyConfig();
    conf.fromJson(singbox.toJson());
    conf.groupid = proxyItem.groupid;

    proxyItem.servers.add(conf);
    return ReturnResult(
      handled: true,
      data: true,
    );
  }
}
