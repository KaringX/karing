// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:tuple/tuple.dart';

class MyProfilesReorderScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "MyProfilesReorderScreen");
  }

  final void Function(List<String>) onReorder;
  const MyProfilesReorderScreen({super.key, required this.onReorder});

  @override
  State<MyProfilesReorderScreen> createState() =>
      MyProfilesReorderScreenState();
}

class MyProfilesReorderScreenState
    extends LasyRenderingState<MyProfilesReorderScreen> {
  final List<Tuple2<String, String>> _rawsubAndConfigList = [];
  final List<Tuple2<String, String>> _subAndConfigList = [];
  @override
  void initState() {
    ServerConfig serverConfig = ServerManager.getConfig();
    for (var item in serverConfig.items) {
      if (item.groupid == ServerManager.getCustomGroupId()) {
        continue;
      }
      var t = Tuple2(item.groupid, item.remark);
      _rawsubAndConfigList.add(t);
      _subAndConfigList.add(t);
    }

    super.initState();
  }

  @override
  void dispose() {
    bool dirty = false;
    for (var i = 0; i < _subAndConfigList.length; i++) {
      var t1 = _subAndConfigList[i];
      var t2 = _rawsubAndConfigList[i];
      if (t1.item1 != t2.item1) {
        dirty = true;
        break;
      }
    }
    if (dirty) {
      var list = _subAndConfigList.map((e) => e.item1).toList();
      widget.onReorder(list);
    }
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
                      width: windowSize.width - 50 * 2,
                      child: Text(
                        tcontext.meta.sort,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ReorderableListView(
                    header: Container(
                      height: 0,
                    ),
                    children: _subAndConfigList.map((item) {
                      return Material(
                        key: Key(item.item1.toString()),
                        borderRadius: ThemeDefine.kBorderRadius,
                        child: Container(
                          height: 45,
                          width: double.infinity,
                          margin: const EdgeInsets.only(top: 2),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                item.item2,
                                style: TextStyle(
                                  fontSize: ThemeConfig.kFontSizeGroupItem,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                    onReorder: (int oldIndex, int newIndex) {
                      if (oldIndex < newIndex) {
                        newIndex -= 1;
                      }
                      var item = _subAndConfigList.removeAt(oldIndex);
                      _subAndConfigList.insert(newIndex, item);
                      setState(() {});
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
