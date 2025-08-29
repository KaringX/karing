// ignore_for_file: use_build_context_synchronously, empty_catches

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:contextmenu/contextmenu.dart';
import 'package:flutter/material.dart';
import 'package:karing/app/extension/colors.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/date_time_utils.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/ruleset_codes_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/singbox_outbound.dart';
import 'package:karing/app/utils/windows_version_helper.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/common_widget.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/file_view_screen.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/group_screen.dart';
import 'package:karing/screens/listview_multi_parts_builder.dart';
import 'package:karing/screens/my_profiles_edit_screen.dart';
import 'package:karing/screens/my_profiles_merge_screen.dart';
import 'package:karing/screens/my_profiles_reorder_screen.dart';
import 'package:karing/screens/qrcode_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/sheet.dart';
import 'package:path/path.dart' as path;
import 'package:share_plus/share_plus.dart';
import 'package:tuple/tuple.dart';

class MyProfilesScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "MyProfilesScreen");
  }

  const MyProfilesScreen({super.key});

  @override
  State<MyProfilesScreen> createState() => MyProfilesScreenState();
}

class MyProfilesScreenState extends LasyRenderingState<MyProfilesScreen> {
  static final Set<String> _expandGroup = {};
  final List<ListViewMultiPartsItem> _listViewParts = [];
  TapDownDetails _tapDownDetails = TapDownDetails();

