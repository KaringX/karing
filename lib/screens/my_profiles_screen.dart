// ignore_for_file: use_build_context_synchronously, empty_catches

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:contextmenu/contextmenu.dart';
import 'package:flutter/material.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/remote_config_manager.dart';
import 'package:karing/app/modules/remote_isp_config_manager.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/date_time_utils.dart';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/file_utils.dart';
import 'package:karing/app/utils/karing_url_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/app/utils/ruleset_codes_utils.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/app/utils/singbox_json.dart';
import 'package:karing/app/utils/url_launcher_utils.dart';
import 'package:karing/app/utils/windows_version_helper.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/common_widget.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/group_helper.dart';
import 'package:karing/screens/group_item.dart';
import 'package:karing/screens/group_screen.dart';
import 'package:karing/screens/listview_multi_parts_builder.dart';
import 'package:karing/screens/my_profiles_edit_screen.dart';
import 'package:karing/screens/my_profiles_merge_screen.dart';
import 'package:karing/screens/my_profiles_reorder_screen.dart';
import 'package:karing/screens/qrcode_screen.dart';
import 'package:karing/screens/richtext_viewer.screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
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
    item.remark = t.custom;

    ServerDiversionGroupItem? itemDiversion =
        ServerManager.getDiversionCustomGroup();

    itemDiversion.remark = t.custom;

    _buildData();

    ServerManager.onTestLatency(hashCode,
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
    ServerManager.onAddConfig((ServerConfigGroupItem item) async {
      if (!mounted) {
        return;
      }
      _buildData();
      setState(() {});
    });
    ServerManager.onUpdateConfig((List<ServerConfigGroupItem> groups) async {
      if (!mounted) {
        return;
      }
      _buildData();
      setState(() {});
    });
    ServerManager.onRemoveConfig(
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
    ServerManager.onTestLatencyRemove(hashCode);
    ServerManager.onLatencyHistoryUpdatedRemove(hashCode);
    super.dispose();
    ServerManager.saveServerConfig();
    ServerManager.saveDiversionGroupConfig();
    ServerManager.saveUse();
  }

  Future<bool> startVPN() async {
    return await Biz.startVPN(context, true, "MyProfilesScreen");
  }

  Future<void> _launchUrl(String url) async {
    var remoteConfig = RemoteConfigManager.getConfig();
    var remoteISPConfig = RemoteISPConfigManager.getConfig();
    var getTranfficFrom = remoteISPConfig.getTranfficFrom.isNotEmpty
        ? remoteISPConfig.getTranfficFrom
        : remoteConfig.getTranfficFrom;

    if (getTranfficFrom.isNotEmpty) {
      String queryParams = await KaringUrlUtils.getQueryParams();
      String newUrl =
          UrlLauncherUtils.reorganizationUrl(getTranfficFrom, queryParams) ??
              getTranfficFrom;

      url = "$newUrl&url=${Uri.encodeQueryComponent(url)}}";
    }

    UrlLauncherUtils.loadUrl(url);
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
                    child: Text(
                      item.remark,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: ThemeConfig.kFontSizeListItem,
                        fontWeight: ThemeConfig.kFontWeightListItem,
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
            child: Switch.adaptive(
              value: item.enable,
              activeColor: ThemeDefine.kColorGreenBright,
              onChanged: (bool newValue) async {
                await onChangedGroup(item.groupid, newValue);
              },
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        item.groupid != ServerManager.getCustomGroupId()
            ? InkWell(
                onTap: () async {
                  bool? del = await DialogUtils.showConfirmDialog(
                      context, tcontext.removeConfirm);
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
              )
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
      item.isRemote()
          ? Row(
              children: [
                InkWell(
                  onTap: () async {
                    ServerManager.reload(item.groupid).then((value) {
                      if (!mounted) {
                        return;
                      }
                      if (value != null) {
                        DialogUtils.showAlertDialog(
                            context, tcontext.updateFailed(p: value.message),
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
                      ]),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
            )
          : const SizedBox.shrink(),
      item.isRemote()
          ? Row(children: [
              InkWell(
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
              ),
              const SizedBox(
                width: 10,
              )
            ])
          : const SizedBox.shrink(),
      !item.isRemote()
          ? Row(children: [
              InkWell(
                onTap: () {
                  onTapAdd(item);
                },
                child: const Icon(
                  Icons.add_outlined,
                  size: 26,
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ])
          : const SizedBox.shrink(),
      !Platform.isWindows ||
              (Platform.isWindows &&
                  VersionHelper.instance.isWindows10RS5OrGreater)
          ? Row(children: [
              InkWell(
                onTap: () {
                  onTapShare(item);
                },
                child: const Icon(
                  Icons.share_outlined,
                  size: 26,
                ),
              ),
              const SizedBox(
                width: 10,
              )
            ])
          : const SizedBox.shrink(),
      (((item.isp != null) && (item.isp!.url.isNotEmpty)) ||
              item.site.isNotEmpty ||
              item.isRemote())
          ? Row(children: [
              InkWell(
                onTap: () {
                  onTapUrl(item);
                },
                child: Icon(
                  (item.site.isNotEmpty || item.isRemote())
                      ? Icons.webhook_rounded
                      : null,
                  size: 26,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
            ])
          : const SizedBox.shrink(),
      item.groupid != ServerManager.getCustomGroupId()
          ? Row(children: [
              InkWell(
                onTap: () async {
                  onTapEdit(item);
                },
                child: const Icon(Icons.edit_outlined, size: 26),
              ),
              const SizedBox(
                width: 10,
              ),
            ])
          : const SizedBox.shrink(),
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
          : InkWell(
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
                      Icons.network_ping_outlined,
                      size: 26,
                    )
                  : const SizedBox.shrink(),
            ),
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
                    if (!mounted) {
                      return;
                    }
                    setState(() {});
                    if (value != null) {
                      DialogUtils.showAlertDialog(
                          context, tcontext.updateFailed(p: value.message),
                          showCopy: true, showFAQ: true, withVersion: true);
                    }
                  });
                } else {
                  DialogUtils.showAlertDialog(
                      context, tcontext.updateFailed(p: value.error!.message),
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

  Container createServer(ProxyConfig server, int index) {
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
    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      child: Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: ContextMenuArea(
          builder: (context) =>
              getLongPressServerPopMenu(server, isTesting, isWaitTesting),
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
                              color: Colors.white.withOpacity(0.8),
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
                                          color: Colors.white.withOpacity(0.8),
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
                            tcontext.MyProfilesScreen.title,
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
                          InkWell(
                            onTap: () async {
                              onTapTestOutboundLatencyAll();
                            },
                            child: const SizedBox(
                                width: 50,
                                height: 30,
                                child: Icon(
                                  Icons.network_ping_outlined,
                                  size: 30,
                                )),
                          ),
                          InkWell(
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
                          ),
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

  List<PopupMenuItem> getLongPressServerPopMenu(
      ProxyConfig server, bool isTesting, bool isWaitTesting) {
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
    String msg = disabled ? tcontext.enable : tcontext.disable;
    msg += "[${server.type};${server.server};${server.serverport}]";

    var items = [
      PopupMenuItem(
          value: 1,
          child: Text(msg),
          onTap: () {
            var use = ServerManager.getUse();
            if (disabled) {
              use.disable.remove(disableKey);
            } else {
              use.disable.add(disableKey);
            }
            ServerManager.setDirty(true);
            setState(() {});
          }),
      PopupMenuItem(
          value: 2,
          child: Text(tcontext.share),
          onTap: () {
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
          }),
      PopupMenuItem(
          value: 3,
          child: Text(tcontext.view),
          onTap: () {
            const JsonEncoder encoder = JsonEncoder.withIndent('  ');
            String content =
                encoder.convert(SingboxConfigBuilder.buildOutbound(server));
            Navigator.push(
                context,
                MaterialPageRoute(
                    settings: RichtextViewScreen.routSettings(),
                    builder: (context) => RichtextViewScreen(
                        title: tcontext.view, file: "", content: content)));
          })
    ];
    if (!isTesting &&
        !isWaitTesting &&
        item.testLatency.isEmpty &&
        item.testLatencyIndepends.isEmpty) {
      if (!item.isRemote()) {
        items.add(PopupMenuItem(
            value: 4,
            child: Text(tcontext.remove),
            onTap: () {
              for (int i = 0; i < item.servers.length; ++i) {
                if (item.servers[i].tag == server.tag) {
                  item.servers.removeAt(i);
                  if (item.enable) {
                    ServerManager.setDirty(true);
                  }
                  _buildData();
                  setState(() {});
                  break;
                }
              }
            }));
      }
      var settingConfig = SettingManager.getConfig();
      if (!settingConfig.novice) {
        items.add(PopupMenuItem(
            value: 5,
            child: Text(tcontext.edit),
            onTap: () async {
              onTapEditServer(item, server);
            }));
      }
    }
    return items;
  }

  void onLongPressServer(
      ProxyConfig server, bool isTesting, bool isWaitTesting) async {
    var items = getLongPressServerPopMenu(server, isTesting, isWaitTesting);
    var postion = RelativeRect.fromLTRB(
        _tapDownDetails.globalPosition.dx + 20,
        _tapDownDetails.globalPosition.dy - 50,
        MediaQuery.of(context).size.width - _tapDownDetails.globalPosition.dx,
        0);
    showMenu(context: context, position: postion, items: items);
  }

  void onTapMore() {
    showMenu(
        context: context,
        position: const RelativeRect.fromLTRB(0.1, 0, 0, 0),
        items: [
          PopupMenuItem(
              value: 1,
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  Icons.settings_outlined,
                  size: 30,
                ),
              ),
              onTap: () {
                onTapSetting();
              }),
          PopupMenuItem(
            value: 1,
            child: const SizedBox(
              width: 30,
              height: 30,
              child: Icon(
                Icons.add_outlined,
                size: 30,
              ),
            ),
            onTap: () {
              onTapAddProfile();
            },
          ),
          PopupMenuItem(
              value: 1,
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  Icons.cloud_download_outlined,
                  size: 30,
                ),
              ),
              onTap: () {
                onTapReloadAll();
              }),
          PopupMenuItem(
              value: 1,
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  Icons.sort_outlined,
                  size: 30,
                ),
              ),
              onTap: () {
                onTapSort();
              }),
          PopupMenuItem(
              value: 1,
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  Icons.merge_type_outlined,
                  size: 30,
                ),
              ),
              onTap: () {
                onTapMerge();
              }),
        ]);
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
    Future<List<GroupItem>> getOptions(BuildContext context) async {
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
                  title: tcontext.setting,
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
    await GroupHelper.showAddProfile(context);
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
            context, tcontext.MyProfilesScreen.atLeastOneEnable);
        return;
      }
    }

    await ServerManager.enableGroup(groupid, newValue);
    if (!newValue) {
      ServerManager.setDirty(true);
    }

    if (!mounted) {
      return;
    }

    setState(() {});
  }

  void onTapAdd(ServerConfigGroupItem item) async {
    final tcontext = Translations.of(context);
    DialogUtilsResult<String>? name = await DialogUtils.showStringPickerDialog(
      context,
      tcontext.add,
      [
        SingboxOutboundType.socks.name,
        SingboxOutboundType.http.name,
        SingboxOutboundType.shadowsocks.name,
        SingboxOutboundType.shadowsocksr.name,
        SingboxOutboundType.shadowtls.name,
        SingboxOutboundType.vmess.name,
        SingboxOutboundType.vless.name,
        SingboxOutboundType.trojan.name,
        SingboxOutboundType.hysteria.name,
        SingboxOutboundType.hysteria2.name,
        SingboxOutboundType.wireguard.name,
        SingboxOutboundType.tuic.name,
        SingboxOutboundType.tor.name,
        SingboxOutboundType.ssh.name,
      ],
      SingboxOutboundType.socks.name,
    );
    if (name == null || name.data == null) {
      return;
    }
    SingboxJsonOptions sbOptions = SingboxJsonOptions();
    sbOptions.type = name.data!;
    switch (sbOptions.type) {
      case "shadowsocks":
        sbOptions.shadowsocks = SingboxJsonOutboundShadowsocksOptions();
        break;
      case "shadowsocksr":
        sbOptions.shadowsocksr = SingboxJsonOutboundShadowsocksROptions();
        break;
      case "shadowtls":
        sbOptions.shadowtls = SingboxJsonOutboundShadowTLSOptions();
        break;
      case "vmess":
        sbOptions.vmess = SingboxJsonOutboundVMessOptions();
        break;
      case "vless":
        sbOptions.vless = SingboxJsonOutboundVLESSOptions();
        break;
      case "trojan":
        sbOptions.trojan = SingboxJsonOutboundTrojanOptions();
        break;
      case "socks":
        sbOptions.socks = SingboxJsonOutboundSocksOptions();
        break;
      case "http":
        sbOptions.http = SingboxJsonOutboundHTTPOptions();
        break;
      case "hysteria":
        sbOptions.hysteria = SingboxJsonOutboundHysteriaOptions();
        break;
      case "hysteria2":
        sbOptions.hysteria2 = SingboxJsonOutboundHysteria2Options();
        break;
      case "wireguard":
        sbOptions.wg = SingboxJsonOutboundWireGuardOptions();
        break;
      case "tuic":
        sbOptions.tuic = SingboxJsonOutboundTUICOptions();
        break;
      case "tor":
        sbOptions.tor = SingboxJsonOutboundTorOptions();
        break;
      case "ssh":
        sbOptions.ssh = SingboxJsonOutboundSSHOptions();
        break;
      default:
        return;
    }
    Future<List<GroupItem>> getOptions(BuildContext context) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: "tag",
                text: sbOptions.tag,
                textWidthPercent: 0.6,
                hint: tcontext.required,
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

      allOptions.addAll(await sbOptions.getWidgetOptions(context));
      return allOptions;
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("add-edit:${sbOptions.type}"),
            builder: (context) => GroupScreen(
                  title: tcontext.edit,
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
                    }
                    if (ret != null) {
                      DialogUtils.showAlertDialog(
                          context, "$ret ${tcontext.required}");
                      return false;
                    }
                    if (sbOptions.tag.isEmpty) {
                      DialogUtils.showAlertDialog(
                          context, "tag ${tcontext.required}");
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

    final box = context.findRenderObject() as RenderBox?;
    String savePath =
        path.join(await PathUtils.cacheDir(), 'profile_share.json');
    await FileUtils.deleteFileByPath(savePath);
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
    config.dns =
        SingboxConfigBuilder.dns(false, SingboxExportType.singbox, null);
    config.inbounds = SingboxConfigBuilder.inbounds(
        false, false, [], SingboxExportType.singbox, null);
    for (var inbound in config.inbounds) {
      if (inbound is SingboxInboundTunOptions) {
        inbound.inet4_address = ["172.19.0.1/30"];
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
        SingboxExportType.singbox);

    var sitecodes = await RulesetCodesUtils.siteCodes();
    var ipcodes = await RulesetCodesUtils.ipCodes();
    var aclcodes = await RulesetCodesUtils.aclCodes();

    config.route = SingboxConfigBuilder.route(
        "",
        "",
        "",
        sitecodes,
        ipcodes,
        aclcodes,
        false,
        allOutBounds,
        {},
        null,
        diversionGroups,
        config.inbounds,
        config.dns,
        null,
        item.groupid,
        SingboxExportType.singbox);

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
      await Share.shareXFiles([XFile(savePath)],
          sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size);
    } catch (err) {
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  void onTapUrl(ServerConfigGroupItem item) {
    if (item.isp != null) {
      if (item.isp!.url.isNotEmpty) {
        _launchUrl(item.isp!.url);
        return;
      }
    }
    if (item.site.isNotEmpty) {
      _launchUrl(item.site);
      return;
    }
    Uri? uri = Uri.tryParse(item.urlOrPath);
    if (uri != null) {
      String url = "${uri.scheme}://${uri.host}";
      if (uri.hasPort) {
        url += ":${uri.port}";
      }
      _launchUrl(url);
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
    SingboxJsonOptions sbOptions = SingboxJsonOptions();
    sbOptions.fromJson(server.raw);
    if (!sbOptions.isValid()) {
      return;
    }

    Future<List<GroupItem>> getOptions(BuildContext context) async {
      List<GroupItemOptions> options = [
        GroupItemOptions(
            textFormFieldOptions: GroupItemTextFieldOptions(
                name: "tag",
                text: sbOptions.tag,
                style: TextStyle(
                  fontFamily: Platform.isWindows ? 'Emoji' : null,
                ),
                textWidthPercent: 0.6,
                hint: tcontext.required,
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
                style: TextStyle(
                  fontFamily: Platform.isWindows ? 'Emoji' : null,
                ),
                textWidthPercent: 0.6,
                onChanged: (String value) {
                  if (value.isEmpty) {
                    return;
                  }
                  if (value.trim().isEmpty) {
                    sbOptions.dialer?.detour = null;
                  } else {
                    sbOptions.dialer?.detour = value.trim();
                  }
                })),
      ];
      List<GroupItem> allOptions = [GroupItem(options: options)];

      allOptions.addAll(await sbOptions.getWidgetOptions(context));
      return allOptions;
    }

    await Navigator.push(
        context,
        MaterialPageRoute(
            settings: GroupScreen.routSettings("edit:${sbOptions.type}"),
            builder: (context) => GroupScreen(
                  title: tcontext.edit,
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
