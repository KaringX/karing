import 'package:flutter/material.dart';
import 'package:karing/app/modules/notice_manager.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/app_scheme_actions.dart';
import 'package:karing/app/utils/karing_utils.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/system_scheme_utils.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/screens/add_profile_by_link_or_content_screen.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:window_manager/window_manager.dart';

class SchemeHandler {
  static void Function(bool)? vpnConnect;
  static void Function(bool)? vpnDisconnect;
  static void Function(bool)? vpnReconnect;
  static Future<ReturnResultError?> handle(
      BuildContext context, String url) async {
    //clash://install-config?url=trojan://41bec492-cd79-4b57-9a15-7d2bb00fcfca@163.123.192.57:443?allowInsecure=1#%F0%9F%87%BA%F0%9F%87%B8%20_US_%E7%BE%8E%E5%9B%BD|trojan://a8f54f4e-1d9d-44e4-9ef7-50ee7ba89561@jk.jkk.kisskiss.pro:1887?allowInsecure=1#%F0%9F%87%B0%F0%9F%87%B7%20_KR_%E9%9F%A9%E5%9B%BD
    //karing://install-config?url=https://xxxxx.com/clash/config
    //stash://install-config?url=https%3A%2F%2Fwww.xxxxx.gay%2Fapi%2Fv1%2Fclient%2Fsubscribe%3Ftoken%3D&name=stars
    //sing-box://import-remote-profile?url=https://xxxxx:8443/proxy/fgram.json#mcivip%F0%9F%87%B9%F0%9F%87%B73%7CArefgram
    //karing://connect?background=false
    //karing://disconnect?background=false
    //karing://reconnect?background=false
    //karing://install-config?url=xxx&name=xxx&&isp-name=xxx&isp-code=xxx;connect; disconnect; reconnect;
    //karing://install-config?url=https%3A%2F%2Fxn--xxxxx.com%2Fsub%2Fa363e83fd1f559df%2Fclash&name=gdy&&isp-name=%E8%B7%9F%E6%96%97%E4%BA%91&isp-code=https%3A%2F%2Fxn--9kq147c4p2a.com%2Fuser
    //karing://restore-backup?url=https%3A%2F%2Fxn--xxxxx.com%2Fsub%2Fa363e83fd1f559df%2Fclash
    //karing://tvos?ips=192.168.1.102&port=4040&uuid=728EC1AB-7AC8-4E8F-8406-3856F6C70506&cport=3057&secret=0191eee9f89d7cd29fda94c0b663efb2&version=1.0.29.293
    Uri? uri = Uri.tryParse(url);
    if (uri == null) {
      return ReturnResultError("parse url failed: $url");
    }
    if (uri.isScheme(SystemSchemeUtils.getClashScheme())) {
      if (uri.host == "install-config") {
        return await _installConfig(context, uri);
      }
    } else if (uri.isScheme(SystemSchemeUtils.getSingboxScheme())) {
      if (uri.host == "import-remote-profile") {
        return await _installConfig(context, uri);
      }
    } else if (uri.isScheme(SystemSchemeUtils.getKaringScheme())) {
      if (uri.host == AppSchemeActions.connectAction()) {
        if (vpnConnect != null) {
          bool background = false;
          try {
            background = uri.queryParameters["background"] == "true";
          } catch (err) {}
          vpnConnect!.call(background);
        }
        return null;
      } else if (uri.host == AppSchemeActions.disconnectAction()) {
        if (vpnDisconnect != null) {
          bool background = false;
          try {
            background = uri.queryParameters["background"] == "true";
          } catch (err) {}
          vpnDisconnect!.call(background);
        }
        return null;
      } else if (uri.host == AppSchemeActions.reconnectAction()) {
        if (vpnReconnect != null) {
          bool background = false;
          try {
            background = uri.queryParameters["background"] == "true";
          } catch (err) {}
          vpnReconnect!.call(background);
        }
        return null;
      } else if (uri.host == AppSchemeActions.installConfigAction()) {
        return await _installConfig(context, uri);
      } else if (uri.host == AppSchemeActions.restoreBackup()) {
        return await _restoreBackup(context, uri);
      } else if (uri.host == AppSchemeActions.appleTVHost()) {
        if (PlatformUtils.isMobile()) {
          return GroupHelper.showAppleTVByUrl(context, url);
        }
      } else {
        return ReturnResultError("unsupport action: ${uri.host}");
      }
    }
    return ReturnResultError("unsupport scheme: ${uri.scheme}");
  }

