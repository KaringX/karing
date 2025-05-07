import 'package:flutter/foundation.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/private/app_url_utils_private.dart';
import 'package:karing/app/utils/app_utils.dart';
import 'package:karing/app/utils/did.dart';
import 'package:karing/app/utils/install_referrer_utils.dart';

abstract final class AppUrlUtils {
  static String getQueryParamsForAnalytics(int bodyLen) {
    return AppUrlUtilsPrivate.signQueryParams(
        AppUtils.getBuildinVersion(), bodyLen, {});
  }

  static Future<String> getQueryParamsForUrl(int bodyLen) async {
    String planguageTag = [
      PlatformDispatcher.instance.locale.languageCode,
      PlatformDispatcher.instance.locale.countryCode ?? ""
    ].join("-");
    var config = SettingManager.getConfig();
    var remoteISPConfig = RemoteISPConfigManager.getConfig();
    String did = await Did.getDid();
    bool firstTime = await Did.getFirstTime();
    String installRefer = await InstallReferrerUtils.getString();

    installRefer = installRefer.replaceAll(" ", "").toLowerCase();
    String src =
        (PlatformDispatcher.instance.locale.countryCode ?? "").toLowerCase();

    Map<String, dynamic> params = {
      "r_c": Uri.encodeComponent(config.regionCode.toLowerCase()),
      "s_r_c": Uri.encodeComponent(src),
      "l_t": Uri.encodeComponent(config.languageTag),
      "s_l_t": Uri.encodeComponent(planguageTag),
      "t_z_o":
          Uri.encodeComponent(DateTime.now().timeZoneOffset.inHours.toString()),
      "did": Uri.encodeComponent(did),
      "new": Uri.encodeComponent(firstTime.toString()),
      "from": Uri.encodeComponent("karing"),
      "i_r": Uri.encodeComponent(installRefer),
      "isp_id": Uri.encodeComponent(remoteISPConfig.id),
    };

    return AppUrlUtilsPrivate.signQueryParams(
        AppUtils.getBuildinVersion(), bodyLen, params);
  }
}
