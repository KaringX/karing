import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:karing/app/modules/board_provider_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/screens/scheme_handler.dart';

class WebviewISPHelper {
  static Map<String, Function> getJavaScriptHandlers() {
    Map<String, Function(BuildContext, String, dynamic, dynamic)> handler = {};
    handler["ispInstallConfig"] = ispInstallConfig;
    handler["ispInfo"] = ispInfo;
    return handler;
  }

  /*
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

  static Future<String> ispInstallConfig(
    BuildContext context,
    String url,
    dynamic javaScriptHandlerArguments,
    dynamic arguments,
  ) async {
    String result = "";
    String ispId = "";
    String ispName = "";
    do {
      if (arguments.length != 4) {
        result = "arguments length != 4";
        break;
      }
      BoardProviderConfig provider =
          javaScriptHandlerArguments as BoardProviderConfig;

      ispId = provider.id;
      ispName = provider.name;

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
              context,
              urlOrContent,
              name,
              ispUser,
              provider,
              true,
              false,
              provider.outboundDns,
            );
        if (error != null) {
          result = error.message;
          break;
        }

        BoardProviderManager.setBindedProvider(provider.id);
      } catch (err) {
        result = err.toString();
      }
    } while (false);

    return result;
  }

  static Future<String> ispInfo(
    BuildContext context,
    String url,
    dynamic javaScriptHandlerArguments,
    dynamic arguments,
  ) async {
    BoardProviderConfig provider =
        javaScriptHandlerArguments as BoardProviderConfig;
    String result = JsonEncoder().convert(provider);
    return result;
  }
}
