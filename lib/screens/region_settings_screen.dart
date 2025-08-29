import 'dart:io';

import 'package:country/country.dart' as country;
import 'package:dash_flags/dash_flags.dart' as country_flags;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:karing/screens/widgets/text_field.dart';

class RegionSettingsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "RegionSettingsScreen");
  }

  final bool canPop;
  final bool? canGoBack;
  final String? nextText;

  const RegionSettingsScreen(
      {super.key,
      required this.canPop,
      required this.canGoBack,
      this.nextText});

  @override
  State<RegionSettingsScreen> createState() => _RegionSetingsScreenState();
}

class _RegionSetingsScreenState
    extends LasyRenderingState<RegionSettingsScreen> {
  final FocusNode _focusNodeNext = FocusNode();
  List<country.Country> _searchedData = [];
  country.Country? _currentCountry;
  final Map<String, bool> _countriesAssets = {};

  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _initAssets();
  }

  @override
  void dispose() {
    _focusNodeNext.dispose();
    _searchController.dispose();
    super.dispose();
    SettingManager.saveConfig();
  }

  Future<void> _initAssets() async {
    if (Platform.isWindows) {
      for (var region in country.Countries.values) {
        var c = country_flags.Country.fromCode(region.alpha2);
        String asset =
            "packages/dash_flags/assets/svgs/flags/countries/country_${c.name}.svg";
        try {
          await rootBundle.load(asset);
          _countriesAssets[c.name] = true;
        } catch (e) {
          break;
        }
      }
    } else {
      for (var region in country.Countries.values) {
        var c = country_flags.Country.fromCode(region.alpha2);
        _countriesAssets[c.name] = true;
      }
    }

    _searchedData = country.Countries.values;
    _currentCountry = SettingManager.getConfig().currentCountry();
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
            country.isoShortNameByLocale[SettingConfig.languageTagForCountry()];
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
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    var setting = SettingManager.getConfig();
    return PopScope(
        canPop: widget.canPop,
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: Size.zero,
              child: AppBar(),
            ),
            body: Focus(
              includeSemantics: true,
              onKeyEvent: onKeyEvent,
              child: SafeArea(
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
                              width: windowSize.width - 50 - 65,
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
                                      autofocus: setting.ui.tvMode,
                                      focusNode: _focusNodeNext,
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        textAlign: TextAlign.center,
                                        widget.nextText ?? "",
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontWeight:
                                              ThemeConfig.kFontWeightListItem,
                                          fontSize:
                                              ThemeConfig.kFontSizeListItem,
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
                          borderRadius: ThemeDefine.kBorderRadius,
                        ),
                        child: TextFieldEx(
                          controller: _searchController,
                          textInputAction: TextInputAction.done,
                          onChanged: _loadSearch,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            //focusedBorder: InputBorder.none,
                            icon: Icon(
                              Icons.search_outlined,
                            ),
                            labelText: tcontext.meta.search,
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
                                          SettingConfig
                                              .languageTagForCountry()] ??
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
            )));
  }

  KeyEventResult onKeyEvent(FocusNode node, KeyEvent event) {
    if (event is KeyDownEvent) {
      switch (event.logicalKey) {
        case LogicalKeyboardKey.arrowRight:
          if (widget.nextText != null) {
            _focusNodeNext.requestFocus();
            return KeyEventResult.handled;
          }
      }
    }
    return KeyEventResult.ignored;
  }

  Widget _loadListView() {
    return Scrollbar(
        thumbVisibility: true,
        child: ListView.separated(
          itemCount: _searchedData.length,
          itemBuilder: (BuildContext context, int index) {
            var current = _searchedData[index];
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
    return Material(
      color:
          SettingManager.getConfig().regionCode.toUpperCase() == current.alpha2
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
          height: ThemeConfig.kListItemHeight2,
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
                                    SettingConfig.languageTagForCountry()] ??
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
    );
  }

  void onTapItem(country.Country current) {
    SettingManager.getConfig().regionCode = current.alpha2;
    SettingManager.getConfig().dns.clientSubnet = "";
    SettingManager.getConfig().dns.clientSubnetLatestUpdate = "";

    if (widget.nextText != null) {
      _currentCountry = SettingManager.getConfig().currentCountry();
      setState(() {});
    } else {
      SettingManager.setDirty(true);
      Navigator.pop(context);
    }
  }
}