  Timer? _timer;
  bool _rePaint = false;
  @override
  void initState() {
    ServerConfigGroupItem item = ServerManager.getCustomGroup();
    item.remark = t.meta.custom;

    ServerDiversionGroupItem? itemDiversion =
        ServerManager.getDiversionCustomGroup();

    itemDiversion.remark = t.meta.custom;

    _buildData();

    ServerManager.onEventTestLatency(hashCode,
        (String groupid, String tag, bool start, bool finish) {
      if (!mounted) {
        return;
      }
      if (start || finish) {
        _buildData();
      }

      _rePaint = true;
    });
    ServerManager.onLatencyHistoryUpdated(hashCode, () {
      if (!mounted) {
        return;
      }

      _buildData();
      setState(() {});
    });
    ServerManager.onEventAddConfig(hashCode,
        (ServerConfigGroupItem item) async {
      if (!mounted) {
        return;
      }
      _buildData();
      setState(() {});
    });
    ServerManager.onEventUpdateConfig(hashCode,
        (List<ServerConfigGroupItem> groups) async {
      if (!mounted) {
        return;
      }
      _buildData();
      setState(() {});
    });
    ServerManager.onEventRemoveConfig(hashCode,
        (String groupid, bool enable, bool hasDeviersionGroup) async {
      if (!mounted) {
        return;
      }
      _buildData();
      setState(() {});
    });
    _timer ??= Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (_rePaint) {
        _rePaint = false;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _listViewParts.clear();
    _timer?.cancel();
    _timer = null;
    ServerManager.removeListener(hashCode);

    super.dispose();
    ServerManager.saveServerConfig();
    ServerManager.saveDiversionGroupConfig();
    ServerManager.saveUse();
  }

  Future<bool> startVPN() async {
    return await Biz.startOrRestartIfDirtyVPN(context, "MyProfilesScreen");
  }

  void _buildData() {
    _listViewParts.clear();
    for (var group in ServerManager.getConfig().items) {
      if (group.groupid == ServerManager.getCustomGroupId()) {
        continue;
      }
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.data = group;
      item.creator = (data, index, bindNO) {
        return createGroupProfile(group);
      };
      _listViewParts.add(item);

      if (!_expandGroup.contains(group.groupid)) {
        continue;
      }
      /*Set<String> detours = {};
      for (int i = 0; i < group.servers.length; ++i) {
        String? detour = group.servers[i].raw["detour"];
        if (detour != null && detour.isNotEmpty) {
          detours.add(detour);
        }
      }*/

      List<ProxyConfig> servers = [];
      if (group.testLatency.isNotEmpty) {
        servers = group.servers;
      } else {
        List<ProxyConfig> serversLatency = [];
        List<ProxyConfig> serversLatencyEmpty = [];
        List<ProxyConfig> serversLatencyError = [];
        for (int i = 0; i < group.servers.length; ++i) {
          var server = group.servers[i];
          //if (detours.contains(server.tag)) {
          //  continue;
          //}
          if (SettingManager.getConfig().uiScreen.hideInvalidServerMyProfiles) {
            if (server.latency.isNotEmpty) {
              int? value = int.tryParse(group.servers[i].latency);
              if (value == null) {
                continue;
              }
            }
          }
          if (SettingManager.getConfig().uiScreen.sortServerMyProfiles) {
            if (server.latency.isEmpty) {
              serversLatencyEmpty.add(server);
            } else {
              if (null == int.tryParse(server.latency)) {
                serversLatencyError.add(server);
              } else {
                serversLatency.add(server);
              }
            }
          } else {
            servers.add(server);
          }
        }
        if (SettingManager.getConfig().uiScreen.sortServerMyProfiles) {
          serversLatency.sort((a, b) {
            return int.parse(a.latency) - int.parse(b.latency);
          });
          servers.addAll(serversLatency);
          servers.addAll(serversLatencyEmpty);
          servers.addAll(serversLatencyError);
        }
      }
      int count = 1;
      for (int i = 0; i < servers.length; ++i) {
        ListViewMultiPartsItem item = ListViewMultiPartsItem();
        item.bindNO = count++;
        item.data = servers[i];
        item.creator = (data, index, bindNO) {
          return createServer(data, bindNO!);
        };
        _listViewParts.add(item);
      }
    }
  }

  Row createGroupTitle(ServerConfigGroupItem item) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    const double leftWidth = 5;
    const double rightWidth = 40 + 15 + 26 + 15;

    double centerWidth = windowSize.width - leftWidth - rightWidth;
    return Row(
      children: [
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          height: 40,
          width: centerWidth,
          child: InkWell(
              onTap: () async {
                onTapGroupTitle(item.groupid);
              },
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                    ),
                    child: Text(
                      item.getTypeShort(),
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 10,
                      ),
                    ),
                  ),
                  Icon(
                    _expandGroup.contains(item.groupid)
                        ? Icons.keyboard_arrow_up_outlined
                        : Icons.keyboard_arrow_down_outlined,
                    size: 26,
                  ),
                  SizedBox(
                    width: centerWidth - 2 * 2 - 15 - 26 - 2,
                    child: Tooltip(
                      message: "${item.remark}[${item.servers.length}]",
                      child: Text(
                        "${item.remark}[${item.servers.length}]",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: ThemeConfig.kFontSizeListItem,
                          fontWeight: ThemeConfig.kFontWeightListItem,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
        const Spacer(),
        SizedBox(
          width: 40,
          child: FittedBox(
            fit: BoxFit.fill,
            child: Tooltip(
                message:
                    item.enable ? tcontext.meta.enable : tcontext.meta.disable,
                child: Switch.adaptive(
                  value: item.enable,
                  activeColor: ThemeDefine.kColorGreenBright,
                  onChanged: (bool newValue) async {
                    await onChangedGroup(item.groupid, newValue);
                  },
                )),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        item.groupid != ServerManager.getCustomGroupId()
            ? Tooltip(
                message: tcontext.meta.remove,
                child: InkWell(
                  onTap: () async {
                    bool? del = await DialogUtils.showConfirmDialog(
                        context, tcontext.meta.removeConfirm);
                    if (del == true) {
                      ServerManager.removeGroup(item.groupid, true);
                      if (item.enable) {
                        ServerManager.setDirty(true);
                      }

                      _buildData();
                      setState(() {});
                    }
                  },
                  child: const Icon(Icons.remove_circle_outlined,
                      size: 26, color: Colors.red),
                ))
            : const SizedBox(
                width: 26,
              ),
        const SizedBox(
          width: 15,
        ),
      ],
    );
  }

  Row createGroupFunction(ServerConfigGroupItem item) {
    int count =
        ServerManager.getTestOutboundServerLatencyTestingCount(item.groupid) +
            item.testLatency.length;
    final tcontext = Translations.of(context);
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      const SizedBox(
        width: 10,
      ),
      if (item.isRemote()) ...[
        Row(
          children: [
            Tooltip(
              message: tcontext.meta.update,
              child: InkWell(
                  onTap: () async {
                    ServerManager.reload(item.groupid).then((value) {
                      if (!mounted) {
                        return;
                      }
                      if (value != null) {
                        DialogUtils.showAlertDialog(context,
                            tcontext.meta.updateFailed(p: value.message),
                            showCopy: true, showFAQ: true, withVersion: true);
                      }
                      if (!mounted) {
                        return;
                      }
                      _buildData();
                      setState(() {});
                    });
                    setState(() {});
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.access_time_outlined,
                          size: 26,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          DateTimeUtils.dateTimeToDate(item.updateTime),
                          style: const TextStyle(
                            fontSize: ThemeConfig.kFontSizeListSubItem,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        ServerManager.isReloading(item.groupid)
                            ? const SizedBox(
                                height: 26,
                                width: 26,
                                child: RepaintBoundary(
                                  child:
                                      CircularProgressIndicator(strokeWidth: 2),
                                ),
                              )
                            : const Icon(
                                Icons.cloud_download_outlined,
                                size: 26,
                              ),
                      ])),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        Row(children: [
          Tooltip(
              message: tcontext.meta.qrcode,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          settings: QrcodeScreen.routSettings(),
                          builder: (context) =>
                              QrcodeScreen(content: item.urlOrPath)));
                },
                child: const Icon(
                  Icons.qr_code_scanner_outlined,
                  size: 26,
                ),
              )),
          const SizedBox(
            width: 10,
          )
        ])
      ],
      if (!item.isRemote()) ...[
        Row(children: [
          Tooltip(
              message: tcontext.meta.add,
              child: InkWell(
                onTap: () {
                  onTapAdd(item);
                },
                child: const Icon(
                  Icons.add_outlined,
                  size: 26,
                ),
              )),
          const SizedBox(
            width: 10,
          )
        ])
      ],
      if (!Platform.isWindows ||
          (Platform.isWindows &&
              VersionHelper.instance.isWindows10RS5OrGreater)) ...[
        Row(children: [
          Tooltip(
              message: tcontext.meta.share,
              child: InkWell(
                onTap: () {
                  onTapShare(item);
                },
                child: const Icon(
                  Icons.share_outlined,
                  size: 26,
                ),
              )),
          const SizedBox(
            width: 10,
          )
        ])
      ],
      if (item.groupid != ServerManager.getCustomGroupId()) ...[
        Row(children: [
          Tooltip(
              message: tcontext.meta.edit,
              child: InkWell(
                onTap: () async {
                  onTapEdit(item);
                },
                child: const Icon(Icons.edit_outlined, size: 26),
              )),
          const SizedBox(
            width: 10,
          ),
        ])
      ],
      ServerManager.isTestLatency(item.groupid)
          ? Stack(
              children: [
                const SizedBox(
                  height: 26,
                  width: 26,
                  child: RepaintBoundary(
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 6,
                  height: 20,
                  width: 26,
                  child: Text(
                    count.toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: count > 999 ? 8 : 10,
                    ),
                  ),
                )
              ],
            )
          : Tooltip(
              message: tcontext.meta.latencyTest,
              child: InkWell(
                onTap: () async {
                  bool ok = await startVPN();
                  if (!ok) {
                    return;
                  }
                  ServerManager.testOutboundLatencyForGroup(item.groupid)
                      .then((err) {
                    if (err != null) {
                      if (mounted) {
                        setState(() {});

                        DialogUtils.showAlertDialog(context, err.message,
                            showCopy: true, showFAQ: true, withVersion: true);
                      }
                    }
                  });
                },
                child: item.enable
                    ? const Icon(
                        Icons.bolt_outlined,
                        size: 26,
                      )
                    : const SizedBox.shrink(),
              )),
    ]);
  }

