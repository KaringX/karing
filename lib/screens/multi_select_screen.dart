// ignore_for_file: unused_catch_stack

import 'package:flutter/material.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';
import 'package:tuple/tuple.dart';

class MultiSelectScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "MultiSelectScreen");
  }

  final String title;

  final Future<List<Tuple2<String, String>>> Function() getData;
  final List<String> selectedData;
  final bool showKey;

  const MultiSelectScreen(
      {super.key,
      required this.title,
      required this.getData,
      this.selectedData = const [],
      this.showKey = false});

  @override
  State<MultiSelectScreen> createState() => _MultiSelectScreenState();
}

class _MultiSelectScreenState extends LasyRenderingState<MultiSelectScreen> {
  final _searchController = TextEditingController();
  List<Tuple2<String, String>> _allData = [];
  List<Tuple2<String, String>> _searchedData = [];

  @override
  void initState() {
    super.initState();

    _loadData();
  }

  @override
  void dispose() {
    super.dispose();
    SettingManager.saveConfig();
  }

  void _loadData() async {
    _allData = await widget.getData();
    _searchedData = _allData;
    setState(() {});
  }

  _loadSearch(String? textVal) {
    if ((textVal != null) && textVal.isNotEmpty) {
      String search = textVal.toLowerCase();
      final data = _allData.where((name) {
        return name.item1.toLowerCase().contains(search) ||
            name.item2.toLowerCase().contains(search);
      }).toList();

      _searchedData = data;
      setState(() {});
    } else {
      _searchedData = _allData;
      setState(() {});
    }
  }

  _clearSearch() {
    _searchController.clear();
    _searchedData = _allData;
    setState(() {});
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
                        widget.title,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.pop(context, widget.selectedData),
                      child: const SizedBox(
                        width: 50,
                        height: 30,
                        child: Icon(
                          Icons.done_outlined,
                          size: 26,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
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
                    icon: Icon(
                      Icons.search_outlined,
                    ),
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
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: _loadListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _loadListView() {
    Size windowSize = MediaQuery.of(context).size;
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.separated(
          itemCount: _searchedData.length,
          itemBuilder: (BuildContext context, int index) {
            Tuple2<String, String> current = _searchedData[index];
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

  Widget createWidget(Tuple2<String, String> current, Size windowSize) {
    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          width: double.infinity,
          height: 66,
          child: Row(
            children: [
              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(children: [
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: windowSize.width - 80,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  current.item2,
                                  style: TextStyle(
                                      fontSize: ThemeConfig.kFontSizeGroupItem),
                                ),
                                if (widget.showKey) ...[
                                  Text(
                                    current.item1,
                                    style: const TextStyle(fontSize: 12),
                                  )
                                ],
                              ]),
                        ),
                        Checkbox(
                          tristate: true,
                          value: widget.selectedData.contains(current.item1),
                          onChanged: (bool? value) {
                            if (value == true) {
                              widget.selectedData.add(current.item1);
                            } else {
                              widget.selectedData.remove(current.item1);
                            }
                            SettingManager.setDirty(true);
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
}
