import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';

class LanguageSettingsScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "LanguageSettingsScreen");
  }

  final bool canPop;
  final bool? canGoBack;
  final String Function()? nextText;

  const LanguageSettingsScreen({
    super.key,
    required this.canPop,
    required this.canGoBack,
    this.nextText,
  });

  @override
  State<LanguageSettingsScreen> createState() => _LanguageSettingsScreenState();
}

class _LanguageSettingsScreenState
    extends LasyRenderingState<LanguageSettingsScreen> {
  final FocusNode _focusNodeNext = FocusNode();
  final List _langData = [];
  List _searchedData = [];

  final _searchController = TextEditingController();

  @override
  void initState() {
    for (var locale in AppLocale.values) {
      _langData.add(locale);
    }

    _searchedData = _langData;
    //
    super.initState();
  }

  _loadSearch(String? textVal) {
    if ((textVal != null) && textVal.isNotEmpty) {
      final data = _langData.where((locale) {
        var lang = t.locales[locale.languageTag]!;
        return lang.toLowerCase().contains(textVal.toLowerCase());
      }).toList();
      _searchedData = data;
      setState(() {});
    } else {
      _searchedData = _langData;
      setState(() {});
    }
  }

  _clearSearch() {
    _searchController.clear();
    _searchedData = _langData;
    setState(() {});
  }

  @override
  void dispose() {
    _focusNodeNext.dispose();
    _searchController.dispose();
    super.dispose();
    SettingManager.saveConfig();
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
                                tcontext.meta.language,
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
                                        widget.nextText!.call(),
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                            fontWeight:
                                                ThemeConfig.kFontWeightListItem,
                                            fontSize:
                                                ThemeConfig.kFontSizeListItem),
                                      ),
                                    ))
                                : const SizedBox(
                                    width: 50,
                                  ),
                          ],
                        ),
                      ),
                      /*Container(
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
                            hintText: tcontext.search,
                            suffixIcon: _searchController.text.isNotEmpty
                                ? IconButton(
                                    icon: const Icon(Icons.clear_outlined),
                                    onPressed: _clearSearch,
                                  )
                                : null,
                          ),
                        ),
                      ),*/
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

  Widget createWidget(dynamic current) {
    return Material(
      color: LocaleSettings.currentLocale == current
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
                          Text(
                            t.locales[current.languageTag]!,
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

  Future<void> onTapItem(dynamic current) async {
    SettingManager.getConfig().languageTag = current.languageTag;
    await LocaleSettings.setLocale(current);
    if (widget.nextText == null) {
      if (!mounted) {
        return;
      }
      Navigator.pop(context);
    }
  }
}
