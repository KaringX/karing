// ignore_for_file: empty_catches

import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:karing/app/local_services/vpn_service.dart';
import 'package:karing/app/modules/biz.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/runtime/return_result.dart';
import 'package:karing/app/utils/network_utils.dart';
import 'package:karing/app/utils/parallel_task_queue.dart';
import 'package:karing/app/utils/singbox_config_builder.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/common_widget.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';

class DnsSettingsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "DnsSettingsScreen");
  }

  final String title;
  final DNSType dnsType;
  const DnsSettingsScreen(
      {super.key, required this.title, required this.dnsType});

  static Map<String, String> getDirect() {
    return _DnsSettingsScreenState.getDirect();
  }

  static Map<String, String> getCurrent() {
    return _DnsSettingsScreenState.getCurrent();
  }

  @override
  State<DnsSettingsScreen> createState() => _DnsSettingsScreenState();
}

class _DnsSettingsScreenState extends LasyRenderingState<DnsSettingsScreen> {
  static ParallelTaskQueue? _taskQueue;
  static const int _kMaxTasks = 5;
  static Map<String, String> _contectDirectLatency = {};
  static Map<String, String> _contectCurrentLatency = {};
  final List _searchedData = [];
  Timer? _timer;
  static Map<String, String> getDirect() {
    return _contectDirectLatency;
  }

  static Map<String, String> getCurrent() {
    return _contectCurrentLatency;
  }

