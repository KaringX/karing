import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';

class CommonDialog {
  static void handleStartError(BuildContext context, String errMessage) async {
    final tcontext = Translations.of(context);
    List<String> disableTags = [];

    if (errMessage.contains("install: failed")) {
      if (Platform.isAndroid) {
        errMessage += "\n\n${tcontext.CommonWidget.diableAlwayOnVPN}";
      }
    } else if (errMessage.contains("circular outbound dependency:")) {
      //circular outbound dependency: selector_out -> urltest_out -> FR_Win -> proxy -> g-23401 -> proxy
      List<String> tags = errMessage.split("->");
      for (var tag in tags) {
        tag = tag.trim();
        if (tag != kOutboundTagUrltest) {
          if (!disableTags.contains(tag)) {
            disableTags.add(tag);
          }
        }
      }
    } else if (errMessage.contains("not found for outbound[")) {
      //dependency[de2] not found for outbound[ir2]
      int pos = errMessage.indexOf("not found for outbound[");
      if (pos > 0) {
        String tag = errMessage.substring(
            pos + "not found for outbound[".length, errMessage.length);
        int end = tag.lastIndexOf("]");
        if (end > 0) {
          tag = tag.substring(0, end);
          if (!disableTags.contains(tag)) {
            disableTags.add(tag);
          }
        }
      }
    } else if (errMessage.contains(
        "check port failed:SocketException: Failed to create server socket")) {
      errMessage += "\n\n${tcontext.CommonWidget.resetPort}";
    }
    if (disableTags.isNotEmpty) {
      List<ProxyConfig> disableServers = [];
      for (var group in ServerManager.getConfig().items) {
        for (var server in group.servers) {
          if (disableTags.contains(server.tag)) {
            disableServers.add(server);
            break;
          }
        }
        if (disableServers.length == disableTags.length) {
          break;
        }
      }
      if (disableServers.isNotEmpty) {
        String msg = tcontext.disable;
        for (var server in disableServers) {
          msg +=
              "[${server.tag};${server.type};${server.server};${server.serverport}]";
        }

        bool? yes = await DialogUtils.showConfirmDialog(
            context, "$errMessage\n\n$msg?");
        if (yes == true) {
          for (var server in disableServers) {
            String disableKey = ServerUse.getDisableKey(server);
            ServerManager.getUse().disable.add(disableKey);
          }

          ServerManager.saveUse();
        }
        return;
      }
    }

    DialogUtils.showAlertDialog(context, errMessage,
        showCopy: true, showFAQ: true, withVersion: true);
  }
}
