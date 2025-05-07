import 'package:karing/app/utils/network_utils.dart';

class UriUtils {
  static Uri? parseUrlFixIPV6(String url) {
    var uri = Uri.tryParse(url);
    if (uri == null) {
      String split = "://[";
      int start = url.indexOf(split);
      if (start < 0) {
        split = "@[";
        start = url.indexOf(split);
      }
      int end = url.indexOf("]");
      if (start > 0 && start < end) {
        String ipv6 = url.substring(start + split.length, end);
        String? newIpv6 = NetworkUtils.fixIpv6(ipv6);

        if (ipv6 != newIpv6) {
          url = url.replaceRange(start + split.length, end, newIpv6);
          uri = Uri.tryParse(url);
        }
      }
    }
    return uri;
  }
}
