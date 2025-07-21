// ignore_for_file: unused_catch_stack

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';

class NoviceScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "NoviceScreen");
  }

  const NoviceScreen({super.key});

  @override
  State<NoviceScreen> createState() => _NoviceScreenState();
}

class _NoviceScreenState extends LasyRenderingState<NoviceScreen> {
  final FocusNode _focusNodeNext = FocusNode();
  @override
  void initState() {
    super.initState();
    var settingConfig = SettingManager.getConfig();
    settingConfig.novice = true;
  }

  @override
  void dispose() {
    _focusNodeNext.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    var setting = SettingManager.getConfig();
    return PopScope(
        canPop: false,
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
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  SizedBox(
                                    width: windowSize.width - 50 - 65,
                                    child: Text(
                                      tcontext.meta.setting,
                                      textAlign: TextAlign.center,
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontWeight:
                                              ThemeConfig.kFontWeightTitle,
                                          fontSize: ThemeConfig.kFontSizeTitle),
                                    ),
                                  ),
                                  SizedBox(
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
                                          tcontext.meta.done,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            fontWeight:
                                                ThemeConfig.kFontWeightListItem,
                                            fontSize:
                                                ThemeConfig.kFontSizeListItem,
                                          ),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: FutureBuilder(
                                  future: getGroupOptions(),
                                  builder: (BuildContext context,
                                      AsyncSnapshot<List<GroupItem>> snapshot) {
                                    List<GroupItem> data =
                                        snapshot.hasData ? snapshot.data! : [];
                                    return Column(
                                        children: GroupItemCreator.createGroups(
                                            context, data));
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
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
          _focusNodeNext.requestFocus();
          return KeyEventResult.handled;
      }
    }
    return KeyEventResult.ignored;
  }

  Future<List<GroupItem>> getGroupOptions() async {
    final tcontext = Translations.of(context);
    List<GroupItem> groupOptions = [];
    var settingConfig = SettingManager.getConfig();

    List<GroupItemOptions> options0 = [
      GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
        name: tcontext.meta.novice,
        switchValue: settingConfig.novice,
        onSwitch: (bool value) async {
          settingConfig.novice = value;
          SettingManager.saveConfig();
          SettingManager.setDirty(true);
          setState(() {});
        },
      )),
    ];

    groupOptions.add(GroupItem(options: options0));

    return groupOptions;
  }
}
