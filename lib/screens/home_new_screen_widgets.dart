// ignore_for_file: prefer_interpolation_to_compose_strings, use_build_context_synchronously, empty_catches, unused_catch_stack

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/app_lifecycle_state_notify.dart';
import 'package:karing/app/utils/clash_api.dart';
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/common_widget.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/card.dart';
import 'package:karing/screens/widgets/constant.dart';
import 'package:karing/screens/widgets/grid.dart';
import 'package:karing/screens/widgets/sheet.dart';
import 'package:karing/screens/widgets/tab.dart';
import 'package:karing/screens/widgets/text.dart';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';
import 'package:tuple/tuple.dart';

abstract class SwitchCard extends StatefulWidget {
  const SwitchCard(
      {super.key,
      this.icon,
      required this.title,
      this.text = "",
      this.tips = "",
      this.enable = false,
      this.onChanged,
      this.onPressed});

  final IconData? icon;
  final String title;
  final String text;
  final String tips;
  final bool enable;
  final bool Function(BuildContext context, bool)? onChanged;
  final Function()? onPressed;
}

abstract class SwitchCardState<T extends SwitchCard> extends State<T> {
  bool enable = false;
  @override
  void initState() {
    super.initState();
    enable = widget.enable;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: getWidgetHeight(1),
      child: CommonCard(
        onPressed: widget.onPressed,
        alpha: SettingManager.getConfig().uiScreen.getWidgetAlpha(),
        info: Info(
          label: widget.title,
          iconData: widget.icon,
          tips: widget.tips,
        ),
        child: Container(
          padding: baseInfoEdgeInsets.copyWith(
            top: 4,
            bottom: 8,
            right: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: TooltipText(
                  text: Text(
                    widget.text,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall?.adjustSize(-2).toLight,
                  ),
                ),
              ),
              Switch.adaptive(
                value: enable,
                activeColor: ThemeDefine.kColorGreenBright,
                onChanged: (value) {
                  enable = widget.onChanged?.call(context, value) ?? enable;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract class FutureSwitchCard extends StatefulWidget {
  const FutureSwitchCard(
      {super.key,
      this.icon,
      required this.title,
      this.tips = "",
      this.text = "",
      this.getEnable,
      this.onChanged,
      this.onPressed,
      this.onLongPress});
  final IconData? icon;
  final String title;
  final String tips;
  final String text;
  final Future<bool> Function()? getEnable;
  final Future<void> Function(BuildContext context, bool)? onChanged;
  final Function(BuildContext context)? onPressed;
  final Function()? onLongPress;
}

abstract class FutureSwitchCardState<T extends FutureSwitchCard>
    extends State<T> {
  bool enabled = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: getWidgetHeight(1),
      child: CommonCard(
        alpha: SettingManager.getConfig().uiScreen.getWidgetAlpha(),
        onPressed: widget.onPressed == null
            ? null
            : () {
                widget.onPressed!.call(context);
              },
        onLongPress: widget.onLongPress,
        info: Info(
          label: widget.title,
          iconData: widget.icon,
          tips: widget.tips,
        ),
        child: Container(
          padding: baseInfoEdgeInsets.copyWith(
            top: 4,
            bottom: 8,
            right: 8,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: TooltipText(
                  text: Text(
                    widget.text,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleSmall?.adjustSize(-2).toLight,
                  ),
                ),
              ),
              FutureBuilder(
                  future: widget.getEnable?.call(),
                  builder:
                      (BuildContext context, AsyncSnapshot<bool> snapshot) {
                    enabled = snapshot.hasData && snapshot.data!;
                    return Switch.adaptive(
                      value: enabled,
                      activeColor: ThemeDefine.kColorGreenBright,
                      onChanged: (value) {
                        widget.onChanged?.call(context, value);
                        setState(() {});
                      },
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

abstract class TextCard0 extends StatefulWidget {
  const TextCard0(
      {super.key,
      this.icon,
      required this.title,
      this.tips = "",
      this.foucsNode,
      this.onPressed,
      this.onLongPress});
  final IconData? icon;
  final String title;
  final String tips;

  final FocusNode? foucsNode;
  final Function()? onPressed;
  final Function()? onLongPress;
}

abstract class TextCard0State<T extends TextCard0> extends State<T> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getWidgetHeight(0),
      child: CommonCard(
        alpha: SettingManager.getConfig().uiScreen.getWidgetAlpha(),
        info: Info(
          iconData: widget.icon,
          label: widget.title,
          tips: widget.tips,
        ),
        onPressed: widget.onPressed,
        onLongPress: widget.onLongPress,
        focusNode: widget.foucsNode,
        child: Container(
          padding: baseInfoEdgeInsets.copyWith(
            top: 0,
          ),
          child: null,
        ),
      ),
    );
  }
}

abstract class TextCard1 extends StatefulWidget {
  const TextCard1(
      {super.key,
      this.icon,
      required this.title,
      this.tips = "",
      required this.notifier,
      this.foucsNode,
      this.onPressed,
      this.onLongPress});
  final IconData? icon;
  final String title;
  final String tips;
  final ValueNotifier<String> notifier;
  final FocusNode? foucsNode;
  final Function()? onPressed;
  final Function()? onLongPress;
}

abstract class TextCard1State<T extends TextCard1> extends State<T> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: getWidgetHeight(1),
      child: CommonCard(
        alpha: SettingManager.getConfig().uiScreen.getWidgetAlpha(),
        info: Info(
          iconData: widget.icon,
          label: widget.title,
          tips: widget.tips,
        ),
        onPressed: widget.onPressed,
        onLongPress: widget.onLongPress,
        focusNode: widget.foucsNode,
        child: Container(
          padding: baseInfoEdgeInsets.copyWith(
            top: 0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                //height: 30, // globalState.measure.bodyMediumHeight + 2,
                child: ValueListenableBuilder(
                  valueListenable: widget.notifier,
                  builder: (_, value, __) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          value,
                          style:
                              theme.textTheme.bodyMedium?.toLight.adjustSize(1),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

abstract class TextCard2Line extends StatefulWidget {
  const TextCard2Line({
    super.key,
    this.icon,
    required this.title,
    this.tips = "",
    required this.notifier,
    required this.notifier2,
    this.onPressed,
    this.onLongPress,
    this.focusNode,
  });
  final IconData? icon;
  final String title;
  final String tips;
  final ValueNotifier<String> notifier;
  final ValueNotifier<String> notifier2;
  final Function()? onPressed;
  final Function()? onLongPress;
  final FocusNode? focusNode;
}

abstract class TextCard2LineState<T extends TextCard2Line> extends State<T> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: getWidgetHeight(2),
      child: CommonCard(
        alpha: SettingManager.getConfig().uiScreen.getWidgetAlpha(),
        info: Info(
          iconData: widget.icon,
          label: widget.title,
          tips: widget.tips,
        ),
        onPressed: widget.onPressed,
        onLongPress: widget.onLongPress,
        focusNode: widget.focusNode,
        child: Container(
          padding: baseInfoEdgeInsets.copyWith(
            top: 0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                //height: 30, // globalState.measure.bodyMediumHeight + 2,
                child: ValueListenableBuilder(
                  valueListenable: widget.notifier,
                  builder: (_, value, __) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          value,
                          style:
                              theme.textTheme.bodyMedium?.toLight.adjustSize(1),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(
                //height: 30, // globalState.measure.bodyMediumHeight + 2,
                child: ValueListenableBuilder(
                  valueListenable: widget.notifier2,
                  builder: (_, value, __) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          value,
                          style:
                              theme.textTheme.bodyMedium?.toLight.adjustSize(1),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeWidgetCard0Options {
  final Function()? onPressed;
  final Function()? onLongPress;

  HomeWidgetCard0Options(this.onPressed, this.onLongPress);
}

class HomeWidgetCard1Options {
  ValueNotifier<String> notifier = ValueNotifier<String>("");
  final Function()? onPressed;
  final Function()? onLongPress;

  HomeWidgetCard1Options(this.onPressed, this.onLongPress);
}

class HomeWidgetCard2Options {
  ValueNotifier<String> notifier = ValueNotifier<String>("");
  ValueNotifier<String> notifier2 = ValueNotifier<String>("");
  final Function()? onPressed;
  final Function()? onLongPress;

  HomeWidgetCard2Options(this.onPressed, this.onLongPress);
}

class HomeWidgetSwitchOptions {
  final Function(bool value)? onChanged;
  final Function()? onAfterPressed;

  HomeWidgetSwitchOptions(this.onChanged, this.onAfterPressed);
}

class HomeWidgetProfileSubTrafficOptions {
  ValueNotifier<String> notifier = ValueNotifier<String>("");

  HomeWidgetProfileSubTrafficOptions();
}

enum Mode { rule, global }

class HomeWidgetOutboundModeOptions {
  final Function(Mode)? onChanged;

  HomeWidgetOutboundModeOptions(this.onChanged);
}

class HomeWidgetOptions {
  HomeWidgetCard1Options? runtimeInfo;
  HomeWidgetCard1Options? memoryInfo;
  HomeWidgetCard1Options? connectionsInfo;

  HomeWidgetCard2Options? trafficTotalInfo;
  HomeWidgetCard2Options? trafficProxyInfo;
  HomeWidgetCard2Options? trafficSpeedInfo;

  HomeWidgetProfileSubTrafficOptions? profileSubTraffic;
  HomeWidgetOutboundModeOptions? outboundMode;

  HomeWidgetSwitchOptions? tun;
  HomeWidgetSwitchOptions? systemProxy;

  HomeWidgetCard0Options? myProfiles;
  HomeWidgetCard0Options? addProfile;
  HomeWidgetCard0Options? perapp;
  HomeWidgetCard0Options? dns;
  HomeWidgetCard0Options? diversion;
  HomeWidgetCard0Options? diversionRules;
  HomeWidgetCard0Options? netCheck;
  HomeWidgetCard0Options? speedtest;
  HomeWidgetCard0Options? myLink;
  HomeWidgetCard0Options? appleTv;
  HomeWidgetCard0Options? htmlBoard;
  HomeWidgetOptions({
    this.runtimeInfo,
    this.memoryInfo,
    this.connectionsInfo,
    this.trafficTotalInfo,
    this.trafficProxyInfo,
    this.trafficSpeedInfo,
    this.profileSubTraffic,
    this.outboundMode,
    this.tun,
    this.systemProxy,
    this.myProfiles,
    this.addProfile,
    this.perapp,
    this.dns,
    this.diversion,
    this.diversionRules,
    this.netCheck,
    this.speedtest,
    this.myLink,
    this.appleTv,
    this.htmlBoard,
  });
}

class RunTimeInfoCard extends TextCard1 {
  RunTimeInfoCard({
    super.key,
    required super.notifier,
    super.onPressed,
    super.onLongPress,
    super.foucsNode,
  }) : super(
          icon: Icons.access_time_outlined,
          title: t.meta.runDuration,
        );

  @override
  State<RunTimeInfoCard> createState() => _RunTimeInfoCardState();
  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "run_time_info";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _RunTimeInfoCardState extends TextCard1State<RunTimeInfoCard> {}

class MemoryInfoCard extends TextCard1 {
  MemoryInfoCard({
    super.key,
    required super.notifier,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.memory,
          title: t.meta.memory,
        );

  @override
  State<MemoryInfoCard> createState() => _MemoryInfoCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "memory_info";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _MemoryInfoCardState extends TextCard1State<MemoryInfoCard> {}

class ConnectionsInfoCard extends TextCard1 {
  ConnectionsInfoCard({
    super.key,
    required super.notifier,
    super.onPressed,
    super.onLongPress,
    super.foucsNode,
  }) : super(
          icon: Icons.monitor_outlined,
          title: t.NetConnectionsScreen.title,
        );

  @override
  State<ConnectionsInfoCard> createState() => _ConnectionsInfoCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "connections_info";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _ConnectionsInfoCardState extends TextCard1State<ConnectionsInfoCard> {}

class TrafficTotalInfoCard extends TextCard2Line {
  TrafficTotalInfoCard({
    super.key,
    required super.notifier,
    required super.notifier2,
    super.onPressed,
    super.onLongPress,
    super.focusNode,
  }) : super(
          icon: Icons.data_saver_off,
          title: t.meta.trafficTotal,
        );

  @override
  State<TrafficTotalInfoCard> createState() => _TrafficTotalInfoCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "traffic_total_info";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _TrafficTotalInfoCardState
    extends TextCard2LineState<TrafficTotalInfoCard> {}

class TrafficProxyInfoCard extends TextCard2Line {
  TrafficProxyInfoCard({
    super.key,
    required super.notifier,
    required super.notifier2,
    super.onPressed,
    super.onLongPress,
    super.focusNode,
  }) : super(
          icon: Icons.data_saver_off,
          title: t.meta.trafficProxy,
        );

  @override
  State<TrafficProxyInfoCard> createState() => _TrafficProxyInfoCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "traffic_proxy_info";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _TrafficProxyInfoCardState
    extends TextCard2LineState<TrafficProxyInfoCard> {}

class TrafficSpeedInfoCard extends TextCard2Line {
  TrafficSpeedInfoCard({
    super.key,
    required super.notifier,
    required super.notifier2,
    super.onPressed,
    super.onLongPress,
    super.focusNode,
  }) : super(
          icon: Icons.speed,
          title: t.meta.netSpeed,
        );

  @override
  State<TrafficSpeedInfoCard> createState() => _TrafficSpeedInfoCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "traffic_speed_info";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _TrafficSpeedInfoCardState
    extends TextCard2LineState<TrafficSpeedInfoCard> {}

class ProfileSubTrafficInfoCard extends StatefulWidget {
  const ProfileSubTrafficInfoCard({super.key, required this.groupidNotifier});

  final ValueNotifier<String> groupidNotifier;

  @override
  State<ProfileSubTrafficInfoCard> createState() =>
      _ProfileSubTrafficInfoState();
  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "profile_sub_traffic_info";
  }

  static int crossAxisCellCount() {
    return 8;
  }
}

class _ProfileSubTrafficInfoState extends State<ProfileSubTrafficInfoCard> {
  @override
  void initState() {
    super.initState();
    ServerManager.onEventRemoteTrafficReload(hashCode, (String groupid) {
      setState(() {});
    }, (String groupid) {
      setState(() {});
    });
    ServerManager.onEventUpdateConfig(hashCode,
        (List<ServerConfigGroupItem> groups) async {
      bool refresh = false;
      for (var group in groups) {
        if (group.groupid == widget.groupidNotifier.value) {
          refresh = true;
          break;
        }
      }
      if (refresh) {
        if (!mounted) {
          return;
        }
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    ServerManager.removeListener(hashCode);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    num line = 1;
    final group = ServerManager.getByGroupId(widget.groupidNotifier.value);
    bool expiring = false;
    String expireTime = "";
    TextStyle? textStyle;
    if (group != null && group.traffic != null) {
      var settings = SettingManager.getConfig();
      Tuple2<bool, String> exp =
          group.traffic!.getExpireTime(settings.languageTag);
      expiring = exp.item1;
      expireTime = exp.item2;
      line = 3;
      final ts = theme.textTheme.bodyMedium?.toLight.adjustSize(1);
      textStyle = TextStyle(
          fontSize: ts!.fontSize, color: expiring ? Colors.red : ts.color);
    }

    return SizedBox(
      height: getWidgetHeight(line),
      child: CommonCard(
        alpha: SettingManager.getConfig().uiScreen.getWidgetAlpha(),
        info: Info(
          iconData: Icons.list_alt_outlined,
          label: t.meta.currentProfile,
        ),
        onPressed: onPress,
        child: Container(
          padding: baseInfoEdgeInsets.copyWith(
            top: 0,
          ),
          child: group != null
              ? Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      //height: 30, // globalState.measure.bodyMediumHeight + 2,
                      child: Row(children: [
                        if (ServerManager.isReloadingTraffic(group.groupid) ||
                            ServerManager.isReloading(group.groupid)) ...[
                          const SizedBox(
                            height: 20,
                            width: 20,
                            child: RepaintBoundary(
                              child: CircularProgressIndicator(strokeWidth: 2),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                        ],
                        Text(
                          group.remark,
                          style:
                              theme.textTheme.bodyMedium?.toLight.adjustSize(1),
                        ),
                      ]),
                    ),
                    if (group.traffic != null) ...[
                      SizedBox(
                        //height: 30, // globalState.measure.bodyMediumHeight + 2,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "↑ ${group.traffic!.upload} ↓ ${group.traffic!.download} / ${group.traffic!.total}",
                                style: theme.textTheme.bodyMedium?.toLight
                                    .adjustSize(1),
                              ),
                            ]),
                      ),
                      SizedBox(
                        //height: 30, // globalState.measure.bodyMediumHeight + 2,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(expireTime, style: textStyle),
                            ]),
                      )
                    ]
                  ],
                )
              : SizedBox.shrink(),
        ),
      ),
    );
  }

  void onPress() async {
    final group = ServerManager.getByGroupId(widget.groupidNotifier.value);
    if (group == null || !group.isRemote()) {
      return;
    }
    List<Widget> widgets = [
      ListTile(
        title: Text(
          t.meta.refresh,
        ),
        onTap: () async {
          Navigator.pop(context);
          ServerManager.reloadTraffic(group.groupid);
        },
      ),
      ListTile(
        title: Text(
          t.meta.update,
        ),
        onTap: () async {
          Navigator.pop(context);
          ServerManager.reload(group.groupid);
          setState(() {});
        },
      )
    ];

    showSheetWidgets(context: context, widgets: widgets);
  }
}

class TunCard extends FutureSwitchCard {
  TunCard({super.key, this.onAfterPressed, this.onValueChanged})
      : super(
            icon: Icons.stacked_line_chart,
            title: "TUN",
            text: t.meta.enable,
            getEnable: TunCard.getEnabled,
            onPressed: (context) async {
              await GroupHelper.showTun(context, "settings");
              onAfterPressed?.call();
            },
            onChanged: (context, value) async {
              if (value && Platform.isWindows) {
                bool admin = VPNService.isRunAsAdmin();
                if (!admin) {
                  final tcontext = Translations.of(context);
                  await DialogUtils.showAlertDialog(
                      context, tcontext.SettingsScreen.tunModeRunAsAdmin);
                  return;
                }
              }
              SettingManager.getConfig().tun.enable = value;
              SettingManager.setDirty(true);
              onValueChanged?.call(value);
            });
  final Function()? onAfterPressed;
  final Function(bool value)? onValueChanged;
  @override
  State<TunCard> createState() => _TunSwitchCardState();

  static Future<bool> getEnabled() async {
    return SettingManager.getConfig().tun.enable;
  }

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "tun";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _TunSwitchCardState extends FutureSwitchCardState<TunCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
}

class SystemProxyCard extends FutureSwitchCard {
  SystemProxyCard({super.key, this.onAfterPressed, this.onValueChanged})
      : super(
            icon: Icons.shuffle,
            title: t.meta.systemProxy,
            tips: t.HomeScreen.systemProxyTips(
                hp: SettingManager.getConfig().proxy.mixedRulePort,
                sp: SettingManager.getConfig().proxy.mixedRulePort),
            text: t.meta.enable,
            getEnable: VPNService.getSystemProxyEnable,
            onPressed: (context) {
              onAfterPressed?.call();
            },
            onChanged: (context, value) async {
              await VPNService.setSystemProxy(value);
              final newValue = await VPNService.getSystemProxyEnable();
              if (value != newValue) {
                onValueChanged?.call(value);
              }
            });
  final Function()? onAfterPressed;
  final Function(bool value)? onValueChanged;
  @override
  State<SystemProxyCard> createState() => _SystemProxySwitchCardState();

  static bool supportedCurrentPlatfrom() {
    return [
      PlatformUtils.windows,
      PlatformUtils.macos,
      PlatformUtils.linux,
    ].contains(Platform.operatingSystem);
  }

  static String id() {
    return "system_proxy";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _SystemProxySwitchCardState
    extends FutureSwitchCardState<SystemProxyCard> {
  Timer? _timerChecker;
  @override
  void initState() {
    super.initState();
    if (Platform.isWindows) {
      createChecker();
      AppLifecycleStateNofity.onStateResumed(hashCode, _onStateResumed);
      AppLifecycleStateNofity.onStatePaused(hashCode, _onStatePaused);
    }
  }

  @override
  void dispose() {
    if (Platform.isWindows) {
      AppLifecycleStateNofity.onStateResumed(hashCode, null);
      AppLifecycleStateNofity.onStatePaused(hashCode, null);
    }
    destroyChecker();
    super.dispose();
  }

  Future<void> _onStateResumed() async {
    createChecker();
  }

  Future<void> _onStatePaused() async {
    destroyChecker();
  }

  void createChecker() {
    _timerChecker ??= Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (AppLifecycleStateNofity.isPaused()) {
        return;
      }

      bool systemProxyset = await VPNService.getSystemProxyEnable();
      if (systemProxyset != enabled) {
        enabled = systemProxyset;
        setState(() {});
      }
    });
  }

  void destroyChecker() {
    _timerChecker?.cancel();
    _timerChecker = null;
  }
}

class OutboundModeCard extends StatefulWidget {
  const OutboundModeCard({
    super.key,
    this.onChanged,
    this.focusNode,
  });

  final Function(Mode mode)? onChanged;
  final FocusNode? focusNode;
  @override
  State<OutboundModeCard> createState() => _OutboundModeCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "outbound_mode";
  }

  static int crossAxisCellCount() {
    return 8;
  }
}

class _OutboundModeCardState extends State<OutboundModeCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = getWidgetHeight(0.72);
    int alpha = SettingManager.getConfig().uiScreen.getWidgetAlpha();
    int thumbColorAlpha = alpha + 100;
    if (thumbColorAlpha > 255) {
      thumbColorAlpha = 255;
    }
    return SizedBox(
      height: height,
      child: CommonCard(
        alpha: SettingManager.getConfig().uiScreen.getWidgetAlpha(),
        padding: EdgeInsets.zero,
        focusNode: widget.focusNode,
        child: Consumer(
          builder: (_, ref, __) {
            final mode =
                SettingManager.getConfig().proxyAll ? Mode.global : Mode.rule;

            return Container(
              constraints: BoxConstraints.expand(),
              child: CommonTabBar<Mode>(
                children: Map.fromEntries(
                  Mode.values.map(
                    (item) => MapEntry(
                      item,
                      Container(
                        clipBehavior: Clip.antiAlias,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(),
                        height: height - 16,
                        child: Text(
                          getModeName(context, item),
                          style: theme.textTheme.titleSmall
                              ?.adjustSize(1)
                              .copyWith(
                                color: item == mode
                                    ? theme.colorScheme.onSecondaryContainer
                                    : null,
                              ),
                        ),
                      ),
                    ),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 8),
                groupValue: mode,
                onValueChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  final proxyAll = value == Mode.global;
                  if (proxyAll == SettingManager.getConfig().proxyAll) {
                    return;
                  }
                  SettingManager.getConfig().proxyAll = proxyAll;
                  SettingManager.saveConfig();
                  widget.onChanged?.call(value);
                  setState(() {});
                },
                thumbColor: theme.colorScheme.secondaryContainer
                    .withAlpha(thumbColorAlpha),
              ),
            );
          },
        ),
      ),
    );
  }

  String getModeName(BuildContext context, Mode mode) {
    final tcontext = Translations.of(context);
    return mode == Mode.global ? tcontext.meta.global : tcontext.meta.rule;
  }
}

class MyProfilesCard extends TextCard0 {
  MyProfilesCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.list_alt_outlined,
          title: t.meta.myProfiles,
        );

  @override
  State<MyProfilesCard> createState() => _MyProfilesCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "my_profiles";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _MyProfilesCardState extends TextCard0State<MyProfilesCard> {}

class AddProfileCard extends TextCard0 {
  AddProfileCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.add_outlined,
          title: t.meta.addProfile,
        );

  @override
  State<AddProfileCard> createState() => _AddProfileCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "add_profile";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _AddProfileCardState extends TextCard0State<AddProfileCard> {}

class PerAppCard extends TextCard0 {
  PerAppCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.merge_type_outlined,
          title: t.PerAppAndroidScreen.title,
        );

  @override
  State<PerAppCard> createState() => _PerAppCardState();

  static bool supportedCurrentPlatfrom() {
    return [
      PlatformUtils.android,
    ].contains(Platform.operatingSystem);
  }

  static String id() {
    return "perapp";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _PerAppCardState extends TextCard0State<PerAppCard> {}

class DNSCard extends TextCard0 {
  DNSCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.dns_outlined,
          title: t.meta.dns,
        );

  @override
  State<DNSCard> createState() => _DNSCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "dns";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _DNSCardState extends TextCard0State<DNSCard> {}

class DiversionCard extends TextCard0 {
  DiversionCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.alt_route_outlined,
          title: t.meta.diversion,
        );

  @override
  State<DiversionCard> createState() => _DiversionCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "diversion";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _DiversionCardState extends TextCard0State<DiversionCard> {}

class DiversionRulesCard extends TextCard0 {
  DiversionRulesCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.alt_route_outlined,
          title: t.meta.diversionRules,
        );

  @override
  State<DiversionRulesCard> createState() => _DiversionRulesCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "diversion_rules";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _DiversionRulesCardState extends TextCard0State<DiversionRulesCard> {}

class NetcheckCard extends TextCard0 {
  NetcheckCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.network_check_outlined,
          title: t.NetCheckScreen.title,
        );

  @override
  State<NetcheckCard> createState() => _NetcheckCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "net_check";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _NetcheckCardState extends TextCard0State<NetcheckCard> {}

class SpeedTestCard extends TextCard0 {
  SpeedTestCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.speed_outlined,
          title: t.SettingsScreen.speedTest,
        );

  @override
  State<SpeedTestCard> createState() => _SpeedTestCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "speed_test";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _SpeedTestCardState extends TextCard0State<SpeedTestCard> {}

class MyLinkCard extends TextCard0 {
  MyLinkCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.link_outlined,
          title: t.SettingsScreen.myLink,
        );

  @override
  State<MyLinkCard> createState() => _MyLinkCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "my_link";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _MyLinkCardState extends TextCard0State<MyLinkCard> {}

class AppleTVCard extends TextCard0 {
  AppleTVCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.live_tv_outlined,
          title: t.meta.appleTV,
        );

  @override
  State<AppleTVCard> createState() => _AppleTVCardState();

  static bool supportedCurrentPlatfrom() {
    return [
      PlatformUtils.ios,
      PlatformUtils.android,
    ].contains(Platform.operatingSystem);
  }

  static String id() {
    return "apple_tv";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _AppleTVCardState extends TextCard0State<AppleTVCard> {}

class HtmlBoardCard extends TextCard0 {
  HtmlBoardCard({
    super.key,
    super.onPressed,
    super.onLongPress,
  }) : super(
          icon: Icons.dashboard_outlined,
          title: t.SettingsScreen.htmlBoard,
        );

  @override
  State<HtmlBoardCard> createState() => _HtmlBoardCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "html_board";
  }

  static int crossAxisCellCount() {
    return 4;
  }
}

class _HtmlBoardCardState extends TextCard0State<HtmlBoardCard> {}

class ServerSelectCard extends StatefulWidget {
  const ServerSelectCard({
    super.key,
    required this.server,
    required this.serverUrltest,
    required this.onTap,
  });

  final ProxyConfig server;
  final CurrentServerForUrltest serverUrltest;
  final Function(bool hasProfile)? onTap;
  @override
  State<ServerSelectCard> createState() => _ServerSelectCardState();

  static bool supportedCurrentPlatfrom() {
    return true;
  }

  static String id() {
    return "server_select";
  }

  static int crossAxisCellCount() {
    return 8;
  }
}

class _ServerSelectCardState extends State<ServerSelectCard> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tcontext = Translations.of(context);
    var setting = SettingManager.getConfig();
    bool noConfig = ServerManager.getConfig().getServersCount(false) == 0;
    String text = "";
    String delay = widget.server.latency;
    String groupid = "";
    String tag = "";
    if (noConfig) {
      text = tcontext.meta.addProfile;
    } else {
      if (widget.server.groupid == ServerManager.getUrltestGroupId()) {
        text = tcontext.outboundRuleMode.urltest;
        if (widget.server.tag != kOutboundTagUrltest) {
          text += "[${widget.server.tag}]";
        }

        if (widget.serverUrltest.now.isNotEmpty) {
          text += "[${widget.serverUrltest.now}]";
          ProxyConfig? proxy =
              ServerManager.getConfig().getByTag(widget.serverUrltest.now);
          if (proxy != null) {
            tag = widget.serverUrltest.now;
            groupid = proxy.groupid;
          }
        } else {
          delay = "";
        }
      } else if (widget.server.groupid == ServerManager.getDirectGroupId()) {
        text = tcontext.outboundRuleMode.direct;
        tag = widget.server.tag;
        groupid = widget.server.groupid;
      } else if (widget.server.groupid == ServerManager.getBlockGroupId()) {
        text = tcontext.outboundRuleMode.block;
        tag = widget.server.tag;
        groupid = widget.server.groupid;
      } else {
        text = widget.server.tag;
        tag = widget.server.tag;
        groupid = widget.server.groupid;
      }
    }
    if (setting.originSBProfile.isNotEmpty) {
      text = path.basename(setting.originSBProfile);
      delay = "";
      tag = "";
      groupid = "";
    }

    Size windowSize = MediaQuery.of(context).size;
    int alpha = SettingManager.getConfig().uiScreen.getWidgetAlpha();
    return Material(
      color: theme.colorScheme.surfaceContainerLow.withAlpha(alpha),
      child: Tooltip(
        message: tcontext.ServerSelectScreen.title,
        child: InkWell(
          onTap: setting.originSBProfile.isNotEmpty
              ? null
              : () async {
                  widget.onTap?.call(!noConfig);
                },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            width: double.infinity,
            height: 60,
            child: Row(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: windowSize.width -
                                  10 * 2 -
                                  10 -
                                  CommonWidget.kLatencyWidget -
                                  25 -
                                  5,
                              height: 60,
                              child: Text(
                                text,
                                style: TextStyle(
                                  fontWeight:
                                      ThemeConfig.kFontWeightListSubItem,
                                  fontSize: ThemeConfig.kFontSizeListSubItem,
                                  fontFamily:
                                      Platform.isWindows ? 'Emoji' : null,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            CommonWidget.createLatencyWidget(
                              context,
                              null,
                              false,
                              false,
                              delay,
                              onTapLatencyReload: tag.isEmpty || groupid.isEmpty
                                  ? null
                                  : () async {
                                      bool ok =
                                          await Biz.startOrRestartIfDirtyVPN(
                                              context, "ServerSelectCard");
                                      if (!ok) {
                                        return;
                                      }

                                      ServerManager
                                              .testOutboundLatencyForServer(
                                                  tag, groupid)
                                          .then((err) {
                                        if (!mounted) {
                                          return;
                                        }
                                        setState(() {});
                                        if (err != null) {
                                          DialogUtils.showAlertDialog(
                                              context, err.message,
                                              showCopy: true,
                                              showFAQ: true,
                                              withVersion: true);
                                        }
                                      });
                                    },
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  width: 25,
                  child: setting.originSBProfile.isNotEmpty
                      ? null
                      : const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HomeWidgets {
  static List<String> getAllWidgetIds() {
    List<String> ids = [];

    if (RunTimeInfoCard.supportedCurrentPlatfrom()) {
      ids.add(RunTimeInfoCard.id());
    }
    if (ConnectionsInfoCard.supportedCurrentPlatfrom()) {
      ids.add(ConnectionsInfoCard.id());
    }
    if (TrafficTotalInfoCard.supportedCurrentPlatfrom()) {
      ids.add(TrafficTotalInfoCard.id());
    }
    if (TrafficProxyInfoCard.supportedCurrentPlatfrom()) {
      ids.add(TrafficProxyInfoCard.id());
    }
    if (TrafficSpeedInfoCard.supportedCurrentPlatfrom()) {
      ids.add(TrafficSpeedInfoCard.id());
    }
    if (MemoryInfoCard.supportedCurrentPlatfrom()) {
      ids.add(MemoryInfoCard.id());
    }
    if (ProfileSubTrafficInfoCard.supportedCurrentPlatfrom()) {
      ids.add(ProfileSubTrafficInfoCard.id());
    }
    if (OutboundModeCard.supportedCurrentPlatfrom()) {
      ids.add(OutboundModeCard.id());
    }
    if (TunCard.supportedCurrentPlatfrom()) {
      ids.add(TunCard.id());
    }
    if (SystemProxyCard.supportedCurrentPlatfrom()) {
      ids.add(SystemProxyCard.id());
    }
    if (MyProfilesCard.supportedCurrentPlatfrom()) {
      ids.add(MyProfilesCard.id());
    }
    if (AddProfileCard.supportedCurrentPlatfrom()) {
      ids.add(AddProfileCard.id());
    }
    if (PerAppCard.supportedCurrentPlatfrom()) {
      ids.add(PerAppCard.id());
    }
    if (DNSCard.supportedCurrentPlatfrom()) {
      ids.add(DNSCard.id());
    }
    if (DiversionCard.supportedCurrentPlatfrom()) {
      ids.add(DiversionCard.id());
    }
    if (DiversionRulesCard.supportedCurrentPlatfrom()) {
      ids.add(DiversionRulesCard.id());
    }
    if (NetcheckCard.supportedCurrentPlatfrom()) {
      ids.add(NetcheckCard.id());
    }
    if (SpeedTestCard.supportedCurrentPlatfrom()) {
      ids.add(SpeedTestCard.id());
    }
    if (MyLinkCard.supportedCurrentPlatfrom()) {
      ids.add(MyLinkCard.id());
    }
    if (AppleTVCard.supportedCurrentPlatfrom()) {
      ids.add(AppleTVCard.id());
    }
    if (HtmlBoardCard.supportedCurrentPlatfrom()) {
      ids.add(HtmlBoardCard.id());
    }

    return ids;
  }

  static String getWidgetNameById(BuildContext context, String id) {
    if (RunTimeInfoCard.id() == id) {
      return t.meta.runDuration;
    }
    if (ConnectionsInfoCard.id() == id) {
      return t.NetConnectionsScreen.title;
    }
    if (TrafficTotalInfoCard.id() == id) {
      return t.meta.trafficTotal;
    }
    if (TrafficProxyInfoCard.id() == id) {
      return t.meta.trafficProxy;
    }
    if (TrafficSpeedInfoCard.id() == id) {
      return t.meta.netSpeed;
    }
    if (MemoryInfoCard.id() == id) {
      return t.meta.memory;
    }
    if (ProfileSubTrafficInfoCard.id() == id) {
      return t.meta.currentProfile;
    }
    if (OutboundModeCard.id() == id) {
      return t.meta.outboundMode;
    }
    if (TunCard.id() == id) {
      return "TUN";
    }
    if (SystemProxyCard.id() == id) {
      return t.meta.systemProxy;
    }
    if (MyProfilesCard.id() == id) {
      return t.meta.myProfiles;
    }
    if (AddProfileCard.id() == id) {
      return t.meta.addProfile;
    }
    if (PerAppCard.id() == id) {
      return t.PerAppAndroidScreen.title;
    }
    if (DNSCard.id() == id) {
      return t.meta.dns;
    }
    if (DiversionCard.id() == id) {
      return t.meta.diversion;
    }
    if (DiversionRulesCard.id() == id) {
      return t.meta.diversionRules;
    }
    if (NetcheckCard.id() == id) {
      return t.NetCheckScreen.title;
    }
    if (SpeedTestCard.id() == id) {
      return t.SettingsScreen.speedTest;
    }
    if (MyLinkCard.id() == id) {
      return t.SettingsScreen.myLink;
    }
    if (AppleTVCard.id() == id) {
      return t.meta.appleTV;
    }
    if (HtmlBoardCard.id() == id) {
      return t.SettingsScreen.htmlBoard;
    }
    return "";
  }

  static List<String> getDefaultWidgetIds() {
    List<String> ids = [];

    if (RunTimeInfoCard.supportedCurrentPlatfrom()) {
      ids.add(RunTimeInfoCard.id());
    }
    if (ConnectionsInfoCard.supportedCurrentPlatfrom()) {
      ids.add(ConnectionsInfoCard.id());
    }
    if (TrafficTotalInfoCard.supportedCurrentPlatfrom()) {
      ids.add(TrafficTotalInfoCard.id());
    }
    if (TrafficSpeedInfoCard.supportedCurrentPlatfrom()) {
      ids.add(TrafficSpeedInfoCard.id());
    }
    if (ProfileSubTrafficInfoCard.supportedCurrentPlatfrom()) {
      ids.add(ProfileSubTrafficInfoCard.id());
    }
    if (OutboundModeCard.supportedCurrentPlatfrom()) {
      ids.add(OutboundModeCard.id());
    }
    /*if (TunCard.supportedCurrentPlatfrom()) {
    ids.add(TunCard.id());
  }*/
    if (SystemProxyCard.supportedCurrentPlatfrom()) {
      ids.add(SystemProxyCard.id());
    }
    if (MyProfilesCard.supportedCurrentPlatfrom()) {
      ids.add(MyProfilesCard.id());
    }
    if (AddProfileCard.supportedCurrentPlatfrom()) {
      ids.add(AddProfileCard.id());
    }
    if (PerAppCard.supportedCurrentPlatfrom()) {
      ids.add(PerAppCard.id());
    }
    if (DNSCard.supportedCurrentPlatfrom()) {
      ids.add(DNSCard.id());
    }
    if (DiversionCard.supportedCurrentPlatfrom()) {
      ids.add(DiversionCard.id());
    }
    if (DiversionRulesCard.supportedCurrentPlatfrom()) {
      ids.add(DiversionRulesCard.id());
    }
    if (NetcheckCard.supportedCurrentPlatfrom()) {
      ids.add(NetcheckCard.id());
    }
    if (SpeedTestCard.supportedCurrentPlatfrom()) {
      ids.add(SpeedTestCard.id());
    }
    if (MyLinkCard.supportedCurrentPlatfrom()) {
      ids.add(MyLinkCard.id());
    }
    if (AppleTVCard.supportedCurrentPlatfrom()) {
      ids.add(AppleTVCard.id());
    }

    return ids;
  }

  static List<String> getDefaultAppleTVWidgetIds() {
    List<String> ids = [];

    if (RunTimeInfoCard.supportedCurrentPlatfrom()) {
      ids.add(RunTimeInfoCard.id());
    }
    if (ConnectionsInfoCard.supportedCurrentPlatfrom()) {
      ids.add(ConnectionsInfoCard.id());
    }
    if (TrafficTotalInfoCard.supportedCurrentPlatfrom()) {
      ids.add(TrafficTotalInfoCard.id());
    }
    if (TrafficProxyInfoCard.supportedCurrentPlatfrom()) {
      ids.add(TrafficProxyInfoCard.id());
    }
    if (TrafficSpeedInfoCard.supportedCurrentPlatfrom()) {
      ids.add(TrafficSpeedInfoCard.id());
    }

    return ids;
  }

  static GridItem? createWidget(String id, HomeWidgetOptions options) {
    if (RunTimeInfoCard.id() == id &&
        options.runtimeInfo != null &&
        RunTimeInfoCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: RunTimeInfoCard.crossAxisCellCount(),
          id: id,
          child: RunTimeInfoCard(
            notifier: options.runtimeInfo!.notifier,
            onPressed: options.runtimeInfo!.onPressed,
            onLongPress: options.runtimeInfo!.onLongPress,
          ));
    }
    if (MemoryInfoCard.id() == id &&
        options.memoryInfo != null &&
        MemoryInfoCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: MemoryInfoCard.crossAxisCellCount(),
          id: id,
          child: MemoryInfoCard(
            notifier: options.memoryInfo!.notifier,
            onPressed: options.memoryInfo!.onPressed,
            onLongPress: options.memoryInfo!.onLongPress,
          ));
    }
    if (ConnectionsInfoCard.id() == id &&
        options.connectionsInfo != null &&
        ConnectionsInfoCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: ConnectionsInfoCard.crossAxisCellCount(),
          id: id,
          child: ConnectionsInfoCard(
            notifier: options.connectionsInfo!.notifier,
            onPressed: options.connectionsInfo!.onPressed,
            onLongPress: options.connectionsInfo!.onLongPress,
          ));
    }

    if (TrafficTotalInfoCard.id() == id &&
        options.trafficTotalInfo != null &&
        TrafficTotalInfoCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: TrafficTotalInfoCard.crossAxisCellCount(),
          id: id,
          child: TrafficTotalInfoCard(
            notifier: options.trafficTotalInfo!.notifier,
            notifier2: options.trafficTotalInfo!.notifier2,
            onPressed: options.trafficTotalInfo!.onPressed,
            onLongPress: options.trafficTotalInfo!.onLongPress,
          ));
    }
    if (TrafficProxyInfoCard.id() == id &&
        options.trafficProxyInfo != null &&
        TrafficProxyInfoCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: TrafficProxyInfoCard.crossAxisCellCount(),
          id: id,
          child: TrafficProxyInfoCard(
            notifier: options.trafficProxyInfo!.notifier,
            notifier2: options.trafficProxyInfo!.notifier2,
            onPressed: options.trafficProxyInfo!.onPressed,
            onLongPress: options.trafficProxyInfo!.onLongPress,
          ));
    }
    if (TrafficSpeedInfoCard.id() == id &&
        options.trafficSpeedInfo != null &&
        TrafficSpeedInfoCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: TrafficSpeedInfoCard.crossAxisCellCount(),
          id: id,
          child: TrafficSpeedInfoCard(
            notifier: options.trafficSpeedInfo!.notifier,
            notifier2: options.trafficSpeedInfo!.notifier2,
            onPressed: options.trafficSpeedInfo!.onPressed,
            onLongPress: options.trafficSpeedInfo!.onLongPress,
          ));
    }
    if (ProfileSubTrafficInfoCard.id() == id &&
        options.profileSubTraffic != null &&
        ProfileSubTrafficInfoCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: ProfileSubTrafficInfoCard.crossAxisCellCount(),
          id: id,
          child: ProfileSubTrafficInfoCard(
            groupidNotifier: options.profileSubTraffic!.notifier,
          ));
    }
    if (OutboundModeCard.id() == id &&
        options.outboundMode != null &&
        OutboundModeCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: OutboundModeCard.crossAxisCellCount(),
          id: id,
          child: OutboundModeCard(
            onChanged: options.outboundMode!.onChanged,
          ));
    }

    if (TunCard.id() == id &&
        options.tun != null &&
        TunCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: TunCard.crossAxisCellCount(),
          id: id,
          child: TunCard(
            onAfterPressed: options.tun!.onAfterPressed,
            onValueChanged: options.tun!.onChanged,
          ));
    }
    if (SystemProxyCard.id() == id &&
        options.systemProxy != null &&
        SystemProxyCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: SystemProxyCard.crossAxisCellCount(),
          id: id,
          child: SystemProxyCard(
              onAfterPressed: options.systemProxy!.onAfterPressed,
              onValueChanged: options.systemProxy!.onChanged));
    }
    if (MyProfilesCard.id() == id &&
        options.myProfiles != null &&
        MyProfilesCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: MyProfilesCard.crossAxisCellCount(),
          id: id,
          child: MyProfilesCard(
            onPressed: options.myProfiles!.onPressed,
            onLongPress: options.myProfiles!.onLongPress,
          ));
    }
    if (AddProfileCard.id() == id &&
        options.addProfile != null &&
        AddProfileCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: AddProfileCard.crossAxisCellCount(),
          id: id,
          child: AddProfileCard(
            onPressed: options.addProfile!.onPressed,
            onLongPress: options.addProfile!.onLongPress,
          ));
    }
    if (PerAppCard.id() == id &&
        options.perapp != null &&
        PerAppCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: PerAppCard.crossAxisCellCount(),
          id: id,
          child: PerAppCard(
            onPressed: options.perapp!.onPressed,
            onLongPress: options.perapp!.onLongPress,
          ));
    }
    if (DNSCard.id() == id &&
        options.dns != null &&
        DNSCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: DNSCard.crossAxisCellCount(),
          id: id,
          child: DNSCard(
            onPressed: options.dns!.onPressed,
            onLongPress: options.dns!.onLongPress,
          ));
    }
    if (DiversionCard.id() == id &&
        options.diversion != null &&
        DiversionCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: DiversionCard.crossAxisCellCount(),
          id: id,
          child: DiversionCard(
            onPressed: options.diversion!.onPressed,
            onLongPress: options.diversion!.onLongPress,
          ));
    }
    if (DiversionRulesCard.id() == id &&
        options.diversionRules != null &&
        DiversionRulesCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: DiversionRulesCard.crossAxisCellCount(),
          id: id,
          child: DiversionRulesCard(
            onPressed: options.diversionRules!.onPressed,
            onLongPress: options.diversionRules!.onLongPress,
          ));
    }
    if (NetcheckCard.id() == id &&
        options.netCheck != null &&
        NetcheckCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: NetcheckCard.crossAxisCellCount(),
          id: id,
          child: NetcheckCard(
            onPressed: options.netCheck!.onPressed,
            onLongPress: options.netCheck!.onLongPress,
          ));
    }
    if (SpeedTestCard.id() == id &&
        options.speedtest != null &&
        SpeedTestCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: SpeedTestCard.crossAxisCellCount(),
          id: id,
          child: SpeedTestCard(
            onPressed: options.speedtest!.onPressed,
            onLongPress: options.speedtest!.onLongPress,
          ));
    }
    if (MyLinkCard.id() == id &&
        options.myLink != null &&
        MyLinkCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: MyLinkCard.crossAxisCellCount(),
          id: id,
          child: MyLinkCard(
            onPressed: options.myLink!.onPressed,
            onLongPress: options.myLink!.onLongPress,
          ));
    }
    if (AppleTVCard.id() == id &&
        options.appleTv != null &&
        AppleTVCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: AppleTVCard.crossAxisCellCount(),
          id: id,
          child: AppleTVCard(
            onPressed: options.appleTv!.onPressed,
            onLongPress: options.appleTv!.onLongPress,
          ));
    }
    if (HtmlBoardCard.id() == id &&
        options.htmlBoard != null &&
        HtmlBoardCard.supportedCurrentPlatfrom()) {
      return GridItem(
          crossAxisCellCount: HtmlBoardCard.crossAxisCellCount(),
          id: id,
          child: HtmlBoardCard(
            onPressed: options.htmlBoard!.onPressed,
            onLongPress: options.htmlBoard!.onLongPress,
          ));
    }
    return null;
  }

  static List<GridItem> getWidgets(HomeWidgetOptions options) {
    final widgets = SettingManager.getConfig().uiScreen.widgets;
    final widgetIds = widgets.isEmpty ? getDefaultWidgetIds() : widgets;
    List<GridItem> items = [];
    for (var id in widgetIds) {
      final item = createWidget(id, options);
      if (item != null) {
        items.add(item);
      }
    }

    return items;
  }

  static List<GridItem> getAppleTVWidgets(HomeWidgetOptions options) {
    final widgetIds = getDefaultAppleTVWidgetIds();
    List<GridItem> items = [];
    for (var id in widgetIds) {
      final item = createWidget(id, options);
      if (item != null) {
        items.add(item);
      }
    }

    return items;
  }
}
