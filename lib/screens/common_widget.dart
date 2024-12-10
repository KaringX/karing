import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/themes.dart';
import 'package:karing/screens/webview_helper.dart';
import 'package:provider/provider.dart';

class CommonWidget {
  static const double kLatencyWidget = 60;
  static Widget createLatencyWidget(BuildContext context, double? height,
      bool loading, bool isTesting, String latency,
      {void Function()? onTapLatencyReload}) {
    const double defaultHeight = 30;
    if (loading) {
      return SizedBox(
          width: kLatencyWidget,
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 20,
              width: 20,
              child: RepaintBoundary(
                child: CircularProgressIndicator(
                    color: isTesting ? ThemeDefine.kColorGreenBright : null,
                    strokeWidth: 2),
              ),
            )
          ]));
    }
    if (latency.isEmpty) {
      return const SizedBox(width: kLatencyWidget);
    }

    int? la = int.tryParse(latency);
    if (la == null) {
      return SizedBox(
          width: kLatencyWidget,
          height: height ?? defaultHeight,
          child: InkWell(
              onTap: () async {
                final tcontext = Translations.of(context);
                if (onTapLatencyReload == null) {
                  DialogUtils.showAlertDialog(context, latency);
                } else {
                  bool? ok = await DialogUtils.showConfirmDialog(
                      context, "$latency\n\n${tcontext.retry}");
                  if (ok == true) {
                    onTapLatencyReload();
                  }
                }
              },
              child: const SizedBox(
                width: kLatencyWidget,
                child: Icon(Icons.warning_amber_outlined,
                    size: 30, color: Colors.red),
              )));
    }
    late Color color;
    if (la < 800) {
      color = ThemeDefine.kColorGreenBright;
    } else if (la < 1500) {
      color = Colors.black;
    } else {
      color = Colors.red;
    }

    return SizedBox(
        width: kLatencyWidget,
        height: height ?? defaultHeight,
        child: InkWell(
            onTap: () async {
              if (onTapLatencyReload != null) {
                onTapLatencyReload();
              }
            },
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "$latency ms",
                style: TextStyle(
                    fontSize: ThemeConfig.kFontSizeListSubItem, color: color),
              )
            ])));
  }

  static Row createGroupTraffic(
      BuildContext context,
      String groupId,
      bool showISPIfExpiring,
      SubscriptionTraffic? traffic,
      double offset,
      MainAxisAlignment? mainAxisAlignment,
      double windowWidth,
      void Function(String) reloadStart,
      void Function(String, ReturnResult<SubscriptionTraffic> value)
          reloadFinish) {
    if (traffic == null) {
      return const Row();
    }
    var settings = SettingManager.getConfig();
    bool expiring = false;
    String expireTime = traffic.expire;
    if (expireTime.isNotEmpty) {
      DateTime? date = DateTime.tryParse(expireTime);
      if (date != null) {
        try {
          var dif = date.difference(DateTime.now());
          if (dif.inDays <= 14) {
            expiring = true;
          }
          expireTime = DateFormat.yMd(settings.languageTag).format(date);
        } catch (e) {}
      }
    }

    double fontSize =
        windowWidth >= 335 ? ThemeConfig.kFontSizeListSubItem : 12;
    Color? color =
        Provider.of<Themes>(context, listen: false).getThemeIconColor(context);
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        SizedBox(
          width: offset,
        ),
        Icon(
          Icons.upload,
          size: 16,
          color: color,
        ),
        Text(
          traffic.upload,
          style: TextStyle(
            fontSize: fontSize,
            color: traffic.overQuota ? Colors.red : null,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Icon(
          Icons.download,
          size: 16,
          color: color,
        ),
        Text(
          traffic.download,
          style: TextStyle(
            fontSize: fontSize,
            color: traffic.overQuota ? Colors.red : null,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        Icon(
          Icons.backpack_outlined,
          size: 16,
          color: color,
        ),
        Text(
          traffic.total,
          style: TextStyle(
            fontSize: fontSize,
            color: traffic.overQuota ? Colors.red : null,
          ),
        ),
        const SizedBox(
          width: 3,
        ),
        InkWell(
          onTap: () async {
            ServerManager.reloadTraffic(groupId).then((value) {
              reloadFinish(groupId, value);
            });
            reloadStart(groupId);
            if (showISPIfExpiring && expiring) {
              ServerConfigGroupItem? item = ServerManager.getByGroupId(groupId);
              if (item != null) {
                SubscriptionISP? isp = item.getISP();
                if (isp != null) {
                  showISPOpDialog(context, groupId);
                }
              }
            }
          },
          child: Row(
            children: [
              Icon(
                Icons.share_arrival_time_outlined,
                size: 16,
                color: color,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                expireTime,
                style: TextStyle(
                    fontSize: fontSize, color: expiring ? Colors.red : null),
              ),
              ServerManager.isReloadingTraffic(groupId)
                  ? const SizedBox(
                      height: 26,
                      width: 26,
                      child: RepaintBoundary(
                        child: CircularProgressIndicator(strokeWidth: 2),
                      ),
                    )
                  : const Icon(
                      Icons.refresh_outlined,
                      size: 26,
                    )
            ],
          ),
        ),
      ],
    );
  }

  static Widget createNeedPermission(BuildContext context, String text,
      Function() onPermission, Function() onRefresh) {
    final tcontext = Translations.of(context);
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              child: Text(text),
              onPressed: () async {
                onPermission();
              }),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              child: Text(tcontext.refresh),
              onPressed: () async {
                onRefresh();
              }),
        ],
      ),
    );
  }

  static Future<void> showISPOpDialog(
      BuildContext context, String groupid) async {
    final tcontext = Translations.of(context);
    return await showDialog<void>(
        context: context,
        routeSettings: const RouteSettings(name: "showISPOpDialog"),
        barrierDismissible: false,
        builder: (BuildContext context) {
          return SimpleDialog(
            children: [
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        child: Text(tcontext.SettingsScreen.openISP),
                        onPressed: () async {
                          Navigator.pop(context, null);
                          ServerConfigGroupItem? item =
                              ServerManager.getByGroupId(groupid);
                          if (item != null) {
                            SubscriptionISP? isp = item.getISP();
                            if (isp != null) {
                              await WebviewHelper.loadUrl(context, isp.url,
                                  title: isp.name);
                            }
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        child: Text(tcontext.SettingsScreen.cleanISPNoParam),
                        onPressed: () {
                          ServerManager.disableISP(groupid);
                          ServerManager.saveServerConfig();
                          Navigator.pop(context, null);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        child: Text(tcontext.cancel),
                        onPressed: () {
                          Navigator.pop(context, null);
                        },
                      ),
                    ],
                  )),
            ],
          );
        });
  }
}
