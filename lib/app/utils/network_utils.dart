// ignore_for_file: empty_catches, unused_catch_stack

import 'dart:io';

import 'package:karing/app/runtime/return_result.dart';
import 'package:punycode_converter/punycode_converter.dart' as punycode;

class NetInterfacesInfo {
  InternetAddressType type = InternetAddressType.IPv4;
  String name = "";
  String address = "";
}

class NetworkUtils {
  static final RegExp _domainExp = RegExp(
      r"^(?=^.{3,255}$)[a-zA-Z0-9][-a-zA-Z0-9]{0,62}(\.[a-zA-Z0-9][-a-zA-Z0-9]{0,62})+$");
  static final RegExp _ipv4Exp = RegExp(
      r"^((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$");
  static final RegExp _ipv4ExpWithMask = RegExp(
      r"^((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)(\/(\d|[1-2]\d|3[0-2]))?$");
  static final RegExp _ipv6Exp = RegExp(
      r"^([\da-fA-F]{1,4}:){6}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^::([\da-fA-F]{1,4}:){0,4}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^([\da-fA-F]{1,4}:):([\da-fA-F]{1,4}:){0,3}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^([\da-fA-F]{1,4}:){2}:([\da-fA-F]{1,4}:){0,2}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^([\da-fA-F]{1,4}:){3}:([\da-fA-F]{1,4}:){0,1}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^([\da-fA-F]{1,4}:){4}:((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^([\da-fA-F]{1,4}:){7}[\da-fA-F]{1,4}$|^:((:[\da-fA-F]{1,4}){1,6}|:)$|^[\da-fA-F]{1,4}:((:[\da-fA-F]{1,4}){1,5}|:)$|^([\da-fA-F]{1,4}:){2}((:[\da-fA-F]{1,4}){1,4}|:)$|^([\da-fA-F]{1,4}:){3}((:[\da-fA-F]{1,4}){1,3}|:)$|^([\da-fA-F]{1,4}:){4}((:[\da-fA-F]{1,4}){1,2}|:)$|^([\da-fA-F]{1,4}:){5}:([\da-fA-F]{1,4})?$|^([\da-fA-F]{1,4}:){6}:$^([\da-fA-F]{1,4}:){6}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^::([\da-fA-F]{1,4}:){0,4}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^([\da-fA-F]{1,4}:):([\da-fA-F]{1,4}:){0,3}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^([\da-fA-F]{1,4}:){2}:([\da-fA-F]{1,4}:){0,2}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^([\da-fA-F]{1,4}:){3}:([\da-fA-F]{1,4}:){0,1}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^([\da-fA-F]{1,4}:){4}:((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)$|^([\da-fA-F]{1,4}:){7}[\da-fA-F]{1,4}$|^:((:[\da-fA-F]{1,4}){1,6}|:)$|^[\da-fA-F]{1,4}:((:[\da-fA-F]{1,4}){1,5}|:)$|^([\da-fA-F]{1,4}:){2}((:[\da-fA-F]{1,4}){1,4}|:)$|^([\da-fA-F]{1,4}:){3}((:[\da-fA-F]{1,4}){1,3}|:)$|^([\da-fA-F]{1,4}:){4}((:[\da-fA-F]{1,4}){1,2}|:)$|^([\da-fA-F]{1,4}:){5}:([\da-fA-F]{1,4})?$|^([\da-fA-F]{1,4}:){6}:$");
  static final RegExp _ipv6ExpWithMask = RegExp(
      r"^([\da-fA-F]{1,4}:){6}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^::([\da-fA-F]{1,4}:){0,4}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^([\da-fA-F]{1,4}:):([\da-fA-F]{1,4}:){0,3}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^([\da-fA-F]{1,4}:){2}:([\da-fA-F]{1,4}:){0,2}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^([\da-fA-F]{1,4}:){3}:([\da-fA-F]{1,4}:){0,1}((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^([\da-fA-F]{1,4}:){4}:((25[0-5]|2[0-4]\d|[01]?\d\d?)\.){3}(25[0-5]|2[0-4]\d|[01]?\d\d?)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^([\da-fA-F]{1,4}:){7}[\da-fA-F]{1,4}(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^:((:[\da-fA-F]{1,4}){1,6}|:)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^[\da-fA-F]{1,4}:((:[\da-fA-F]{1,4}){1,5}|:)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^([\da-fA-F]{1,4}:){2}((:[\da-fA-F]{1,4}){1,4}|:)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^([\da-fA-F]{1,4}:){3}((:[\da-fA-F]{1,4}){1,3}|:)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^([\da-fA-F]{1,4}:){4}((:[\da-fA-F]{1,4}){1,2}|:)(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^([\da-fA-F]{1,4}:){5}:([\da-fA-F]{1,4})?(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$|^([\da-fA-F]{1,4}:){6}:(\/([1-9]?\d|(1([0-1]\d|2[0-8]))))?$");
  static bool isDomain(String text, bool allowIp) {
    text = text.toLowerCase();
    if (!allowIp) {
      if (isIpv4(text) || isIpv6(text)) {
        return false;
      }
    }
    text = getRealDomain(text) ?? text;
    return _domainExp.hasMatch(text);
  }

