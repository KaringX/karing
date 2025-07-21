import 'package:flutter/material.dart';

import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';

class ServerSelectKeywordsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "ServerSelectKeywordsScreen");
  }

  const ServerSelectKeywordsScreen({super.key});

  @override
  State<ServerSelectKeywordsScreen> createState() =>
      _ServerSelectSearchSettingsScreenState();
}

class _ServerSelectSearchSettingsScreenState
    extends LasyRenderingState<ServerSelectKeywordsScreen> {
  List _allData = [];

  @override
  void initState() {
    _buildData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void _buildData() {
    _allData = ServerManager.getUse().serverSelectSearchSelect;
    _allData.sort((a, b) => a.compareTo(b));
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
                        tcontext.meta.candidateWord,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        onTapAdd();
                      },
                      child: const SizedBox(
                        width: 50,
                        height: 30,
                        child: Icon(
                          Icons.add_outlined,
                          size: 26,
                        ),
                      ),
                    )
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
    Size windowSize = MediaQuery.of(context).size;
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.separated(
          itemCount: _allData.length,
          itemBuilder: (BuildContext context, int index) {
            var current = _allData[index];
            return createWidget(index, current, windowSize);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 1,
              thickness: 0.3,
            );
          },
        ));
  }

  Widget createWidget(int index, dynamic current, Size windowSize) {
    const double rightWidth = 30.0;
    double centerWidth = windowSize.width - rightWidth - 20;

    return Material(
      borderRadius: ThemeDefine.kBorderRadius,
      child: InkWell(
        onTap: () {
          Navigator.pop(context, current);
        },
        onLongPress: () async {
          onLongPressEdit(index, current);
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          width: double.infinity,
          height: ThemeConfig.kListItemHeight2,
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
                          width: centerWidth,
                          child: Text(
                            current,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: ThemeConfig.kFontSizeGroupItem,
                            ),
                          ),
                        ),
                        SizedBox(
                            width: rightWidth,
                            height: ThemeConfig.kListItemHeight2 - 2,
                            child: InkWell(
                              onTap: () async {
                                onTapDelete(current);
                              },
                              child: const Icon(
                                Icons.remove_circle_outlined,
                                size: 26,
                                color: Colors.red,
                              ),
                            ))
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

  void onTapAdd() async {
    final tcontext = Translations.of(context);
    String? text = await DialogUtils.showTextInputDialog(
        context, tcontext.meta.keywordOrRegx, "", null, null, null, (text) {
      text = text.trim();
      if (text.isEmpty) {
        return false;
      }

      return true;
    });
    var use = ServerManager.getUse();
    if (text != null && !use.serverSelectSearchSelect.contains(text)) {
      use.serverSelectSearchSelect.add(text);
      ServerManager.saveUse();
      _buildData();
      setState(() {});
    }
  }

  void onTapDelete(String text) {
    ServerManager.getUse().serverSelectSearchSelect.remove(text);
    ServerManager.saveUse();
    _buildData();

    setState(() {});

    ServerConfigGroupItem item = ServerManager.getCustomGroup();
    bool dirty = false;
    for (int i = 0; i < item.urltests.length; ++i) {
      for (int j = 0; j < item.urltests[i].regexs.length; ++j) {
        if (item.urltests[i].regexs[j] == text) {
          item.urltests[i].regexs.removeAt(j);
          --j;
          dirty = true;
        }
      }
    }
    if (item.enable && dirty) {
      ServerManager.setDirty(true);
    }
  }

  void onLongPressEdit(int index, String text) async {
    final tcontext = Translations.of(context);
    String? newText = await DialogUtils.showTextInputDialog(
        context, tcontext.meta.keywordOrRegx, text, null, null, null, (text) {
      text = text.trim();
      if (text.isEmpty) {
        return false;
      }

      return true;
    });
    var use = ServerManager.getUse();

    if (index < use.serverSelectSearchSelect.length &&
        newText != null &&
        newText != text &&
        !use.serverSelectSearchSelect.contains(newText)) {
      use.serverSelectSearchSelect[index] = newText;
      ServerManager.saveUse();
      _buildData();
      setState(() {});

      ServerConfigGroupItem item = ServerManager.getCustomGroup();
      bool dirty = false;
      for (int i = 0; i < item.urltests.length; ++i) {
        for (int j = 0; j < item.urltests[i].regexs.length; ++j) {
          if (item.urltests[i].regexs[j] == text) {
            item.urltests[i].regexs[j] = newText;
            dirty = true;
          }
        }
      }
      if (item.enable && dirty) {
        ServerManager.setDirty(true);
      }
    }
  }
}
