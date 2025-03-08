import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:karing/app/modules/notice_manager.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/karing_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/scheme_handler.dart';

class WebviewISPHelper {
  static Map<String, Function> getJavaScriptHandlers() {
    Map<String, Function(BuildContext, String, dynamic, dynamic)> handler = {};
    handler["ispPrepare"] = ispPrepare;
    handler["ispInstallConfig"] = ispInstallConfig;
    handler["ispInfo"] = ispInfo;
    return handler;
  }

  /*window.karing.callHandler('ispPrepare', '34345345').then(function(result) {
        console.log(result);
        return result;
    }).catch(function() {
        var event = new Event('error');
        self.dispatchEvent(event);
        if (self.onerror != null) {
          self.onerror(event);
        }
  });
  window.karing.callHandler('ispInstallConfig',  '34345345', 'ispUser', 'https://xxxxxx.yaml', 'ispName').then(function(result) {
        console.log(result);
        return result;
    }).catch(function() {
        var event = new Event('error');
        self.dispatchEvent(event);
        if (self.onerror != null) {
          self.onerror(event);
        }
  });
   window.karing.callHandler('ispInfo').then(function(result) {
        console.log(result);
        return result;
    }).catch(function() {
        var event = new Event('error');
        self.dispatchEvent(event);
        if (self.onerror != null) {
          self.onerror(event);
        }
  });
  */
  static Future<String> ispPrepare(BuildContext context, String url,
      dynamic javaScriptHandlerArguments, dynamic arguments) async {
    String result = "";
    String ispId = "";
    do {
      try {
        if (arguments.length != 1) {
          result = "arguments length != 1";
          break;
        }
        RemoteISPConfig ispConfig =
            javaScriptHandlerArguments as RemoteISPConfig;
        ispId = arguments[0] as String;
        if (ispId.isEmpty) {
          result = "ISP id is empty";
          break;
        }
        ReturnResult<RemoteISPConfig> isp =
            await KaringUtils.getRemoteISPConfig(ispId);
        if (isp.error != null) {
          result = isp.error!.message;
          break;
        }
        if (isp.data!.id.isEmpty) {
          if (context.mounted) {
            final tcontext = Translations.of(context);
            result = tcontext.isp.invalidOrExpired;
          } else {
            result = "ISP id invalid or expired";
          }
          break;
        }
        if (isp.data!.id != ispId) {
          result = "ISP id not match";
          break;
        }
        if (isp.data!.home.isEmpty) {
          result = "ISP home is empty";
          break;
        }
        ispConfig.id = isp.data!.id;
        ispConfig.name = isp.data!.name;
        ispConfig.home = isp.data!.home;
        ispConfig.connect = isp.data!.connect;
        ispConfig.faq = isp.data!.faq;
        ispConfig.customerService = isp.data!.customerService;
        ispConfig.follow = isp.data!.follow;
        ispConfig.notice = isp.data!.notice;
        ispConfig.noticeUpdateInterval = isp.data!.noticeUpdateInterval;
        ispConfig.panelSystem = isp.data!.panelSystem;

        var remoteConfig = RemoteConfigManager.getConfig();
        if (!remoteConfig.ispBindNeedConnect) {
          RemoteISPConfigManager.reset(ispConfig);
          NoticeManager.resetISP();
        }
      } catch (err) {
        result = err.toString();
      }
    } while (false);
    if (result.isNotEmpty) {
      if (context.mounted) {
        await DialogUtils.showAlertDialog(context, result);
      }
    }
    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeUA,
        name: 'ispPrepare',
        parameters: {"id": ispId, "error": result},
        repeatable: false);
    return result;
  }

  static Future<String> ispInstallConfig(BuildContext context, String url,
      dynamic javaScriptHandlerArguments, dynamic arguments) async {
    String result = "";
    String ispId = "";
    String ispName = "";
    do {
      if (arguments.length != 4) {
        result = "arguments length != 4";
        break;
      }
      RemoteISPConfig ispConfig = javaScriptHandlerArguments as RemoteISPConfig;
      if (ispConfig.id.isEmpty) {
        result = "IspPrepare not ready";
        break;
      }
      ispId = ispConfig.id;
      ispName = ispConfig.name;

      try {
        String ispId2 = arguments[0] as String;
        String ispUser = arguments[1] as String;
        String urlOrContent = arguments[2] as String;
        String name = arguments[3] as String;
        if (ispId2.isNotEmpty) {
          if (ispId2 != ispId) {
            result = "ISP id not match";
            break;
          }
        }

        if (name.isEmpty) {
          name = ispName;
        }
        ReturnResultError? error =
            await SchemeHandler.addConfigBySubscriptionLink(
                context, urlOrContent, name, ispUser, ispConfig, true);
        if (error != null) {
          result = error.message;
          break;
        }
        var remoteConfig = RemoteConfigManager.getConfig();
        if (remoteConfig.ispBindNeedConnect) {
          RemoteISPConfigManager.reset(ispConfig);
          NoticeManager.resetISP();
        }
      } catch (err) {
        result = err.toString();
      }
    } while (false);
    if (result.isNotEmpty) {
      if (context.mounted) {
        await DialogUtils.showAlertDialog(context, result);
      }
    }
    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeUA,
        name: 'ispInstallConfig',
        parameters: {"name": ispName, "id": ispId, "error": result},
        repeatable: false);
    return result;
  }

  static Future<String> ispInfo(BuildContext context, String url,
      dynamic javaScriptHandlerArguments, dynamic arguments) async {
    RemoteISPConfig ispConfig = javaScriptHandlerArguments as RemoteISPConfig;
    String result = "";
    do {
      if (ispConfig.id.isEmpty) {
        result = "IspPrepare not ready";
        break;
      }

      result = JsonEncoder().convert(ispConfig);
    } while (false);
    return result;
  }
}
