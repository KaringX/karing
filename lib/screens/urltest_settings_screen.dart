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
                        tcontext.meta.url,
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
    var settingConfig = SettingManager.getConfig();
    return Material(
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
                            style: TextStyle(
                              fontSize: ThemeConfig.kFontSizeGroupItem,
                            ),
                          ),
                        ),
                        if (!SettingConfig.kUrlTestList.contains(current)) ...[
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
      Uri? uri = Uri.tryParse(text);
      if (uri == null || (uri.scheme != "https" && uri.scheme != "http")) {
        DialogUtils.showAlertDialog(context, tcontext.meta.urlInvalid);
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