  static Future<ReturnResultError?> _installConfig(
      BuildContext context, Uri uri) async {
    if (PlatformUtils.isPC()) {
      await windowManager.show();
    }
    String? name;
    String? url;
    String? ispId;
    String? ispUser;

    try {
      name = uri.queryParameters["name"];
      url = uri.queryParameters["url"];
      if (uri.scheme == SystemSchemeUtils.getKaringScheme()) {
        ispId = uri.queryParameters["isp-id"];
        ispUser = uri.queryParameters["isp-user"];
      }
    } catch (err) {
      if (!context.mounted) {
        return null;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
      return ReturnResultError(err.toString());
    }
    name ??= uri.fragment;
    if (name.isNotEmpty) {
      try {
        name = Uri.decodeComponent(name);
      } catch (err) {}
    }
    if (url != null) {
      try {
        url = Uri.decodeComponent(url);
      } catch (err) {}
    }
    if (ispId != null) {
      try {
        ispId = Uri.decodeComponent(ispId);
      } catch (err) {}
    }
    if (ispUser != null) {
      try {
        ispUser = Uri.decodeComponent(ispUser);
      } catch (err) {}
    }
    if (url == null || url.isEmpty) {
      return ReturnResultError("url empty");
    }
    RemoteISPConfig? ispConfig;
    var remoteConfig = RemoteConfigManager.getConfig();
    if (ispId != null && ispId.isNotEmpty) {
      var remoteISPConfig = RemoteISPConfigManager.getConfig();
      if (remoteISPConfig.id.isEmpty) {
        ReturnResult<RemoteISPConfig> isp =
            await KaringUtils.getRemoteISPConfig(ispId);
        if (isp.error == null) {
          if (isp.data!.id.isNotEmpty) {
            ispConfig = isp.data!;
          }
        }
      }
    }
    if (ispConfig != null) {
      if (!remoteConfig.ispBindNeedConnect) {
        RemoteISPConfigManager.reset(ispConfig);
        NoticeManager.resetISP();
      }
    }
    if (!context.mounted) {
      return null;
    }
    ReturnResultError? result = await addConfigBySubscriptionLink(
        context, url, name, ispUser, ispConfig, false);
    if (result == null) {
      if (ispConfig != null) {
        if (remoteConfig.ispBindNeedConnect) {
          RemoteISPConfigManager.reset(ispConfig);
          NoticeManager.resetISP();
        }
      }
    }

    return result;
  }

  static Future<ReturnResultError?> _restoreBackup(
      BuildContext context, Uri uri) async {
    if (PlatformUtils.isPC()) {
      await windowManager.show();
    }
    String? url = uri.queryParameters["url"];
    if (url != null) {
      try {
        url = Uri.decodeComponent(url);
      } catch (err) {}
    }
    if (url == null || url.isEmpty) {
      return ReturnResultError("decode query param url failed");
    }
    if (!context.mounted) {
      return ReturnResultError("page unmounted");
    }
    return GroupHelper.restoreBackupFromUrl(context, url);
  }

  static Future<ReturnResultError?> addConfigBySubscriptionLink(
      BuildContext context,
      String urlOrContent,
      String? name,
      String? ispUser,
      RemoteISPConfig? ispConfig,
      bool autoAdd) async {
    ServerConfigGroupItem? item =
        ServerManager.getGroupByUrlOrPath(urlOrContent);
    if (item != null) {
      return null;
    }
    int kMaxPush = 1;
    if (AddProfileByLinkOrContentScreen.pushed >= kMaxPush) {
      return ReturnResultError("addprofile request already exists");
    }
    UrlLauncherUtils.closeWebview();
    if (!context.mounted) {
      return null;
    }

    bool? ok = await Navigator.push(
        context,
        MaterialPageRoute(
            settings: AddProfileByLinkOrContentScreen.routSettings(),
            builder: (context) => AddProfileByLinkOrContentScreen(
                  urlOrContent: urlOrContent,
                  name: name,
                  ispId: ispConfig?.id,
                  ispUser: ispUser,
                  autoAdd: autoAdd,
                )));
    if (ok != true) {
      return ReturnResultError("addprofile failed or canceled by user");
    }

    return null;
  }
}
