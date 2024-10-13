// ignore_for_file: unused_catch_stack

import 'package:flutter/material.dart';
import 'package:karing/app/utils/diversion_custom_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/group_item.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/widgets/framework.dart';

class DiversionRulesCustomSetScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "DiversionRulesCustomSetScreen");
  }

  final String title;
  final bool? canGoBack;

  final String? nextText;
  final IconData? nextIcon;
  final DiversionCustomRules rules;

  const DiversionRulesCustomSetScreen(
      {super.key,
      required this.title,
      required this.canGoBack,
      required this.nextText,
      required this.nextIcon,
      required this.rules});

  @override
  State<DiversionRulesCustomSetScreen> createState() =>
      _DiversionRulesCustomSetScreenState();
}

class _DiversionRulesCustomSetScreenState
    extends LasyRenderingState<DiversionRulesCustomSetScreen> {
  @override
  void initState() {
    super.initState();
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
              Expanded(
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
                            width: windowSize.width -
                                50 -
                                (widget.nextText != null ||
                                        widget.nextIcon != null
                                    ? 65
                                    : 50),
                            child: Text(
                              textAlign: TextAlign.center,
                              widget.title,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontWeight: ThemeConfig.kFontWeightTitle,
                                  fontSize: ThemeConfig.kFontSizeTitle),
                            ),
                          ),
                          widget.nextText != null || widget.nextIcon != null
                              ? SizedBox(
                                  width: widget.nextText != null ? 65 : 50,
                                  height: 30,
                                  child: InkWell(
                                    onTap: () {
                                      onTapDone();
                                    },
                                    child: widget.nextText != null
                                        ? Text(
                                            textAlign: TextAlign.center,
                                            widget.nextText ?? "",
                                            overflow: TextOverflow.ellipsis,
                                            style: const TextStyle(
                                                fontWeight: ThemeConfig
                                                    .kFontWeightListItem,
                                                fontSize: ThemeConfig
                                                    .kFontSizeListItem),
                                          )
                                        : Icon(
                                            widget.nextIcon,
                                            size: 26,
                                          ),
                                  ),
                                )
                              : const SizedBox(
                                  width: 50,
                                ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Text(
                        tcontext.diversionCustomGroupPresetTips,
                        style: const TextStyle(
                          fontSize: ThemeConfig.kFontSizeListSubItem,
                          fontWeight: ThemeConfig.kFontWeightListSubItem,
                        ),
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
                            return Column(children: [
                              ...GroupItemCreator.createGroups(context, data)
                            ]);
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
    );
  }

  Future<List<GroupItem>> getGroupOptions() async {
    final tcontext = Translations.of(context);
    List<GroupItem> groupOptions = [];

    List<GroupItemOptions> options = [];
    for (var rule in widget.rules.rules) {
      String outbound = "";
      switch (rule.outbound) {
        case DiversionCustomRules.kDirect:
          outbound = tcontext.outboundActionDirect;
          break;
        case DiversionCustomRules.kBlock:
          outbound = tcontext.outboundActionBlock;
          break;
        case DiversionCustomRules.kUrltest:
          outbound = tcontext.outboundActionUrltest;
          break;
        case DiversionCustomRules.kCurrentSelected:
          outbound = tcontext.outboundActionCurrentSelected;
          break;
        default:
          rule.outbound = DiversionCustomRules.kNone;
          outbound = "";
          break;
      }

      options.add(GroupItemOptions(
          switchOptions: GroupItemSwitchOptions(
        name: "${rule.name}  ->  $outbound",
        switchValue: rule.enable,
        onSwitch: (bool value) async {
          rule.enable = value;
          setState(() {});
        },
      )));
    }

    groupOptions.add(GroupItem(options: options));

    return groupOptions;
  }

  void onTapDone() async {
    await DiversionCustomRules.importRules(widget.rules);
    if (!mounted) {
      return;
    }
    Navigator.pop(context);
  }
}
