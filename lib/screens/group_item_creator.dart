// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:karing/screens/group_item_options.dart';
import 'package:karing/screens/group_item_widgets.dart';
import 'package:karing/screens/theme_config.dart';

class GroupItem {
  GroupItem({
    this.name,
    this.itemHeight = ThemeConfig.kGroupItemHeight,
    required this.options,
  });
  final String? name;
  final double? itemHeight;
  final List<GroupItemOptions> options;
}

class GroupItemCreator {
  static List<Widget> createGroups(BuildContext context, List<GroupItem> groups,
      {bool scrollbar = false}) {
    List<Widget> widgets = [];
    GroupItemCreator giCreator = GroupItemCreator();
    int index = 0;
    for (var group in groups) {
      widgets.add(Card(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: giCreator.createGroup(context, group, index == 0,
                  scrollbar: scrollbar))));
      ++index;
    }
    return widgets;
  }

  Widget _createGroupName(BuildContext context, GroupItem group) {
    if (group.name == null || group.name!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        group.name!,
        style: const TextStyle(
          fontSize: ThemeConfig.kFontSizeListItem,
          fontWeight: ThemeConfig.kFontWeightListItem,
        ),
      ),
    );
  }

  Column createGroup(BuildContext context, GroupItem group, bool isFirstGroup,
      {bool scrollbar = false}) {
    var widgets = [];
    for (var option in group.options) {
      late Widget widget;
      if (option.textOptions != null) {
        widget = GroupItemText(options: option.textOptions!);
      } else if (option.textFormFieldOptions != null) {
        widget = GroupItemTextField(options: option.textFormFieldOptions!);
      } else if (option.switchOptions != null) {
        widget = GroupItemSwitch(options: option.switchOptions!);
      } else if (option.pushOptions != null) {
        widget = GroupItemPush(options: option.pushOptions!);
      } else if (option.timerIntervalPickerOptions != null) {
        widget = GroupItemTimerIntervalPicker(
            options: option.timerIntervalPickerOptions!);
      } else if (option.stringPickerOptions != null) {
        widget = GroupItemStringPicker(options: option.stringPickerOptions!);
      } else {
        continue;
      }
      widgets.add(SizedBox(
        height: group.itemHeight,
        child: widget,
      ));
    }
    final listView = ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) {
        return widgets[index];
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 1,
          thickness: 0.3,
        );
      },
      itemCount: widgets.length,
    );
    return Column(children: [
      _createGroupName(context, group),
      scrollbar ? Scrollbar(child: listView) : listView,
    ]);
  }
}
