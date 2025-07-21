import 'package:flutter/material.dart';

import 'package:karing/app/modules/server_manager.dart';
import 'package:karing/app/utils/proxy_conf_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/server_select_screen.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:tuple/tuple.dart';

class UrlTestGroupCustomScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "UrlTestGroupCustomScreen");
  }

  const UrlTestGroupCustomScreen({super.key});

  @override
  State<UrlTestGroupCustomScreen> createState() =>
      _UrlTestGroupCustomScreenState();
}

class _UrlTestGroupCustomScreenState
    extends LasyRenderingState<UrlTestGroupCustomScreen> {
  final List<String> _groupData = [];

  @override
  void initState() {
    super.initState();
    _buildData();
  }

  void _buildData() {
    _groupData.clear();
    ServerConfigGroupItem item = ServerManager.getCustomGroup();
    for (var urltest in item.urltests) {
      _groupData.add(urltest.remark);
    }
    _groupData.sort((a, b) => a.compareTo(b));
  }

  @override
  void dispose() {
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
                        tcontext.meta.urlTestCustomGroup,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    InkWell(
                      onTap: () {
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
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.separated(
          itemCount: _groupData.length,
          itemBuilder: (BuildContext context, int index) {
            var current = _groupData[index];
            return createWidget(current);
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 1,
              thickness: 0.3,
            );
          },
        ));
  }

  Widget createWidget(String current) {
    Size windowSize = MediaQuery.of(context).size;
    const double padding = 4;
    const double rightWidth = 80;
    double leftWidth = windowSize.width - rightWidth - padding * 2 - 4;
    return Column(children: [
      Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          onTap: () {
            onTapItem(current);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: padding,
            ),
            width: double.infinity,
            height: ThemeConfig.kListItemHeight2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 4,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: leftWidth,
                  ),
                  child: Text(
                    current,
                    style: TextStyle(
                      fontSize: ThemeConfig.kFontSizeGroupItem,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.centerRight,
                  height: 40,
                  width: rightWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                          onTap: () async {
                            onTapDel(current);
                          },
                          child: const SizedBox(
                            width: 26,
                            height: ThemeConfig.kListItemHeight2,
                            child: Icon(Icons.remove_circle_outlined,
                                size: 26, color: Colors.red),
                          )),
                      const SizedBox(width: 20),
                      Container(
                        padding: const EdgeInsets.all(4),
                        child: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }

  void onTapAdd() async {
    final tcontext = Translations.of(context);
    String? text = await DialogUtils.showTextInputDialog(
        context, tcontext.meta.remark, "", null, null, null, (text) {
      text = text.trim();
      if (text.isEmpty) {
        DialogUtils.showAlertDialog(context, tcontext.meta.remarkCannotEmpty);
        return false;
      }

      if (text.length > kRemarkMaxLength) {
        DialogUtils.showAlertDialog(context, tcontext.meta.remarkTooLong);
        return false;
      }
      ServerConfigGroupItem item = ServerManager.getCustomGroup();
      for (var i in item.urltests) {
        if (i.remark == text) {
          DialogUtils.showAlertDialog(context, tcontext.meta.remarkExist);
          return false;
        }
      }

      return true;
    });
    if (text != null) {
      ServerConfigGroupItem item = ServerManager.getCustomGroup();
      ProxyUrltest urltest = ProxyUrltest();
      urltest.remark = text;
      item.urltests.add(urltest);
      ServerManager.saveServerConfig();
      _buildData();
      setState(() {});
    }
  }

  void onTapItem(String current) async {
    ServerConfigGroupItem item = ServerManager.getCustomGroup();
    ProxyUrltest? urltest;
    for (var ut in item.urltests) {
      if (ut.remark == current) {
        urltest = ut;
        break;
      }
    }
    if (urltest == null) {
      return;
    }
    List<ProxyConfig> selectedServers = [];
    for (var group in ServerManager.getConfig().items) {
      if (!group.enable) {
        continue;
      }
      for (var server in group.servers) {
        if (urltest.tags.contains(server.tag)) {
          selectedServers.add(server);
        }
      }
    }
    var result = await Navigator.push(
        context,
        MaterialPageRoute(
            settings: ServerSelectScreen.routSettings(),
            builder: (context) => ServerSelectScreen(
                  singleSelect: null,
                  multiSelect: ServerSelectScreenMultiSelectedOption(
                      selectedServers: selectedServers,
                      showSearchKeywords: true,
                      searchKeywords: urltest!.regexs),
                )));
    if (result == null) {
      return;
    }
    if (result is List<ProxyConfig>) {
      List<String> newTags = [];
      for (var server in result) {
        newTags.add(server.tag);
      }
      var uTags = urltest.tags.toSet().union(newTags.toSet());
      if (uTags.length != urltest.tags.length ||
          uTags.length != newTags.length) {
        urltest.tags = newTags;
        ServerManager.setDirty(true);
        ServerManager.saveServerConfig();
      }
    } else if (result is Tuple2<List<String>, List<ProxyConfig>>) {
      List<String> newTags = [];
      for (var server in result.item2) {
        newTags.add(server.tag);
      }
      var uTags = urltest.tags.toSet().union(newTags.toSet());
      if (uTags.length != urltest.tags.length ||
          uTags.length != newTags.length) {
        urltest.tags = newTags;
        ServerManager.setDirty(true);
      }
      var uRegexs = urltest.regexs.toSet().union(result.item1.toSet());
      if (uRegexs.length != urltest.regexs.length ||
          uRegexs.length != result.item1.length) {
        urltest.regexs = result.item1;
        ServerManager.setDirty(true);
      }

      if (ServerManager.getDirty()) {
        ServerManager.saveServerConfig();
      }
    }
  }

  void onTapDel(String current) async {
    ServerConfigGroupItem item = ServerManager.getCustomGroup();

    for (int i = 0; i < item.urltests.length; ++i) {
      if (item.urltests[i].remark == current) {
        item.urltests.removeAt(i);

        break;
      }
    }
    ServerManager.setDirty(true);
    ServerManager.saveServerConfig();
    _buildData();
    setState(() {});
  }
}