  @override
  void initState() {
    _buildData();
    const Duration duration = Duration(seconds: 1);
    _timer ??= Timer.periodic(duration, (timer) async {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _timer = null;
    super.dispose();
    SettingManager.saveConfig();
  }

  void _buildData() {
    _searchedData.clear();

    _searchedData.addAll(SettingManager.getConfig().dns.list);
    _searchedData.addAll(SettingConfigItemDNS.kDNSList);
  }

  @override
  Widget build(BuildContext context) {
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
                    SizedBox(
                      width: windowSize.width - 50 * 3,
                      child: Text(
                        widget.title,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    Row(children: [
                      _taskQueue != null
                          ? const Row(
                              children: [
                                SizedBox(
                                  width: 12,
                                ),
                                SizedBox(
                                  width: 26,
                                  height: 26,
                                  child: RepaintBoundary(
                                    child: CircularProgressIndicator(
                                        strokeWidth: 2),
                                  ),
                                ),
                                SizedBox(
                                  width: 12,
                                )
                              ],
                            )
                          : InkWell(
                              onTap: () async {
                                checkLatency();
                              },
                              child: const SizedBox(
                                width: 50,
                                height: 30,
                                child: Icon(
                                  Icons.network_ping_outlined,
                                  size: 26,
                                ),
                              ),
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
                    ]),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: FutureBuilder(
                  future: VPNService.getTunMode(),
                  builder:
                      (BuildContext context, AsyncSnapshot<bool> snapshot) {
                    return _loadListView(snapshot.hasData && snapshot.data!);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<bool> startVPN() async {
    return await Biz.startVPN(context, true, "DnsSettingsScreen");
  }

  void checkLatency() async {
    bool ok = await startVPN();
    if (!ok) {
      return;
    }
    if (!mounted) {
      return;
    }

    if (_taskQueue != null) {
      return;
    }
    _contectDirectLatency = {};
    _contectCurrentLatency = {};
    setState(() {});
    _testConnectLatency(
        _searchedData,
        _contectDirectLatency,
        _contectCurrentLatency,
        kOutboundTagDirect,
        VPNService.getCurrent().tag);

    setState(() {});
  }

  Widget _loadListView(bool tunMode) {
    Size windowSize = MediaQuery.of(context).size;
    var settingConfig = SettingManager.getConfig();
    String regionCode = settingConfig.regionCode.toLowerCase();

    List<String> dnsAddress = [];
    Set<String> disabled = {};
    if (widget.dnsType == DNSType.dnsTypeResolver) {
      dnsAddress = settingConfig.dns.getResolverDns(regionCode, tunMode);
      for (var item in _searchedData) {
        var addr = item[SettingConfigItemDNS.kDNSUrl];
        Uri? uri = Uri.tryParse(addr);
        if (uri != null) {
          if (NetworkUtils.isDomain(uri.host, false)) {
            disabled.add(addr);
          }
        }
      }
    } else if (widget.dnsType == DNSType.dnsTypeOutbound) {
      dnsAddress = settingConfig.dns.getOutboundDns(regionCode, tunMode);
    } else if (widget.dnsType == DNSType.dnsTypeDirect) {
      dnsAddress = settingConfig.dns.getDirectDns(regionCode, tunMode);
    } else if (widget.dnsType == DNSType.dnsTypeProxy) {
      dnsAddress = settingConfig.dns.getProxyDns(regionCode, tunMode);
    }
    if (Platform.isAndroid) {
      disabled.add(SettingConfigItemDNS.kDNSDHCP);
    } else if (Platform.isWindows) {
      if (tunMode) {
        disabled.add(SettingConfigItemDNS.kDNSLocal);
      }
    }

    return Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemCount: _searchedData.length,
          itemExtent: ThemeConfig.kListItemHeight + 5,
          itemBuilder: (BuildContext context, int index) {
            var current = _searchedData[index];
            return createWidget(
                current, dnsAddress, disabled, windowSize, tunMode);
          },
        ));
  }

  static void _testConnectLatency(
      List items,
      Map<String, String> contectDirectLatency,
      Map<String, String> contectCurrentLatency,
      String detourDirect,
      String detourCurrent) {
    List<String> urls = [];

    for (var item in items) {
      String url = item["url"];
      if (_taskQueue == null || !_taskQueue!.hasTask(url)) {
        urls.add(url);
      }
    }
    _testConnectLatencyParallel(contectDirectLatency, contectCurrentLatency,
        detourDirect, detourCurrent, urls);
  }

  static void _testConnectLatencyParallel(
      Map<String, String> contectDirectLatency,
      Map<String, String> contectCurrentLatency,
      String detourDirect,
      String detourCurrent,
      List<String> urls) {
    if (urls.isEmpty) {
      return;
    }
    _taskQueue ??= ParallelTaskQueue((url) async {
      bool started = await VPNService.getStarted();
      if (started) {
        if (url == SettingConfigItemDNS.kDNSLocal ||
            url == SettingConfigItemDNS.kDNSDHCP) {
          ReturnResult<int> resultDirect =
              await ServerManager.testDNSConnectLatency(
                  [url], detourDirect, null);
          if (resultDirect.error != null) {
            contectDirectLatency[url] = resultDirect.error!.message;
          } else {
            contectDirectLatency[url] = resultDirect.data.toString();
          }

          contectCurrentLatency[url] = "not support";
        } else {
          var value = await Future.wait([
            ServerManager.testDNSConnectLatency([url], detourDirect, null),
            ServerManager.testDNSConnectLatency([url], detourCurrent, null)
          ]);

          if (value[0].error != null) {
            contectDirectLatency[url] = value[0].error!.message;
          } else {
            contectDirectLatency[url] = value[0].data.toString();
          }

          if (value[1].error != null) {
            contectCurrentLatency[url] = value[1].error!.message;
          } else {
            contectCurrentLatency[url] = value[1].data.toString();
          }
        }
      } else {
        _taskQueue?.cancel();
        _taskQueue = null;
      }
      return url;
    }, (url, int left, int total, bool start, bool finish) {
      if (finish) {
        _taskQueue = null;
      }
    }, _kMaxTasks, []);
    _taskQueue!.addTasks(urls);
    _taskQueue!.run();
  }

  Widget createWidget(dynamic current, List<String> dnsAddress,
      Set<String> disabled, Size windowSize, bool tunMode) {
    const double latencyWidth = 60.0;
    const double deleteWidth = 30.0;

    double centerWidth = windowSize.width - latencyWidth * 2 - deleteWidth - 70;

    var addr = current[SettingConfigItemDNS.kDNSUrl];
    var isp = current[SettingConfigItemDNS.kDNSIsp];
    String? directLatenty = _contectDirectLatency[addr];
    String? currentLatenty = _contectCurrentLatency[addr];
    bool disable = disabled.contains(addr);
    if (!disable) {
      if (dnsAddress.length >= SettingConfigItemDNS.kDNSServerMax &&
          !dnsAddress.contains(addr)) {
        disable = true;
      }
    }
    Color? color = disable ? ThemeDefine.kColorGrey : null;
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      child: Material(
        color: color,
        borderRadius: ThemeDefine.kBorderRadius,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          width: double.infinity,
          //height: ThemeConfig.kListItemHeight2,
          child: Row(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        Text(
                          isp,
                          style: TextStyle(
                            fontSize: ThemeConfig.kFontSizeGroupItem,
                          ),
                        ),
                      ]),
                      Row(
                        children: [
                          SizedBox(
                            width: centerWidth,
                            child: Text(
                              addr,
                              style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CommonWidget.createLatencyWidget(
                      context,
                      ThemeConfig.kListItemHeight,
                      _taskQueue != null && directLatenty == null,
                      _taskQueue != null && _taskQueue!.running(addr),
                      directLatenty ?? "", onTapLatencyReload: () async {
                    _testConnectLatency(
                        [current],
                        _contectDirectLatency,
                        _contectCurrentLatency,
                        kOutboundTagDirect,
                        VPNService.getCurrent().tag);

                    setState(() {});
                  }),
                  CommonWidget.createLatencyWidget(
                      context,
                      ThemeConfig.kListItemHeight,
                      _taskQueue != null && currentLatenty == null,
                      _taskQueue != null && _taskQueue!.running(addr),
                      currentLatenty ?? "", onTapLatencyReload: () async {
                    _testConnectLatency(
                        [current],
                        _contectDirectLatency,
                        _contectCurrentLatency,
                        kOutboundTagDirect,
                        VPNService.getCurrent().tag);

                    setState(() {});
                  }),
                  Checkbox(
                    tristate: true,
                    value: dnsAddress.contains(addr),
                    onChanged: disable
                        ? null
                        : (bool? value) {
                            var settingConfig = SettingManager.getConfig();

                            if (widget.dnsType == DNSType.dnsTypeResolver) {
                              settingConfig.dns
                                  .addOrRemoveResolverDns(addr, value == true);
                            } else if (widget.dnsType ==
                                DNSType.dnsTypeOutbound) {
                              settingConfig.dns
                                  .addOrRemoveOutboundDns(addr, value == true);
                            } else if (widget.dnsType ==
                                DNSType.dnsTypeDirect) {
                              settingConfig.dns
                                  .addOrRemoveDirectDns(addr, value == true);
                            } else if (widget.dnsType == DNSType.dnsTypeProxy) {
                              settingConfig.dns
                                  .addOrRemoveProxyDns(addr, value == true);
                            }
                            SettingManager.setDirty(true);
                            setState(() {});
                          },
                  ),
                  !SettingConfigItemDNS.containsDNSURL(addr) &&
                          (_taskQueue == null)
                      ? SizedBox(
                          width: deleteWidth,
                          height: ThemeConfig.kListItemHeight,
                          child: InkWell(
                            onTap: () async {
                              onTapDelete(addr);
                            },
                            child: const Icon(
                              Icons.remove_circle_outlined,
                              size: 26,
                              color: Colors.red,
                            ),
                          ))
                      : const SizedBox(
                          width: deleteWidth,
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapMore() {
    final tcontext = Translations.of(context);
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
                Icons.add_outlined,
                size: 30,
              ),
            ),
            onTap: () {
              onTapAdd();
            },
          ),
          PopupMenuItem(
              value: 1,
              child: const SizedBox(
                width: 30,
                height: 30,
                child: Icon(
                  Icons.info_outlined,
                  size: 30,
                ),
              ),
              onTap: () {
                DialogUtils.showAlertDialog(
                    context, tcontext.DnsSettingsScreen.dnsDesc);
              }),
        ]);
  }

  void onTapAdd() async {
    final tcontext = Translations.of(context);
    final textControllerISP = TextEditingController();
    final textControllerUrl = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            //contentPadding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  controller: textControllerISP,
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: "ISP",
                    hintText: "ISP",
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  controller: textControllerUrl,
                  textInputAction: TextInputAction.done,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    labelText: tcontext.meta.url,
                    hintText: tcontext.meta.url,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    child: Text(tcontext.meta.ok),
                    onPressed: () {
                      String? ispText = Text(textControllerISP.text).data;
                      String? urlText = Text(textControllerUrl.text).data;
                      if (ispText == null || urlText == null) {
                        Navigator.pop(context);
                        return;
                      }
                      ispText = ispText.trim();
                      urlText = urlText.trim();

                      if (ispText.isEmpty) {
                        DialogUtils.showAlertDialog(
                            context, tcontext.DnsSettingsScreen.ispCanNotEmpty);
                        return;
                      }
                      if (urlText.isEmpty) {
                        DialogUtils.showAlertDialog(
                            context, tcontext.DnsSettingsScreen.urlCanNotEmpty);
                        return;
                      }
                      Uri? uri = Uri.tryParse(urlText);
                      if (uri == null) {
                        DialogUtils.showAlertDialog(
                            context, tcontext.meta.urlInvalid);
                        return;
                      }

                      if (!SettingConfigItemDNS.isDNSValidScheme(urlText)) {
                        DialogUtils.showAlertDialog(context,
                            tcontext.DnsSettingsScreen.error(p: urlText));
                        return;
                      }
                      if (!SettingConfigItemDNS.containsDNSURL(urlText)) {
                        SettingManager.getConfig().dns.list.add({
                          SettingConfigItemDNS.kDNSIsp: ispText,
                          SettingConfigItemDNS.kDNSUrl: urlText
                        });
                        SettingManager.saveConfig();
                      }

                      Navigator.pop(context);

                      _buildData();
                      setState(() {});
                    }),
                const SizedBox(
                  width: 60,
                ),
                ElevatedButton(
                  child: Text(tcontext.meta.cancel),
                  onPressed: () => Navigator.pop(context),
                ),
              ]),
            ],
          );
        });
  }

  void onTapDelete(String url) async {
    var settingConfig = SettingManager.getConfig();
    settingConfig.dns.addOrRemoveResolverDns(url, false);
    settingConfig.dns.addOrRemoveOutboundDns(url, false);
    settingConfig.dns.addOrRemoveDirectDns(url, false);
    settingConfig.dns.addOrRemoveProxyDns(url, false);

    for (int i = 0; i < settingConfig.dns.list.length; ++i) {
      if (settingConfig.dns.list[i][SettingConfigItemDNS.kDNSUrl] == url) {
        settingConfig.dns.list.removeAt(i);
        break;
      }
    }
    _buildData();
    setState(() {});
  }
}
