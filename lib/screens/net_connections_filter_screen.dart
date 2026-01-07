// ignore_for_file: constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/listview_multi_parts_builder.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';

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
  const NetConnectionsFilterScreen({
    super.key,
    required this.options,
    required this.filter,
  });

  @override
  State<NetConnectionsFilterScreen> createState() =>
      _NetConnectionsFilterScreenState();
}

class _NetConnectionsFilterScreenState
    extends LasyRenderingState<NetConnectionsFilterScreen> {
  late NetConnectionFilter _options;
  late NetConnectionFilter _filter;
  final List<ListViewMultiPartsItem> _listViewParts = [];
  bool _dirty = false;

  final _searchController = TextEditingController();
  @override
  void initState() {
    _options = widget.options;
    _filter = widget.filter;
    _buildData();
    super.initState();
  }

  @override
  void dispose() {
    _listViewParts.clear();
    _searchController.dispose();
    super.dispose();
  }

  _loadSearch(String? textVal) {
    if ((textVal != null) && textVal.isNotEmpty) {
      _options = NetConnectionFilter();
      RegExp? searchTextReg;
      String searchText = textVal.toLowerCase();
      try {
        searchTextReg = RegExp(searchText, caseSensitive: false);
      } catch (err, stacktrace) {}
      for (var item in widget.options.networks) {
        if (item.toLowerCase().contains(searchText) ||
            (searchTextReg != null &&
                searchTextReg.hasMatch(item.toLowerCase()))) {
          _options.networks.add(item);
        }
      }
      for (var item in widget.options.hosts) {
        if (item.toLowerCase().contains(searchText) ||
            (searchTextReg != null &&
                searchTextReg.hasMatch(item.toLowerCase()))) {
          _options.hosts.add(item);
        }
      }
      for (var item in widget.options.ports) {
        if (item.toLowerCase().contains(searchText) ||
            (searchTextReg != null &&
                searchTextReg.hasMatch(item.toLowerCase()))) {
          _options.ports.add(item);
        }
      }
      for (var item in widget.options.process) {
        if (item.toLowerCase().contains(searchText) ||
            (searchTextReg != null &&
                searchTextReg.hasMatch(item.toLowerCase()))) {
          _options.process.add(item);
        }
      }
      for (var item in widget.options.chains) {
        if (item.toLowerCase().contains(searchText) ||
            (searchTextReg != null &&
                searchTextReg.hasMatch(item.toLowerCase()))) {
          _options.chains.add(item);
        }
      }
      for (var item in widget.options.rules) {
        if (item.toLowerCase().contains(searchText) ||
            (searchTextReg != null &&
                searchTextReg.hasMatch(item.toLowerCase()))) {
          _options.rules.add(item);
        }
      }
      _buildData();
      setState(() {});
    } else {
      _options = widget.options;
      _buildData();
      setState(() {});
    }
  }

  _clearSearch() {
    _searchController.clear();
    _options = widget.options;
    _buildData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.zero, child: AppBar()),
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
                        child: Icon(Icons.arrow_back_ios_outlined, size: 26),
                      ),
                    ),
                    SizedBox(
                      width: windowSize.width - 50 * 3,
                      child: Text(
                        tcontext.meta.filter,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontWeight: ThemeConfig.kFontWeightTitle,
                          fontSize: ThemeConfig.kFontSizeTitle,
                        ),
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
                            child: Icon(Icons.delete_outlined, size: 30),
                          ),
                        ),
                        InkWell(
                          onTap: () async {
                            onTapDone();
                          },
                          child: const SizedBox(
                            width: 50,
                            height: 30,
                            child: Icon(Icons.done_outlined, size: 30),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.only(left: 15, right: 15),
                height: 44,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: ThemeDefine.kBorderRadius,
                ),
                child: TextFieldEx(
                  controller: _searchController,
                  textInputAction: TextInputAction.done,
                  onChanged: _loadSearch,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: Icon(Icons.search_outlined),
                    hintText: tcontext.meta.search,
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear_outlined),
                            onPressed: _clearSearch,
                          )
                        : null,
                  ),
                ),
              ),
              const SizedBox(height: 10),
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
    _listViewParts.clear();
    _buildDataItem("tcp/udp", _options.networks, _filter.networks);
    _buildDataItem(
      t.NetConnectionsFilterScreen.hostIp,
      _options.hosts,
      _filter.hosts,
    );
    _buildDataItem(t.meta.port, _options.ports, _filter.ports);
    if (Platform.isWindows || Platform.isLinux || Platform.isAndroid) {
      _buildDataItem(
        t.NetConnectionsFilterScreen.app,
        _options.process,
        _filter.process,
      );
    }
    _buildDataItem(
      t.NetConnectionsFilterScreen.rule,
      _options.rules,
      _filter.rules,
    );
    _buildDataItem(
      t.NetConnectionsFilterScreen.chain,
      _options.chains,
      _filter.chains,
    );
  }

  Widget createGroupTitle(String title) {
    return Row(
      children: [
        const SizedBox(width: 5),
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
          padding: const EdgeInsets.symmetric(horizontal: 10),
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
                      Row(
                        children: [
                          SizedBox(
                            width: windowSize.width - 80,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  text,
                                  style: TextStyle(
                                    fontSize: ThemeConfig.kFontSizeGroupItem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Checkbox(
                            tristate: true,
                            value: filter.contains(text),
                            onChanged: (bool? value) {
                              _dirty = true;
                              if (value == true) {
                                filter.add(text);
                              } else {
                                filter.remove(text);
                              }
                              setState(() {});
                            },
                          ),
                        ],
                      ),
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
    _dirty = true;
    _filter.networks.clear();
    _filter.hosts.clear();
    _filter.ports.clear();
    _filter.process.clear();
    _filter.chains.clear();
    _filter.rules.clear();
    setState(() {});
  }

  void onTapDone() {
    Navigator.pop(context, _dirty ? _filter : null);
  }
}
