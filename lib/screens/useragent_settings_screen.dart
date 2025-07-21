import 'package:flutter/material.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';

class UserAgentSettingsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "UserAgentSettingsScreen");
  }

  const UserAgentSettingsScreen({super.key});

  @override
  State<UserAgentSettingsScreen> createState() =>
      _UserAgentSettingsScreenState();
}

class _UserAgentSettingsScreenState
    extends LasyRenderingState<UserAgentSettingsScreen> {
  List _searchedData = [];

  @override
  void initState() {
    _buildData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    SettingManager.saveConfig();
  }

  void _buildData() {
    List<String> list = [];
    for (var item in SettingManager.getConfig().userAgents) {
      if (!SettingConfig.kUserAgentList.contains(item)) {
        list.add(item);
      }
    }

    list.addAll(SettingConfig.kUserAgentList);
    _searchedData = list;
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
                        tcontext.meta.userAgent,
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

  Widget createWidget(dynamic current, Size windowSize) {
    const double rightWidth = 30.0;
    double centerWidth = windowSize.width - rightWidth - 20;

    return Material(
      color: null,
      borderRadius: ThemeDefine.kBorderRadius,
      child: InkWell(
        onTap: null,
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
                        if (!SettingConfig.kUserAgentList
                            .contains(current)) ...[
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
                        ],
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
        context, tcontext.meta.url, "", null, null, null, (text) {
      text = text.trim();
      return text.isNotEmpty;
    });
    if (text != null &&
        !SettingConfig.kUserAgentList.contains(text) &&
        !SettingManager.getConfig().userAgents.contains(text)) {
      SettingManager.getConfig().userAgents.add(text);
      SettingManager.saveConfig();
      _buildData();
      setState(() {});
    }
  }

  void onTapDelete(String url) {
    SettingManager.getConfig().userAgents.remove(url);
    SettingManager.saveConfig();
    _buildData();
    setState(() {});
  }
}
