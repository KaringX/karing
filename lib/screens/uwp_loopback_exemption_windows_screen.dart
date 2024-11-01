// ignore_for_file: unused_catch_stack

import 'package:flutter/material.dart';
import 'package:karing/app/utils/uwp_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';

class UWPLoopbackExemptionWindowsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "UWPLoopbackExemptionWindowsScreen");
  }

  const UWPLoopbackExemptionWindowsScreen({super.key});

  @override
  State<UWPLoopbackExemptionWindowsScreen> createState() =>
      _UWPLoopbackExemptionWindowsScreenState();
}

class _UWPLoopbackExemptionWindowsScreenState
    extends LasyRenderingState<UWPLoopbackExemptionWindowsScreen> {
  bool? _checkAll;
  bool _loading = true;
  final List<UWPMappings> _searchedData = [];
  final Set<String> _netIsolation = {};
  final Set<String> _checked = {};

  @override
  void initState() {
    getUWPMappings();
    getUWPNetIsolation();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> getUWPMappings() async {
    if (!mounted) {
      return;
    }
    _searchedData.clear();
    _loading = true;
    List<UWPMappings> data = await UWPUtils.getMappings();
    if (!mounted) {
      return;
    }
    _searchedData.addAll(data);
    _searchedData.sort(sort);
    _loading = false;
    setState(() {});
  }

  Future<void> getUWPNetIsolation() async {
    if (!mounted) {
      return;
    }
    _checked.clear();
    _netIsolation.clear();
    Set<String> data = await UWPUtils.getNetIsolation();
    if (!mounted) {
      return;
    }
    _netIsolation.addAll(data);
    _checked.addAll(data);
    setState(() {});
  }

  int sort(UWPMappings a, UWPMappings b) {
    return a.name.compareTo(b.name);
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
                      width: windowSize.width - 50 - 50 - 50,
                      child: Text(
                        tcontext.uwpExemption,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 50,
                          height: 30,
                          child: Checkbox(
                            tristate: true,
                            value: _checkAll ?? false,
                            onChanged: (bool? value) {
                              _checkAll = value ?? false;
                              _checked.clear();
                              if (_checkAll == true) {
                                for (var item in _searchedData) {
                                  _checked.add(item.sid);
                                }
                              }

                              setState(() {});
                            },
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
                              Icons.done,
                              size: 26,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
    if (_loading) {
      return const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 26,
              height: 26,
              child: RepaintBoundary(
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            )
          ]);
    }
    Size windowSize = MediaQuery.of(context).size;
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.builder(
          itemCount: _searchedData.length,
          itemExtent: 66,
          itemBuilder: (BuildContext context, int index) {
            UWPMappings current = _searchedData[index];
            return createWidget(current, windowSize, index);
          },
        ));
  }

  Widget createWidget(UWPMappings current, Size windowSize, int index) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      child: Material(
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
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: 30,
                            child: Text(
                              (index + 1).toString(),
                              style: TextStyle(
                                  fontSize: ThemeConfig.kFontSizeGroupItem),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          SizedBox(
                            width: windowSize.width - 110,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    current.name,
                                    style: TextStyle(
                                        fontSize:
                                            ThemeConfig.kFontSizeGroupItem),
                                  ),
                                  current.sid == current.sid
                                      ? const SizedBox.shrink()
                                      : Text(
                                          current.sid,
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                ]),
                          ),
                          Checkbox(
                            tristate: true,
                            value: _checked.contains(current.sid),
                            onChanged: (bool? value) {
                              if (value == true) {
                                _checked.add(current.sid);
                              } else {
                                _checked.remove(current.sid);
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
      ),
    );
  }

  Future<void> onTapDone() async {
    if (_checked.isEmpty) {
      await UWPUtils.SetNetIsolation(_netIsolation, false);
      //await UWPUtils.ClearNetIsolation();
    } else if (_checked.isNotEmpty) {
      Set<String> inset = _checked.intersection(_netIsolation);
      Set<String> remove = _netIsolation.difference(inset);
      Set<String> add = _checked.difference(inset);
      await UWPUtils.SetNetIsolation(remove, false);
      await UWPUtils.SetNetIsolation(add, true);
    }

    await getUWPNetIsolation();
    if (!mounted) {
      return;
    }
    final tcontext = Translations.of(context);
    DialogUtils.showAlertDialog(context, tcontext.done);
  }
}
