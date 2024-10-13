import 'package:flutter/material.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';

class UrlTestSettingsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "UrlTestSettingsScreen");
  }

  const UrlTestSettingsScreen({super.key});

  @override
  State<UrlTestSettingsScreen> createState() => _UrlTestSettingsScreenState();
}

class _UrlTestSettingsScreenState
    extends LasyRenderingState<UrlTestSettingsScreen> {
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
    for (var item in SettingManager.getConfig().urlTestList) {
      if (!SettingConfig.kUrlTestList.contains(item)) {
        list.add(item);
      }
    }

    list.addAll(SettingConfig.kUrlTestList);
    _searchedData = list;
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
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
                    Text(
                      tcontext.UrlTestSettingsScreen.title,
                      style: const TextStyle(
                          fontWeight: ThemeConfig.kFontWeightTitle,
                          fontSize: ThemeConfig.kFontSizeTitle),
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
        child: ListView.builder(
          itemCount: _searchedData.length,
          itemExtent: ThemeConfig.kListItemHeight2,
          itemBuilder: (BuildContext context, int index) {
            var current = _searchedData[index];
            return createWidget(current, windowSize);
          },
        ));
  }

  Widget createWidget(dynamic current, Size windowSize) {
    const double rightWidth = 30.0;
    double centerWidth = windowSize.width - rightWidth - 20;
    var settingConfig = SettingManager.getConfig();
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      child: Material(
        color: settingConfig.urlTest == current ? ThemeDefine.kColorBlue : null,
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          onTap: () {
            SettingManager.getConfig().urlTest = current;
            SettingManager.setDirty(true);
            Navigator.pop(context);
          },
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
                          SizedBox(
                            width: centerWidth,
                            child: Text(
                              current,
                              style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem,
                              ),
                            ),
                          ),
                          !SettingConfig.kUrlTestList.contains(current)
                              ? SizedBox(
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
                              : const SizedBox.shrink(),
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

  void onTapAdd() async {
    final tcontext = Translations.of(context);
    String? text = await DialogUtils.showTextInputDialog(
        context, tcontext.url, "", null, null, (text) {
      text = text.trim();
      Uri? uri = Uri.tryParse(text);
      if (uri == null || uri.scheme != "https") {
        DialogUtils.showAlertDialog(
            context, tcontext.UrlTestSettingsScreen.error);
        return false;
      }

      return true;
    });
    if (text != null &&
        !SettingConfig.kUrlTestList.contains(text) &&
        !SettingManager.getConfig().urlTestList.contains(text)) {
      SettingManager.getConfig().urlTestList.add(text);
      SettingManager.saveConfig();
      _buildData();
      setState(() {});
    }
  }

  void onTapDelete(String url) {
    SettingManager.getConfig().urlTestList.remove(url);
    SettingManager.saveConfig();
    _buildData();
    setState(() {});
  }
}
