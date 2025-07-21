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
import 'package:karing/screens/dns_settings_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:tuple/tuple.dart';

class DnsAutoSetupScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "DnsAutoSetupScreen");
  }

  const DnsAutoSetupScreen({super.key});

  @override
  State<DnsAutoSetupScreen> createState() => _DnsAutoSetupScreenState();
}

class _DnsAutoSetupScreenState extends LasyRenderingState<DnsAutoSetupScreen> {
  static ParallelTaskQueue? _taskQueue;
  static const int _kMaxTasks = 5;
  final List _searchedData = [];
  Timer? _timer;

  @override
  void initState() {
    _searchedData.addAll(SettingManager.getConfig().dns.list);
    _searchedData.addAll(SettingConfigItemDNS.kDNSList);
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
                    SizedBox(
                      width: windowSize.width - 50 * 2,
                      child: Text(
                        tcontext.SettingsScreen.dnsAutoSetServer,
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
                                  Icons.bolt_outlined,
                                  size: 26,
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
    return await Biz.startOrRestartIfDirtyVPN(context, "DnsAutoSetupScreen");
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
    DnsSettingsScreen.getDirect().clear();
    DnsSettingsScreen.getCurrent().clear();
    setState(() {});
    _testConnectLatency(
        _searchedData,
        DnsSettingsScreen.getDirect(),
        DnsSettingsScreen.getCurrent(),
        kOutboundTagDirect,
        VPNService.getCurrent().tag, (
      Map<String, String> contectDirectLatency,
      Map<String, String> contectCurrentLatency,
    ) async {
      List<Tuple2<String, String>> bydDirect = contectDirectLatency.entries
          .map((entry) => Tuple2(entry.key, entry.value))
          .toList();
      List<Tuple2<String, String>> byCurrent = contectCurrentLatency.entries
          .map((entry) => Tuple2(entry.key, entry.value))
          .toList();
      bydDirect.removeWhere((ele) {
        return null == int.tryParse(ele.item2);
      });
      byCurrent.removeWhere((ele) {
        return null == int.tryParse(ele.item2);
      });
      bydDirect.sort(sort);
      byCurrent.sort(sort);
      if (bydDirect.isNotEmpty || byCurrent.isNotEmpty) {
        bool tun = await VPNService.getTunMode();
        var settingConfig = SettingManager.getConfig();

        settingConfig.dns
            .setOutboundDns(getNonResolverDNS(bydDirect, true, tun));
        settingConfig.dns.setDirectDns(getNonResolverDNS(bydDirect, true, tun));
        settingConfig.dns.setResolverDns(getResolverDNS(bydDirect, tun));
        bool enableProxyResolveByProxy = settingConfig.dns.proxyResolveMode ==
            SettingConfigItemDNSProxyResolveMode.proxy;
        if (!settingConfig.novice && enableProxyResolveByProxy) {
          settingConfig.dns
              .setProxyDns(getNonResolverDNS(byCurrent, false, tun));
        } else {
          settingConfig.dns
              .setProxyDns(getNonResolverDNS(bydDirect, false, tun));
        }

        SettingManager.setDirty(true);
        if (!mounted) {
          return;
        }
        final tcontext = Translations.of(context);
        DialogUtils.showAlertDialog(context, tcontext.meta.done);
      }
    });

    if (!mounted) {
      return;
    }
    setState(() {});
  }

  static int sort(Tuple2<String, String> a, Tuple2<String, String> b) {
    int ua = int.parse(a.item2);
    int ub = int.parse(b.item2);
    return ua - ub;
  }

  Widget _loadListView(bool tun) {
    Size windowSize = MediaQuery.of(context).size;

    return Scrollbar(
        thumbVisibility: true,
        child: ListView.separated(
          itemCount: _searchedData.length,
          itemBuilder: (BuildContext context, int index) {
            var current = _searchedData[index];
            return createWidget(current, windowSize);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 1,
              thickness: 0.3,
            );
          },
        ));
  }

  static void _testConnectLatency(
      List items,
      Map<String, String> contectDirectLatency,
      Map<String, String> contectCurrentLatency,
      String detourDirect,
      String detourCurrent,
      Function(
        Map<String, String> contectDirectLatency,
        Map<String, String> contectCurrentLatency,
      ) onfinish) {
    List<String> urls = [];

    for (var item in items) {
      String url = item["url"];
      if (_taskQueue == null || !_taskQueue!.hasTask(url)) {
        urls.add(url);
      }
    }
    _testConnectLatencyParallel(contectDirectLatency, contectCurrentLatency,
        detourDirect, detourCurrent, urls, onfinish);
  }

  static void _testConnectLatencyParallel(
      Map<String, String> contectDirectLatency,
      Map<String, String> contectCurrentLatency,
      String detourDirect,
      String detourCurrent,
      List<String> urls,
      Function(
        Map<String, String> contectDirectLatency,
        Map<String, String> contectCurrentLatency,
      ) onfinish) {
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
        onfinish(
          contectDirectLatency,
          contectCurrentLatency,
        );
      }
    }, _kMaxTasks, []);
    _taskQueue!.addTasks(urls);
    _taskQueue!.run();
  }

  static List<String> getNonResolverDNS(
      List<Tuple2<String, String>> list, bool includeNotSecurity, bool tun) {
    List<String> result = [];
    for (var tuple in list) {
      if (tuple.item1 == SettingConfigItemDNS.kDNSLocal) {
        if (includeNotSecurity) {
          if (Platform.isWindows) {
            if (!tun) {
              result.add(tuple.item1);
            }
          } else {
            result.add(tuple.item1);
          }
        }
      } else if (tuple.item1 == SettingConfigItemDNS.kDNSDHCP) {
        if (includeNotSecurity) {
          if (!Platform.isAndroid) {
            result.add(tuple.item1);
          }
        }
      } else {
        Uri? uri = Uri.tryParse(tuple.item1);
        if (uri != null) {
          if (includeNotSecurity) {
            result.add(tuple.item1);
          } else {
            if (uri.scheme != "tcp" && uri.scheme != "udp") {
              result.add(tuple.item1);
            }
          }
        }
        if (result.length >= SettingConfigItemDNS.kDNSServerMax) {
          break;
        }
      }
    }

    return result;
  }

  static List<String> getResolverDNS(
      List<Tuple2<String, String>> list, bool tun) {
    List<String> result = [];
    for (var tuple in list) {
      if (tuple.item1 == SettingConfigItemDNS.kDNSLocal) {
        if (Platform.isWindows) {
          if (!tun) {
            result.add(tuple.item1);
          }
        } else {
          result.add(tuple.item1);
        }
      } else if (tuple.item1 == SettingConfigItemDNS.kDNSDHCP) {
        if (!Platform.isAndroid) {
          result.add(tuple.item1);
        }
      } else {
        Uri? uri = Uri.tryParse(tuple.item1);
        if (uri != null) {
          if (NetworkUtils.isIpv4(uri.host) || NetworkUtils.isIpv6(uri.host)) {
            result.add(tuple.item1);
          }
        }
      }
      if (result.length >= SettingConfigItemDNS.kDNSServerMax) {
        break;
      }
    }

    return result;
  }

  Widget createWidget(dynamic current, Size windowSize) {
    const double latencyWidth = 60.0;

    double centerWidth = windowSize.width - latencyWidth * 2 - 30;

    var addr = current[SettingConfigItemDNS.kDNSUrl];
    var isp = current[SettingConfigItemDNS.kDNSIsp];
    String? directLatenty = DnsSettingsScreen.getDirect()[addr];
    String? currentLatenty = DnsSettingsScreen.getCurrent()[addr];

    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        width: double.infinity,
        height: ThemeConfig.kListItemHeight + 5,
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
                    directLatenty ?? ""),
                CommonWidget.createLatencyWidget(
                    context,
                    ThemeConfig.kListItemHeight,
                    _taskQueue != null && currentLatenty == null,
                    _taskQueue != null && _taskQueue!.running(addr),
                    currentLatenty ?? ""),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
