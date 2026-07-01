// ignore_for_file: unused_catch_stack

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/app/modules/setting_manager.dart';
import 'package:karing/app/utils/accessibility_utils.dart';

import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/group_item_creator.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';

class AccessibilityScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "AccessibilityScreen");
  }

  final String nextText;
  const AccessibilityScreen({super.key, required this.nextText});

  @override
  State<AccessibilityScreen> createState() => _AccessibilityScreenState();
}

class _AccessibilityScreenState
    extends LasyRenderingState<AccessibilityScreen> {
  final FocusNode _focusNodeNext = FocusNode();
  bool _accessibilityEnabled = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    SettingManager.save();
    _focusNodeNext.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;

    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: PreferredSize(preferredSize: Size.zero, child: AppBar()),
        body: Focus(
          onKeyEvent: onKeyEvent,
          canRequestFocus: false,
          skipTraversal: true,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 50),
                              SizedBox(
                                width: windowSize.width - 50 - 65,
                                child: Text(
                                  tcontext.SettingsScreen.accessibility,
                                  textAlign: TextAlign.center,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontWeight: ThemeConfig.kFontWeightTitle,
                                    fontSize: ThemeConfig.kFontSizeTitle,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 65,
                                height: 30,
                                child: InkWell(
                                  focusNode: _focusNodeNext,
                                  onTap: () {
                                    AccessibilityUtils.setAccessibilityEnabled(
                                      _accessibilityEnabled,
                                    );
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    widget.nextText,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontWeight:
                                          ThemeConfig.kFontWeightListItem,
                                      fontSize: ThemeConfig.kFontSizeListItem,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Expanded(
                          child: SingleChildScrollView(
                            child: FutureBuilder(
                              future: getGroupOptions(),
                              builder:
                                  (
                                    BuildContext context,
                                    AsyncSnapshot<List<GroupItem>> snapshot,
                                  ) {
                                    List<GroupItem> data = snapshot.hasData
                                        ? snapshot.data!
                                        : [];
                                    return Column(
                                      children: GroupItemCreator.createGroups(
                                        context,
                                        data,
                                      ),
                                    );
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
        ),
      ),
    );
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
    List<GroupItemOptions> options0 = [
      GroupItemOptions(
        switchOptions: GroupItemSwitchOptions(
          name: tcontext.SettingsScreen.accessibility,
          switchValue: _accessibilityEnabled,
          onSwitch: (bool value) async {
            setState(() {
              _accessibilityEnabled = value;
            });
          },
        ),
      ),
    ];

    groupOptions.add(GroupItem(options: options0));

    return groupOptions;
  }
}
