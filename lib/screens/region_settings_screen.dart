import 'dart:io';

import 'package:country/country.dart' as country;
import 'package:dash_flags/dash_flags.dart' as country_flags;
import 'package:flutter/material.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:path/path.dart' as path;

class RegionSettingsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "RegionSettingsScreen");
  }

  final bool? canGoBack;
  final String? nextText;

  const RegionSettingsScreen(
      {super.key, required this.canGoBack, this.nextText});

  @override
  State<RegionSettingsScreen> createState() => _RegionSetingsScreenState();

  static country.Country? getCurrentCountry() {
    final data = country.Countries.values.where((country) {
      if (country.alpha2 == SettingManager.getConfig().regionCode) {
        return true;
      }

      return false;
    }).toList();
    if (data.isEmpty) {
      return null;
    }
    return data[0];
  }

  static String languageTag() {
    return LocaleSettings.currentLocale.languageTag.replaceAll("-", "_");
  }
}

class _RegionSetingsScreenState
    extends LasyRenderingState<RegionSettingsScreen> {
  List<country.Country> _searchedData = [];
  country.Country? _currentCountry;
  final Map<String, bool> _countriesAssets = {};

  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initAssets();
  }

  Future<void> _initAssets() async {
    if (Platform.isWindows) {
      for (var region in country.Countries.values) {
        var c = country_flags.Country.fromCode(region.alpha2);
        String flutterAssetsPath = path.join(PathUtils.flutterAssetsDir(),
            "packages/dash_flags/assets/svgs/flags/countries/country_${c.name}.svg");
        var file = File(flutterAssetsPath);

        try {
          _countriesAssets[c.name] = await file.exists();
        } catch (e) {}
      }
    } else {
      for (var region in country.Countries.values) {
        var c = country_flags.Country.fromCode(region.alpha2);
        _countriesAssets[c.name] = true;
      }
    }

    _searchedData = country.Countries.values;
    _currentCountry = RegionSettingsScreen.getCurrentCountry();
    if (!mounted) {
      return;
    }
    setState(() {});
  }

  Future<void> _loadSearch(String? textVal) async {
    if (_countriesAssets.isEmpty) {
      return;
    }
    if (textVal == null || textVal.isEmpty) {
      _searchedData = country.Countries.values;
      setState(() {});
    } else {
      textVal = textVal.toUpperCase();
      final data = country.Countries.values.where((country) {
        if (country.alpha2.startsWith(textVal!) ||
            country.alpha3.startsWith(textVal)) {
          return true;
        }

        var name =
            country.isoShortNameByLocale[RegionSettingsScreen.languageTag()];
        if (name != null) {
          return name.toUpperCase().startsWith(textVal);
        }
        return false;
      }).toList();
      _searchedData = data;
      setState(() {});
    }
  }

  _clearSearch() {
    if (_countriesAssets.isEmpty) {
      return;
    }
    _searchController.clear();
    _searchedData = country.Countries.values;
    setState(() {});
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
    SettingManager.saveConfig();
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
                    widget.canGoBack == true
                        ? InkWell(
                            onTap: () => Navigator.pop(context),
                            child: const SizedBox(
                              width: 50,
                              height: 30,
                              child: Icon(
                                Icons.arrow_back_ios_outlined,
                                size: 26,
                              ),
                            ),
                          )
                        : const SizedBox(
                            width: 50,
                            height: 30,
                          ),
                    SizedBox(
                      width: windowSize.width - 50 * 2,
                      child: Text(
                        tcontext.RegionSettingsScreen.title,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                            fontWeight: ThemeConfig.kFontWeightTitle,
                            fontSize: ThemeConfig.kFontSizeTitle),
                      ),
                    ),
                    widget.nextText != null
                        ? SizedBox(
                            width: 65,
                            height: 30,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                textAlign: TextAlign.center,
                                widget.nextText ?? "",
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontWeight: ThemeConfig.kFontWeightListItem,
                                  fontSize: ThemeConfig.kFontSizeListItem,
                                ),
                              ),
                            ))
                        : const SizedBox(
                            width: 50,
                          ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                padding: const EdgeInsets.only(left: 15, right: 15),
                height: 44,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: ThemeDefine.kBorderRadius,
                ),
                child: TextField(
                  controller: _searchController,
                  textInputAction: TextInputAction.done,
                  onChanged: _loadSearch,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    icon: Icon(
                      Icons.search_outlined,
                      color: Colors.grey.shade400,
                    ),
                    hintText: tcontext.search,
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
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  tcontext.RegionSettingsScreen.Regions,
                  style: const TextStyle(
                    fontSize: ThemeConfig.kFontSizeListSubItem,
                    fontWeight: ThemeConfig.kFontWeightListSubItem,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _currentCountry == null
                  ? const SizedBox(
                      height: 10,
                    )
                  : Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        _flag(_currentCountry!.alpha2),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          _currentCountry!.alpha2,
                          style: TextStyle(
                            fontSize: ThemeConfig.kFontSizeGroupItem,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        Text(
                          _currentCountry!.isoShortNameByLocale[
                                  RegionSettingsScreen.languageTag()] ??
                              "",
                          style: TextStyle(
                            fontSize: ThemeConfig.kFontSizeGroupItem,
                          ),
                        ),
                      ],
                    ),
              const SizedBox(
                height: 15,
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
        child: ListView.builder(
          itemCount: _searchedData.length,
          itemExtent: ThemeConfig.kListItemHeight2,
          itemBuilder: (BuildContext context, int index) {
            var current = _searchedData[index];
            return createWidget(current);
          },
        ));
  }

  Widget _flag(String alpha2) {
    var c = country_flags.Country.fromCode(alpha2);
    if (_countriesAssets[c.name] == true) {
      return country_flags.CountryFlag(
        country: c,
        height: 30,
      );
    }
    return const SizedBox(
      width: 30,
      height: 30,
    );
  }

  Widget createWidget(country.Country current) {
    return Container(
      margin: const EdgeInsets.only(bottom: 2),
      child: Material(
        color: SettingManager.getConfig().regionCode.toUpperCase() ==
                current.alpha2
            ? ThemeDefine.kColorBlue
            : null,
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          onTap: () {
            onTapItem(current);
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
                        Row(
                          children: [
                            _flag(current.alpha2),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              current.alpha2,
                              style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem,
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              current.isoShortNameByLocale[
                                      RegionSettingsScreen.languageTag()] ??
                                  "",
                              style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem,
                              ),
                            ),
                          ],
                        )
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

  void onTapItem(country.Country current) {
    SettingManager.getConfig().regionCode = current.alpha2;
    SettingManager.getConfig().dns.clientSubnet = "";
    SettingManager.getConfig().dns.clientSubnetLatestUpdate = "";

    if (widget.nextText != null) {
      _currentCountry = RegionSettingsScreen.getCurrentCountry();
      setState(() {});
    } else {
      SettingManager.setDirty(true);
      Navigator.pop(context);
    }
  }
}
