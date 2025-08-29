import 'package:flutter/material.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:tuple/tuple.dart';

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
                      context, "$latency\n\n${tcontext.meta.retry}");
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
    final tcontext = Translations.of(context);
    var settings = SettingManager.getConfig();

    Tuple2<bool, String> exp = traffic.getExpireTime(settings.languageTag);
    bool expiring = exp.item1;
    String expireTime = exp.item2;

    double fontSize =
        windowWidth >= 335 ? ThemeConfig.kFontSizeListSubItem : 12;

    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        SizedBox(
          width: offset,
        ),
        Text(
          "↑ ${traffic.upload} ↓ ${traffic.download} / ${traffic.total}",
          style: TextStyle(
            fontSize: fontSize,
            color: traffic.overQuota ? Colors.red : null,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () async {
            ServerManager.reloadTraffic(groupId).then((value) {
              reloadFinish(groupId, value);
            });
            reloadStart(groupId);
          },
          child: Row(
            children: [
              Icon(
                Icons.share_arrival_time_outlined,
                size: 16,
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
                  : Tooltip(
                      message: tcontext.meta.refresh,
                      child: const Icon(
                        Icons.refresh_outlined,
                        size: 26,
                      ))
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
              child: Text(tcontext.meta.refresh),
              onPressed: () async {
                onRefresh();
              }),
        ],
      ),
    );
  }
}
