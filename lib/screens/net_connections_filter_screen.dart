// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/listview_multi_parts_builder.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';

class NetConnectionFilter {
  Set<String> networks = {};
  Set<String> hosts = {};
  Set<String> ports = {};
  Set<String> process = {};
  Set<String> chains = {};
  Set<String> rules = {};
}

class NetConnectionsFilterScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "NetConnectionsFilterScreen");
  }

  final NetConnectionFilter options;
  final NetConnectionFilter filter;
  const NetConnectionsFilterScreen(
      {super.key, required this.options, required this.filter});

  @override
  State<NetConnectionsFilterScreen> createState() =>
      _NetConnectionsFilterScreenState();
}

class _NetConnectionsFilterScreenState
    extends LasyRenderingState<NetConnectionsFilterScreen> {
  NetConnectionFilter _filter = NetConnectionFilter();
  final List<ListViewMultiPartsItem> _listViewParts = [];
  @override
  void initState() {
    _filter = widget.filter;
    _buildData();
    super.initState();
  }

  @override
  void dispose() {
    _listViewParts.clear();
    super.dispose();
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
                      width: windowSize.width - 50 * 3,
                      child: Text(
                        tcontext.NetConnectionsFilterScreen.title,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () async {
                            onTapClear();
                          },
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.delete_outlined,
                              size: 30,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            onTapDone();
                          },
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(
                              Icons.done_outlined,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(child: ListViewMultiPartsBuilder.build(_listViewParts)),
            ],
          ),
        ),
      ),
    );
  }

  void _buildDataItem(String title, Set<String> options, Set<String> filters) {
    ListViewMultiPartsItem item = ListViewMultiPartsItem();
    item.data = title;
    item.creator = (data, index, bindNO) {
      return createGroupTitle(data);
    };
    _listViewParts.add(item);
    var list = options.toList();
    list.sort((a, b) => a.compareTo(b));
    for (var option in list) {
      ListViewMultiPartsItem item = ListViewMultiPartsItem();
      item.data = option;
      item.creator = (data, index, bindNO) {
        return createGroupItem(data, filters);
      };
      _listViewParts.add(item);
    }
  }

  void _buildData() {
    _buildDataItem("tcp/udp", widget.options.networks, _filter.networks);
    _buildDataItem(t.NetConnectionsFilterScreen.hostIp, widget.options.hosts,
        _filter.hosts);
    _buildDataItem(t.meta.port, widget.options.ports, _filter.ports);
    if (Platform.isWindows || Platform.isLinux || Platform.isAndroid) {
      _buildDataItem(t.NetConnectionsFilterScreen.app, widget.options.process,
          _filter.process);
    }
    _buildDataItem(
        t.NetConnectionsFilterScreen.rule, widget.options.rules, _filter.rules);
    _buildDataItem(t.NetConnectionsFilterScreen.chain, widget.options.chains,
        _filter.chains);
  }

  Widget createGroupTitle(String title) {
    return Row(
      children: [
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          height: 40,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: ThemeConfig.kFontSizeListItem,
              fontWeight: ThemeConfig.kFontWeightListItem,
            ),
          ),
        ),
      ],
    );
  }

  Widget createGroupItem(String text, Set<String> filter) {
    Size windowSize = MediaQuery.of(context).size;
    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          width: double.infinity,
          //height: 66,
          child: Row(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        SizedBox(
                          width: windowSize.width - 80,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text,
                                  style: TextStyle(
                                      fontSize: ThemeConfig.kFontSizeGroupItem),
                                ),
                              ]),
                        ),
                        Checkbox(
                          tristate: true,
                          value: filter.contains(text),
                          onChanged: (bool? value) {
                            if (value == true) {
                              filter.add(text);
                            } else {
                              filter.remove(text);
                            }
                            setState(() {});
                          },
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onTapClear() {
    _filter.networks.clear();
    _filter.hosts.clear();
    _filter.ports.clear();
    _filter.process.clear();
    _filter.chains.clear();
    _filter.rules.clear();
    setState(() {});
  }

  void onTapDone() {
    Navigator.pop(context, _filter);
  }
}