  static bool isIpv4(String text) {
    return _ipv4Exp.hasMatch(text);
  }

  static bool isIpv4WithMask(String text) {
    return _ipv4ExpWithMask.hasMatch(text);
  }

  static bool isIpv6(String text) {
    return _ipv6Exp.hasMatch(text);
  }

  static bool isIpv6WithMask(String text) {
    return _ipv6ExpWithMask.hasMatch(text);
  }

  static String? getRealDomain(String text) {
    Uri? uri = Uri.tryParse(text);
    if (uri == null) {
      return null;
    }
    if (uri.host.isEmpty) {
      uri = Uri.tryParse("https://$text");
    }
    if (uri == null) {
      return null;
    }
    try {
      {
        uri = uri.punyEncoded;
      }
    } catch (err) {}
    if (uri == null) {
      return null;
    }
    return uri.host;
  }

  static String fixIpv6(String ipv6) {
    List<String> parts = ipv6.split(":");
    if (parts.length > 7) {
      //如果为8, 则不能使用精简模式,否则Uri.tryParse会解析失败
      for (int j = 0; j < parts.length; ++j) {
        if (parts[j].isEmpty) {
          parts[j] = "0";
        }
      }
      return parts.join(":");
    }
    return ipv6;
  }

  static Future<List<String>> dnsLookup(String domain, bool includeIPV6) async {
    List<InternetAddress> addresses = [];

    try {
      List<InternetAddress> ipv4addresses =
          await InternetAddress.lookup(domain, type: InternetAddressType.IPv4);

      addresses.addAll(ipv4addresses);
    } catch (err) {}
    if (includeIPV6) {
      try {
        List<InternetAddress> ipv6addresses = await InternetAddress.lookup(
            domain,
            type: InternetAddressType.IPv6);
        addresses.addAll(ipv6addresses);
      } catch (err) {}
    }

    List<String> value = [];
    for (var address in addresses) {
      value.add(address.address);
    }
    return value;
  }

  static Future<ReturnResult<int>> testConnectLatency(
      String server, int port, Duration? duration) async {
    try {
      var start = DateTime.now();
      Socket socket = await Socket.connect(server, port,
          timeout: duration ?? const Duration(milliseconds: 800));
      var end = DateTime.now();
      socket.destroy();

      return ReturnResult(data: end.difference(start).inMilliseconds);
    } catch (err, stacktrace) {
      return ReturnResult(error: ReturnResultError(err.toString()));
    }
  }

  static Future<List<NetInterfacesInfo>> getInterfaces(
      {InternetAddressType? addressType, bool filter = true}) async {
    List<NetInterfacesInfo> interfaces = [];
    try {
      List<NetworkInterface> list = await NetworkInterface.list(
          includeLoopback: false, type: InternetAddressType.any);
      for (var netinterface in list) {
        for (var address in netinterface.addresses) {
          if (addressType != null && address.type != addressType) {
            continue;
          }
          if (filter) {
            String name = netinterface.name.toLowerCase();
            if (name.startsWith("pdp_") ||
                name.startsWith("ipsec") ||
                name.startsWith("utun") ||
                name.startsWith("tun") ||
                name.contains(" tun ") ||
                name.startsWith("vmware")) {
              continue;
            }
          }

          NetInterfacesInfo ni = NetInterfacesInfo();
          ni.name = netinterface.name;
          ni.type = address.type;
          ni.address = address.address;
          interfaces.add(ni);
        }
      }
    } catch (err) {}
    return interfaces
      ..sort((a, b) {
        return a.name.compareTo(b.name);
      });
  }

  static Future<int> getAvaliablePort(List<int> exclude) async {
    final List<ServerSocket> sockets = [];
    int listenPort = 0;
    for (int i = 0; i < exclude.length + 4; ++i) {
      try {
        ServerSocket serverSocket =
            await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
        sockets.add(serverSocket);
        if (exclude.contains(serverSocket.port)) {
          continue;
        }
        listenPort = serverSocket.port;
        break;
      } catch (err, stacktrace) {}
    }
    for (var sock in sockets) {
      try {
        await sock.close();
      } catch (err) {}
    }
    return listenPort;
  }

  static Future<int> getAvaliablePortNotCloseSocket(
      List<int> exclude, List<ServerSocket> sockets) async {
    int listenPort = 0;
    for (int i = 0; i < exclude.length + 4; ++i) {
      try {
        ServerSocket serverSocket =
            await ServerSocket.bind(InternetAddress.loopbackIPv4, 0);
        sockets.add(serverSocket);
        if (exclude.contains(serverSocket.port)) {
          continue;
        }
        listenPort = serverSocket.port;
        break;
      } catch (err, stacktrace) {}
    }

    return listenPort;
  }
}