  Column createGroupProfile(ServerConfigGroupItem item) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    return Column(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 5,
          ),
          createGroupTitle(item),
          createGroupFunction(item),
          const SizedBox(
            height: 5,
          ),
          CommonWidget.createGroupTraffic(
            context,
            item.groupid,
            false,
            item.traffic,
            10,
            MainAxisAlignment.start,
            windowSize.width,
            (String groupId) {
              setState(() {});
            },
            (String groupId, ReturnResult<SubscriptionTraffic> value) {
              if (!mounted) {
                return;
              }
              setState(() {});
              if (value.error != null) {
                if (value.error!.message.contains("405")) {
                  ServerManager.reload(item.groupid).then((value) {
                    if (item.enable && item.reloadAfterProfileUpdate) {
                      ServerManager.setDirty(true);
                    }
                    if (!mounted) {
                      return;
                    }
                    setState(() {});
                    if (value != null) {
                      DialogUtils.showAlertDialog(
                          context, tcontext.meta.updateFailed(p: value.message),
                          showCopy: true, showFAQ: true, withVersion: true);
                    }
                  });
                } else {
                  DialogUtils.showAlertDialog(context,
                      tcontext.meta.updateFailed(p: value.error!.message),
                      showCopy: true, showFAQ: true, withVersion: true);
                }
              }
            },
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
    ]);
  }

  Widget createServer(ProxyConfig server, int index) {
    String disableKey = ServerUse.getDisableKey(server);
    bool disabled = ServerManager.getUse().disable.contains(disableKey);
    ServerConfigGroupItem? item = ServerManager.getByGroupId(server.groupid);
    bool isTesting = ServerManager.isTestOutboundServerLatencying(server.tag);
    bool isWaitTesting =
        (item != null && item.testLatency.contains(server.tag));
    Size windowSize = MediaQuery.of(context).size;
    const double padding = 10;
    const double leftWidth = 30.0;
    const double rightWidth = 135.0;

    double centerWidth =
        windowSize.width - leftWidth - rightWidth - padding * 2;
    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: ContextMenuArea(
        builder: (context) =>
            getLongPressServerWidgets(server, isTesting, isWaitTesting, true),
        child: InkWell(
          onTapDown: (details) {
            _tapDownDetails = details;
          },
          onLongPress: () async {
            onLongPressServer(server, isTesting, isWaitTesting);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: padding,
            ),
            width: double.infinity,
            height: ThemeConfig.kListItemHeight,
            color: disabled ? Colors.grey : null,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: leftWidth,
                          child: Text(
                            index.toString(),
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: server.attach.isEmpty
                              ? centerWidth
                              : centerWidth - 30,
                          child: Text(
                            server.tag,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: ThemeConfig.kFontSizeListSubItem,
                              fontFamily: Platform.isWindows ? 'Emoji' : null,
                            ),
                          ),
                        ),
                        server.attach.isEmpty
                            ? const SizedBox.shrink()
                            : SizedBox(
                                width: 30,
                                child: Text(
                                  server.attach,
                                  style: const TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                        Container(
                          alignment: Alignment.centerRight,
                          width: rightWidth,
                          child: Row(children: [
                            const SizedBox(
                              width: 5,
                            ),
                            /*InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                     settings: QrcodeScreen.routSettings(),
                                    builder: (context) =>
                                        QrcodeScreen(content: "todo")));
                          },
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.whitewithValues(alpha: 0.8),
                            ),
                            child: const Icon(Icons.qr_code_scanner_outlined,
                                size: 20, color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),*/
                            SizedBox(
                              height: ThemeConfig.kListItemHeight,
                              child: InkWell(
                                onTap: () {
                                  ServerManager.toggleFav(server);
                                  if (SettingManager.getConfig()
                                      .autoSelect
                                      .prioritizeMyFav) {
                                    ServerManager.setDirty(true);
                                  }
                                  setState(() {});
                                },
                                child: Row(children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.orange),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color:
                                            Colors.white.withValues(alpha: 0.8),
                                      ),
                                      child: Icon(
                                        Icons.star_outlined,
                                        size: 20,
                                        color: ServerManager.getUse()
                                                .fav
                                                .contains(server)
                                            ? Colors.orange
                                            : Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  SizedBox(
                                    width: 45,
                                    child: Text(
                                      server.getShowType(),
                                      style: const TextStyle(
                                        fontSize:
                                            ThemeConfig.kFontSizeListSubItem,
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            const SizedBox(
                              width: 2,
                            ),
                            CommonWidget.createLatencyWidget(
                              context,
                              ThemeConfig.kListItemHeight,
                              isTesting | isWaitTesting,
                              isTesting,
                              server.latency,
                              onTapLatencyReload: () async {
                                if (!await startVPN()) {
                                  return;
                                }
                                ServerManager.testOutboundLatencyForServer(
                                        server.tag, server.groupid)
                                    .then((err) {
                                  if (err != null) {
                                    if (mounted) {
                                      setState(() {});

                                      DialogUtils.showAlertDialog(
                                          context, err.message,
                                          showCopy: true,
                                          showFAQ: true,
                                          withVersion: true);
                                    }
                                  }
                                });
                              },
                            )
                          ]),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.zero,
        child: AppBar(),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: const SizedBox(
                        width: 50,
                        height: 30,
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          size: 26,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        onTapExpandAllGroup();
                      },
                      child: Row(children: [
                        Icon(
                          _expandGroup.isNotEmpty
                              ? Icons.keyboard_double_arrow_up_outlined
                              : Icons.keyboard_double_arrow_down_outlined,
                          size: 26,
                        ),
                        SizedBox(
                          width: windowSize.width - 50 * 3 - 26,
                          child: Text(
                            tcontext.meta.myProfiles,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontWeight: ThemeConfig.kFontWeightTitle,
                                fontSize: ThemeConfig.kFontSizeTitle),
                          ),
                        ),
                      ]),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Tooltip(
                              message: tcontext.meta.latencyTest,
                              child: InkWell(
                                onTap: () async {
                                  onTapTestOutboundLatencyAll();
                                },
                                child: const SizedBox(
                                    width: 50,
                                    height: 30,
                                    child: Icon(
                                      Icons.bolt_outlined,
                                      size: 30,
                                    )),
                              )),
                          Tooltip(
                              message: tcontext.meta.more,
                              child: InkWell(
                                onTap: () async {
                                  onTapMore();
                                },
                                child: const SizedBox(
                                  width: 50,
                                  height: 30,
                                  child: Icon(
                                    Icons.more_vert_outlined,
                                    size: 30,
                                  ),
                                ),
                              )),
                        ])
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListViewMultiPartsBuilder.build(_listViewParts),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapExpandAllGroup() {
    if (_expandGroup.isNotEmpty) {
      _expandGroup.clear();
    } else {
      for (var item in ServerManager.getConfig().items) {
        if (item.groupid == ServerManager.getCustomGroupId()) {
          continue;
        }
        _expandGroup.add(item.groupid);
      }
    }

    _buildData();
    setState(() {});
  }

  List<Widget> getLongPressServerWidgets(ProxyConfig server, bool isTesting,
      bool isWaitTesting, bool insertBlackspace) {
    if (!mounted) {
      return [];
    }
    ServerConfigGroupItem? item = ServerManager.getByGroupId(server.groupid);
    if (item == null) {
      return [];
    }
    final tcontext = Translations.of(context);
    String disableKey = ServerUse.getDisableKey(server);
    bool disabled = ServerManager.getUse().disable.contains(disableKey);
    String msg = disabled ? tcontext.meta.enable : tcontext.meta.disable;
    msg += "[${server.type};${server.server};${server.serverport}]";

    var widgets = [
      ListTile(
        title: Text(
          insertBlackspace ? "  $msg" : msg,
        ),
        onTap: () async {
          Navigator.pop(context);
          var use = ServerManager.getUse();
          if (disabled) {
            use.disable.remove(disableKey);
          } else {
            use.disable.add(disableKey);
          }
          if (item.enable) {
            ServerManager.setDirty(true);
          }

          setState(() {});
        },
      ),
      ListTile(
        title: Text(insertBlackspace
            ? "  ${tcontext.meta.share}"
            : tcontext.meta.share),
        onTap: () async {
          Navigator.pop(context);
          const JsonEncoder encoder = JsonEncoder.withIndent('');
          String configContent =
              encoder.convert(SingboxConfigBuilder.buildOutbound(server));
          Codec<String, String> stringToBase64 = utf8.fuse(base64);
          String b64 = stringToBase64.encode("[$configContent]");
          Navigator.push(
              context,
              MaterialPageRoute(
                  settings: QrcodeScreen.routSettings(),
                  builder: (context) => QrcodeScreen(
                      content:
                          "ulink://install/?content=${Uri.encodeComponent(b64)}&format=json#${Uri.encodeComponent(server.tag)}")));
        },
      ),
      ListTile(
        title: Text(
            insertBlackspace ? "  ${tcontext.meta.view}" : tcontext.meta.view),
        onTap: () async {
          Navigator.pop(context);
          const JsonEncoder encoder = JsonEncoder.withIndent('  ');
          String content = server.raw != null
              ? encoder.convert(server.raw)
              : encoder.convert(SingboxConfigBuilder.buildOutbound(server));
          Navigator.push(
              context,
              MaterialPageRoute(
                  settings: FileViewScreen.routSettings(),
                  builder: (context) =>
                      FileViewScreen(title: server.tag, content: content)));
        },
      ),
      if (!isTesting &&
          !isWaitTesting &&
          item.testLatency.isEmpty &&
          item.testLatencyIndepends.isEmpty) ...[
        ListTile(
          title: Text(insertBlackspace
              ? "  ${tcontext.meta.remove}"
              : tcontext.meta.remove),
          onTap: () async {
            Navigator.pop(context);
            for (int i = 0; i < item.servers.length; ++i) {
              if (item.servers[i].tag == server.tag) {
                item.servers.removeAt(i);
                if (item.enable) {
                  ServerManager.setDirty(true);
                }
                if (item.isRemote() &&
                    !item.proxyFilterRemove.contains(server.tag)) {
                  item.proxyFilterRemove.add(server.tag);
                }
                _buildData();
                setState(() {});
                break;
              }
            }
          },
        ),
      ],
      if (!SettingManager.getConfig().novice) ...[
        ListTile(
          title: Text(insertBlackspace
              ? "  ${tcontext.meta.edit}"
              : tcontext.meta.edit),
          onTap: () async {
            Navigator.pop(context);
            onTapEditServer(item, server);
          },
        ),
      ],
    ];

    return widgets;
  }

  void onLongPressServer(
      ProxyConfig server, bool isTesting, bool isWaitTesting) async {
    var widgets =
        getLongPressServerWidgets(server, isTesting, isWaitTesting, false);
    showSheetWidgets(context: context, widgets: widgets);
  }

  void onTapMore() {
    final tcontext = Translations.of(context);
    List<Widget> widgets = [
      ListTile(
        title: Text(
          tcontext.meta.setting,
        ),
        leading: Icon(
          Icons.settings_outlined,
        ),
        onTap: () async {
          Navigator.pop(context);
          onTapSetting();
        },
      ),
      ListTile(
        title: Text(
          tcontext.meta.addProfile,
        ),
        leading: Icon(
          Icons.add_outlined,
        ),
        onTap: () async {
          Navigator.pop(context);
          onTapAddProfile();
        },
      ),
      ListTile(
        title: Text(
          tcontext.meta.update,
        ),
        leading: Icon(
          Icons.cloud_download_outlined,
        ),
        onTap: () async {
          Navigator.pop(context);
          onTapReloadAll();
        },
      ),
      ListTile(
        title: Text(
          tcontext.meta.sort,
        ),
        leading: Icon(
          Icons.sort_outlined,
        ),
        onTap: () async {
          Navigator.pop(context);
          onTapSort();
        },
      ),
      ListTile(
        title: Text(
          tcontext.MyProfilesMergeScreen.profilesMerge,
        ),
        leading: Icon(
          Icons.merge_outlined,
        ),
        onTap: () async {
          Navigator.pop(context);
          onTapMerge();
        },
      )
    ];

    showSheetWidgets(context: context, widgets: widgets);
  }

  void onTapTestOutboundLatencyAll() async {
    bool ok = await startVPN();
    if (!ok) {
      return;
    }
    for (var group in ServerManager.getConfig().items) {
      ServerManager.testOutboundLatencyForGroup(group.groupid);
    }
  }

  void onTapSetting() async {
    final tcontext = Translations.of(context);
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      var settingConfig = SettingManager.getConfig();

      List<GroupItemOptions> options = [
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.hideInvalidServer,
                switchValue: settingConfig.uiScreen.hideInvalidServerMyProfiles,
                onSwitch: (bool value) async {
                  settingConfig.uiScreen.hideInvalidServerMyProfiles = value;

                  setState(() {});
                })),
        GroupItemOptions(
            switchOptions: GroupItemSwitchOptions(
                name: tcontext.SettingsScreen.sortServer,
                switchValue: settingConfig.uiScreen.sortServerMyProfiles,
                onSwitch: (bool value) async {
                  settingConfig.uiScreen.sortServerMyProfiles = value;
                  setState(() {});
                })),
      ];

      return [GroupItem(options: options)];
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("MyProfilesScreen.setting"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.setting,
                  getOptions: getOptions,
                )));
    _buildData();
    setState(() {});
    SettingManager.saveConfig();
  }

  void onTapReloadAll() {
    ServerManager.reloadAll();

    setState(() {});
  }

  void onTapSort() {
    Navigator.push(
        context,
        MaterialPageRoute(
            settings: MyProfilesReorderScreen.routSettings(),
            builder: (context) =>
                MyProfilesReorderScreen(onReorder: (List<String> groupids) {
                  ServerManager.reorderGroup(groupids);
                  ServerManager.setDirty(true);
                  Future.delayed(const Duration(milliseconds: 10), () {
                    if (!mounted) {
                      return;
                    }
                    _buildData();
                    setState(() {});
                  });
                })));
  }

  void onTapMerge() async {
    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: MyProfilesMergeScreen.routSettings(),
            builder: (context) => const MyProfilesMergeScreen()));
    setState(() {});
  }

  void onTapAddProfile() async {
    await GroupHelper.showAddProfile(context, false);
    setState(() {});
  }

  void onTapGroupTitle(String groupid) {
    if (_expandGroup.contains(groupid)) {
      _expandGroup.remove(groupid);
    } else {
      _expandGroup.add(groupid);
    }

    _buildData();
    setState(() {});
  }

  Future<void> onChangedGroup(String groupid, bool newValue) async {
    final tcontext = Translations.of(context);
    if (!newValue) {
      int count = 0;
      for (var item in ServerManager.getConfig().items) {
        if (item.groupid == ServerManager.getCustomGroupId()) {
          continue;
        }
        if (item.enable) {
          count++;
        }
        if (count >= 2) {
          break;
        }
      }
      if (count == 1) {
        DialogUtils.showAlertDialog(
            context, tcontext.meta.myProfilesAtLeastOneReserveEnable);
        return;
      }
    }

    await ServerManager.enableGroup(groupid, newValue);
    // if (!newValue) {
    ServerManager.setDirty(true);
    //}

    if (!mounted) {
      return;
    }

    setState(() {});
  }

  void onTapAdd(ServerConfigGroupItem item) async {
    final tcontext = Translations.of(context);
    DialogUtilsResult<String>? name = await DialogUtils.showStringPickerDialog(
      context,
      tcontext.meta.add,
      SingboxOutboundType.getNames(),
      SingboxOutboundType.socks.name,
    );
    if (name == null || name.data == null) {
      return;
    }
    SingboxOutboundOptions sbOptions = SingboxOutboundOptions();
    sbOptions.type = name.data!;
    switch (sbOptions.type) {
      case "shadowsocks":
        sbOptions.shadowsocks = SingboxOutboundShadowsocksOptions();
        break;
      case "shadowsocksr":
        sbOptions.shadowsocksr = SingboxOutboundShadowsocksROptions();
        break;
      case "shadowtls":
        sbOptions.shadowtls = SingboxOutboundShadowTLSOptions();
        break;
      case "vmess":
        sbOptions.vmess = SingboxOutboundVMessOptions();
        break;
      case "vless":
        sbOptions.vless = SingboxOutboundVLESSOptions();
        break;
      case "trojan":
        sbOptions.trojan = SingboxOutboundTrojanOptions();
        break;
      case "socks":
        sbOptions.socks = SingboxOutboundSocksOptions();
        break;
      case "http":
        sbOptions.http = SingboxOutboundHTTPOptions();
        break;
      case "hysteria":
        sbOptions.hysteria = SingboxOutboundHysteriaOptions();
        break;
      case "hysteria2":
        sbOptions.hysteria2 = SingboxOutboundHysteria2Options();
        break;
      case "wireguard":
        sbOptions.wg = SingboxOutboundWireGuardOptions();
        break;
      case "tuic":
        sbOptions.tuic = SingboxOutboundTUICOptions();
        break;
      case "tor":
        sbOptions.tor = SingboxOutboundTorOptions();
        break;
      case "ssh":
        sbOptions.ssh = SingboxOutboundSSHOptions();
        break;
      case "anytls":
        sbOptions.anytls = SingboxOutboundAnyTlsOptions();
        break;
      case "mieru":
        sbOptions.mieru = SingboxOutboundMieruOptions();
        break;
      default:
        return;
    }
    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: "tag",
                text: sbOptions.tag,
                textWidthPercent: 0.6,
                hint: tcontext.meta.required,
                onChanged: (String value) {
                  if (value.isEmpty) {
                    return;
                  }
                  sbOptions.tag = value;
                })),
        GroupItemOptions(
          textOptions: GroupItemTextOptions(
            name: "type",
            text: sbOptions.type,
            textWidthPercent: 0.6,
          ),
        )
      ];
      List<GroupItem> allOptions = [GroupItem(options: options)];

      allOptions.addAll(await sbOptions.getWidgetOptions(context, setstate));
      return allOptions;
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("add-edit:${sbOptions.type}"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.edit,
                  getOptions: getOptions,
                  onDone: (BuildContext context) async {
                    if (!mounted) {
                      return false;
                    }
                    String? ret;
                    ProxyConfig server = ProxyConfig();
                    server.groupid = item.groupid;
                    server.index = item.servers.length;
                    server.tag = sbOptions.tag;
                    server.type = sbOptions.type;
                    switch (sbOptions.type) {
                      case "shadowsocks":
                        ret = sbOptions.shadowsocks!.getRequired();
                        sbOptions.server = sbOptions.shadowsocks!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.shadowsocks!.server_port ?? 0;
                        break;
                      case "shadowsocksr":
                        ret = sbOptions.shadowsocksr!.getRequired();
                        sbOptions.server = sbOptions.shadowsocksr!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.shadowsocksr!.server_port ?? 0;
                        break;
                      case "shadowtls":
                        ret = sbOptions.shadowtls!.getRequired();
                        sbOptions.server = sbOptions.shadowtls!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.shadowtls!.server_port ?? 0;
                        break;
                      case "vmess":
                        ret = sbOptions.vmess!.getRequired();
                        sbOptions.server = sbOptions.vmess!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.vmess!.server_port ?? 0;
                        break;
                      case "vless":
                        ret = sbOptions.vless!.getRequired();
                        sbOptions.server = sbOptions.vless!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.vless!.server_port ?? 0;
                        break;
                      case "trojan":
                        ret = sbOptions.trojan!.getRequired();
                        sbOptions.server = sbOptions.trojan!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.trojan!.server_port ?? 0;
                        break;
                      case "socks":
                        ret = sbOptions.socks!.getRequired();
                        sbOptions.server = sbOptions.socks!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.socks!.server_port ?? 0;
                        break;
                      case "http":
                        ret = sbOptions.http!.getRequired();
                        sbOptions.server = sbOptions.http!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.http!.server_port ?? 0;
                        break;
                      case "hysteria":
                        ret = sbOptions.hysteria!.getRequired();
                        sbOptions.server = sbOptions.hysteria!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.hysteria!.server_port ?? 0;
                        break;
                      case "hysteria2":
                        ret = sbOptions.hysteria2!.getRequired();
                        sbOptions.server = sbOptions.hysteria2!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.hysteria2!.server_port ?? 0;
                        break;
                      case "wireguard":
                        ret = sbOptions.wg!.getRequired();
                        sbOptions.server = sbOptions.wg!.server ?? "";
                        sbOptions.server_port = sbOptions.wg!.server_port ?? 0;
                        break;
                      case "tuic":
                        ret = sbOptions.tuic!.getRequired();
                        sbOptions.server = sbOptions.tuic!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.tuic!.server_port ?? 0;
                        break;
                      case "tor":
                        ret = sbOptions.tor!.getRequired();
                        sbOptions.server = sbOptions.tor!.server ?? "";
                        sbOptions.server_port = sbOptions.tor!.server_port ?? 0;
                        break;
                      case "ssh":
                        ret = sbOptions.ssh!.getRequired();
                        sbOptions.server = sbOptions.ssh!.server ?? "";
                        sbOptions.server_port = sbOptions.ssh!.server_port ?? 0;
                        break;
                      case "anytls":
                        ret = sbOptions.anytls!.getRequired();
                        sbOptions.server = sbOptions.anytls!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.anytls!.server_port ?? 0;
                        break;
                      case "mieru":
                        ret = sbOptions.mieru!.getRequired();
                        sbOptions.server = sbOptions.mieru!.server ?? "";
                        sbOptions.server_port =
                            sbOptions.mieru!.server_port ?? 0;
                        break;
                    }
                    if (ret != null) {
                      DialogUtils.showAlertDialog(
                          context, "$ret ${tcontext.meta.required}");
                      return false;
                    }
                    if (sbOptions.tag.isEmpty) {
                      DialogUtils.showAlertDialog(
                          context, "tag ${tcontext.meta.required}");
                      return false;
                    }
                    server.server = sbOptions.server;
                    server.serverport = sbOptions.server_port;
                    server.raw = sbOptions.toJson();
                    if (item.enable) {
                      ServerManager.setDirty(true);
                    }
                    item.servers.add(server);

                    return true;
                  },
                )));
    _buildData();
    setState(() {});
  }

  void onTapShare(ServerConfigGroupItem item) async {
    if (!mounted) {
      return;
    }
    bool tunMode = false;
    String savePath =
        path.join(await PathUtils.cacheDir(), 'profile_share.json');
    await FileUtils.deletePath(savePath);
    SingboxConfig config = SingboxConfig();
    dynamic selectOutbound =
        SingboxConfigBuilder.buildOutbound(ServerManager.getUrltest());
    List<Tuple2<DiversionRulesGroup, ProxyConfig>> diversionGroups =
        ServerManager.getDiversionGroups();
    Set<String> selectOutboundTags = {};
    List<dynamic> allOutBounds = [];
    for (var server in item.servers) {
      selectOutboundTags.add(server.tag);
      var bound = SingboxConfigBuilder.buildOutbound(server);
      if (bound != null) {
        allOutBounds.add(bound);
      }
    }
    config.ntp = SingboxConfigBuilder.ntp();
    final dns = SingboxConfigBuilder.dns(tunMode, SingboxExportType.karing);
    if (dns.error != null) {
      DialogUtils.showAlertDialog(context, dns.error!.message,
          showCopy: true, showFAQ: true, withVersion: true);
      return;
    }
    config.dns = dns.data!;
    config.inbounds = SingboxConfigBuilder.inbounds(
        false, false, SingboxExportType.karing, null);
    for (var inbound in config.inbounds) {
      if (inbound is SingboxInboundTunOptions) {
        inbound.address = ["172.19.0.1/30"];
        inbound.include_package = [];
        inbound.exclude_package = [];
        break;
      }
    }
    config.outbounds = SingboxConfigBuilder.outbounds(
        false,
        selectOutboundTags,
        {},
        selectOutbound,
        allOutBounds,
        null,
        {},
        [],
        SingboxExportType.karing);

    var sitecodesHashCode = await RulesetCodesUtils.siteCodesHashCode();
    var ipcodesHashCode = await RulesetCodesUtils.ipCodesHashCode();
    var aclcodesHashCode = await RulesetCodesUtils.aclCodesHashCode();

    config.route = SingboxConfigBuilder.route(
        "",
        "",
        "",
        sitecodesHashCode,
        ipcodesHashCode,
        aclcodesHashCode,
        false,
        tunMode,
        allOutBounds,
        {},
        null,
        diversionGroups,
        config.inbounds,
        config.dns,
        null,
        null,
        item.groupid,
        SingboxExportType.karing);

    const JsonEncoder encoder = JsonEncoder.withIndent('  ');
    String content = encoder.convert(config);
    try {
      await File(savePath).writeAsString(content, flush: true);
      if (!await FileUtils.validJsonFile(savePath)) {
        await File(savePath).writeAsString(content, flush: true);
      }
    } catch (err) {
      ErrorReporterUtils.tryReportNoSpace(err.toString());
    }

    try {
      final box = context.findRenderObject() as RenderBox?;
      final rect =
          box != null ? box.localToGlobal(Offset.zero) & box.size : null;
      await Share.shareXFiles(
        [XFile(savePath)],
        sharePositionOrigin: rect,
      );
    } catch (err) {
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  void onTapEdit(ServerConfigGroupItem item) async {
    bool? changed = await Navigator.push(
        context,
        MaterialPageRoute(
            settings: MyProfilesEditScreen.routSettings(),
            builder: (context) => MyProfilesEditScreen(groupid: item.groupid)));
    if (changed == true) {
      _buildData();
      setState(() {});
    }
  }

  void onTapEditServer(ServerConfigGroupItem item, ProxyConfig server) async {
    final tcontext = Translations.of(context);
    if (item.isRemote()) {
      bool? ok = await DialogUtils.showConfirmDialog(
          context, tcontext.remoteProfileEditConfirm);
      if (ok != true) {
        return;
      }
    }
    SingboxOutboundOptions sbOptions = SingboxOutboundOptions();
    try {
      sbOptions.fromJson(server.raw);
    } catch (err, stacktrace) {
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
      //Log.w(
      //    "onTapEditServer exception ${err.toString()}\n\n${stacktrace.toString()}");
      return;
    }

    if (!sbOptions.isValid()) {
      return;
    }

    Future<List<GroupItem>> getOptions(
        BuildContext context, SetStateCallback? setstate) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: "tag",
                text: sbOptions.tag,
                textStyle: TextStyle(
                  fontFamily: Platform.isWindows ? 'Emoji' : null,
                ),
                textWidthPercent: 0.6,
                hint: tcontext.meta.required,
                onChanged: (String value) {
                  if (value.isEmpty) {
                    return;
                  }
                  sbOptions.tag = value.trim();
                })),
        GroupItemOptions(
          textOptions: GroupItemTextOptions(
            name: "type",
            text: sbOptions.type,
            textWidthPercent: 0.6,
          ),
        ),
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: "detour",
                text: sbOptions.dialer?.detour ?? "",
                textStyle: TextStyle(
                  fontFamily: Platform.isWindows ? 'Emoji' : null,
                ),
                textWidthPercent: 0.6,
                onChanged: (String value) {
                  if (value.trim().isEmpty) {
                    sbOptions.dialer?.detour = null;
                  } else {
                    sbOptions.dialer?.detour = value.trim();
                  }
                })),
      ];
      List<GroupItem> allOptions = [GroupItem(options: options)];

      allOptions.addAll(await sbOptions.getWidgetOptions(context, setstate));
      return allOptions;
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("edit:${sbOptions.type}"),
            builder: (context) => GroupScreen(
                  title: tcontext.meta.edit,
                  getOptions: getOptions,
                  onDone: (BuildContext context) async {
                    if (!mounted) {
                      return false;
                    }
                    server.tag = sbOptions.tag;
                    server.server = sbOptions.server;
                    server.serverport = sbOptions.server_port;
                    server.raw = sbOptions.toJson();
                    if (item.enable) {
                      ServerManager.setDirty(true);
                    }

                    return true;
                  },
                )));
    setState(() {});
  }
}
