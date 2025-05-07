import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_url_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtils {
  static Future<ReturnResultError?> loadUrl(
    String url, {
    LaunchMode mode = LaunchMode.platformDefault,
    WebViewConfiguration webViewConfiguration = const WebViewConfiguration(),
    String? webOnlyWindowName,
  }) async {
    try {
      bool ret = await launchUrl(Uri.parse(url),
          mode: mode,
          webViewConfiguration: webViewConfiguration,
          webOnlyWindowName: webOnlyWindowName);
      return ret ? null : ReturnResultError("launchUrl failed $url");
    } catch (err, _) {
      Log.w('UrlLauncherUtils.loadUrl exception: $url\n ${err.toString()}');
      return ReturnResultError(err.toString());
    }
  }

  static String? reorganizationUrl(String url, String queryParams) {
    Uri? uri = Uri.tryParse(url);
    if (uri == null) {
      return null;
    }
    Uri uri2 = Uri(
        scheme: uri.scheme,
        userInfo: uri.userInfo,
        host: uri.host,
        port: uri.port,
        path: uri.path,
        query: uri.query.isEmpty ? queryParams : "${uri.query}&$queryParams",
        fragment: uri.fragment);
    return uri2.toString();
  }

  static Future<String> reorganizationUrlWithAnchor(String url,
      {String anchor = "", int bodyLen = 0}) async {
    String queryParams = await AppUrlUtils.getQueryParamsForUrl(bodyLen);
    String newUrl = UrlLauncherUtils.reorganizationUrl(url, queryParams) ?? url;
    String arpha = newUrl.endsWith("#") ? "" : "#";
    newUrl = "$newUrl$arpha$anchor";
    return newUrl;
  }

  static void closeWebview() {
    if (PlatformUtils.isPC()) {
      return;
    }
    try {
      closeInAppWebView();
    } catch (err, _) {
      Log.i('UrlLauncherUtils.closeWebview exception ${err.toString()}');
    }
  }
}
