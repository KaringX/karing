// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:tuple/tuple.dart';

class GroupItemTextOptions {
  GroupItemTextOptions(
      {required this.name,
      required this.text,
      this.style,
      this.textColor,
      this.textWidthPercent,
      this.onPush});

  final String name;
  final String? text;
  final TextStyle? style;
  final Color? textColor;
  final double? textWidthPercent;
  void Function()? onPush;
}

class GroupItemTextFieldOptions {
  GroupItemTextFieldOptions({
    required this.name,
    this.tips,
    this.obscureText = false,
    this.keyboardType,
    this.inputFormatters,
    this.text,
    this.style,
    this.hint,
    this.errorText,
    this.enabled,
    this.autoFocus = false,
    this.focusNode,
    this.textWidthPercent,
    this.controller,
    this.onChanged,
    this.onSubmitted,
  });

  final String name;
  final String? tips;
  final bool obscureText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final String? text;
  final TextStyle? style;
  final String? hint;
  final String? errorText;
  final bool? enabled;
  final bool autoFocus;
  final FocusNode? focusNode;
  final double? textWidthPercent;
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
}

class GroupItemSwitchOptions {
  GroupItemSwitchOptions(
      {required this.name,
      this.tips,
      this.reddot,
      this.onSwitch,
      required this.switchValue});

  final String name;
  final String? tips;
  final bool? reddot;
  final bool? switchValue;

  Future<void> Function(bool)? onSwitch;
}

class GroupItemPushOptions {
  GroupItemPushOptions({
    required this.name,
    this.tips,
    this.reddot,
    this.reddotColor,
    this.icon,
    this.text,
    this.style,
    this.textColor,
    this.textWidthPercent,
    this.onPush,
    this.onLongPress,
  });

  final String name;
  final String? tips;
  final bool? reddot;
  final Color? reddotColor;
  final IconData? icon;
  final String? text;
  final TextStyle? style;
  final Color? textColor;
  final double? textWidthPercent;
  Future<void> Function()? onPush;
  Future<void> Function()? onLongPress;
}

class GroupItemTimerPickerOptions {
  GroupItemTimerPickerOptions({
    required this.name,
    this.tips,
    this.reddot,
    this.duration,
    this.onPicker,
  });

  final String name;
  final String? tips;
  final bool? reddot;
  Duration? duration;

  Future<void> Function(Duration?)? onPicker;
}

class GroupItemTimerIntervalPickerOptions {
  GroupItemTimerIntervalPickerOptions({
    required this.name,
    this.tips,
    this.reddot,
    this.duration,
    this.notShowDisable,
    this.onPicker,
  });

  final String name;
  final String? tips;
  final bool? reddot;
  Duration? duration;
  final bool? notShowDisable;

  Future<void> Function(bool, Duration?)? onPicker;
}

class GroupItemStringPickerOptions {
  GroupItemStringPickerOptions({
    required this.name,
    this.tips,
    this.reddot,
    this.strings,
    this.tupleStrings,
    this.selected,
    this.textWidthPercent,
    this.onPicker,
  });

  final String name;
  final String? tips;
  final bool? reddot;
  final List<String>? strings;
  final List<Tuple2<String, String>>? tupleStrings;
  String? selected;
  final double? textWidthPercent;
  Future<void> Function(String?)? onPicker;
}

class GroupItemOptions {
  GroupItemOptions({
    this.itemHeight = ThemeConfig.kGroupItemHeight,
    this.textOptions,
    this.textFormFieldOptions,
    this.switchOptions,
    this.pushOptions,
    this.timerPickerOptions,
    this.timerIntervalPickerOptions,
    this.stringPickerOptions,
  });
  final double? itemHeight;
  final GroupItemTextOptions? textOptions;
  final GroupItemTextFieldOptions? textFormFieldOptions;
  final GroupItemSwitchOptions? switchOptions;
  final GroupItemPushOptions? pushOptions;
  final GroupItemTimerPickerOptions? timerPickerOptions;
  final GroupItemTimerIntervalPickerOptions? timerIntervalPickerOptions;
  final GroupItemStringPickerOptions? stringPickerOptions;
}

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
  static List<Widget> createGroups(
      BuildContext context, List<GroupItem> groups) {
    List<Widget> widgets = [];
    GroupItemCreator giCreator = GroupItemCreator();
    int index = 0;
    for (var group in groups) {
      widgets.add(giCreator.createGroup(context, group, index == 0));
      ++index;
    }
    return widgets;
  }

  Column createGroup(BuildContext context, GroupItem group, bool isFirstGroup) {
    return Column(children: [
      SizedBox(
        height: isFirstGroup ? 0 : 20,
      ),
      _createGroupName(context, group),
      ...group.options.map((item) {
        double height =
            item.itemHeight ?? group.itemHeight ?? ThemeConfig.kGroupItemHeight;
        if (item.textOptions != null) {
          return _createGroupItemText(context, height, item.textOptions!);
        } else if (item.textFormFieldOptions != null) {
          return _createGroupItemTextField(
              context, height, item.textFormFieldOptions!);
        } else if (item.switchOptions != null) {
          return _createGroupItemSwitch(context, height, item.switchOptions!);
        } else if (item.pushOptions != null) {
          return _createGroupItemPush(context, height, item.pushOptions!);
        } else if (item.timerPickerOptions != null) {
          return _createGroupItemTimePicker(
              context, height, item.timerPickerOptions!);
        } else if (item.timerIntervalPickerOptions != null) {
          return _createGroupItemTimeIntervalPicker(
              context, height, item.timerIntervalPickerOptions!);
        } else if (item.stringPickerOptions != null) {
          return _createGroupItemStringPicker(
              context, height, item.stringPickerOptions!);
        }
        return const SizedBox.shrink();
      }),
    ]);
  }

  Widget _createGroupName(BuildContext context, GroupItem group) {
    if (group.name == null || group.name!.isEmpty) {
      return const SizedBox.shrink();
    }

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            group.name!,
            style: const TextStyle(
              fontSize: ThemeConfig.kFontSizeListItem,
              fontWeight: ThemeConfig.kFontWeightListItem,
            ),
          ),
        ],
      ),
    );
  }

  Container _createGroupItemText(
      BuildContext context, double itemHeight, GroupItemTextOptions options) {
    Size windowSize = MediaQuery.of(context).size;
    double textWidthPercent = options.textWidthPercent ?? 0.72;
    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      child: Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          onTap: options.onPush,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            width: double.infinity,
            height: itemHeight,
            child: Row(
              children: [
                const SizedBox(
                  width: 4,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: windowSize.width -
                        windowSize.width * textWidthPercent -
                        24,
                  ),
                  child: Text(
                    options.name,
                    style: TextStyle(
                      fontSize: ThemeConfig.kFontSizeGroupItem,
                    ),
                  ),
                ),
                const Spacer(),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: windowSize.width * textWidthPercent,
                  ),
                  child: Text(
                    options.text ?? "",
                    // overflow: TextOverflow.ellipsis,
                    style: options.style ??
                        TextStyle(
                            fontSize: ThemeConfig.kFontSizeGroupItem,
                            color: options.textColor),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _createGroupItemTextField(BuildContext context, double itemHeight,
      GroupItemTextFieldOptions options) {
    Size windowSize = MediaQuery.of(context).size;
    var controller = options.controller ?? TextEditingController();
    controller.value = controller.value.copyWith(text: options.text);
    double textWidthPercent = options.textWidthPercent ?? 0.72;
    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      child: Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            width: double.infinity,
            height: itemHeight,
            child: Row(
              children: [
                Row(
                  children: [
                    (options.tips != null) && options.tips!.isNotEmpty
                        ? Tooltip(
                            message: options.tips,
                            child: InkWell(
                              onTap: () {
                                DialogUtils.showAlertDialog(
                                    context, options.tips!,
                                    showCopy: true, withVersion: true);
                              },
                              child: const Icon(
                                Icons.info_outlined,
                                size: 20,
                              ),
                            ))
                        : const SizedBox.shrink(),
                    const SizedBox(
                      width: 4,
                    ),
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: windowSize.width -
                            windowSize.width * textWidthPercent -
                            24,
                      ),
                      child: Text(
                        options.name,
                        style: TextStyle(
                          fontSize: ThemeConfig.kFontSizeGroupItem,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: windowSize.width * textWidthPercent,
                  ),
                  child: TextField(
                    style: options.style,
                    controller: controller,
                    textInputAction: TextInputAction.done,
                    cursorColor: Colors.black,
                    obscureText: options.obscureText,
                    decoration: InputDecoration(
                      hintText: options.hint,
                      errorText: options.errorText,
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                    textAlign: TextAlign.right,
                    keyboardType: options.keyboardType,
                    inputFormatters: options.inputFormatters,
                    focusNode: options.focusNode,
                    autocorrect: false,
                    enableSuggestions: false,
                    autofocus: options.autoFocus,
                    onChanged: options.onChanged,
                    enabled: options.enabled,
                    onSubmitted: options.onSubmitted,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _createGroupItemSwitch(
      BuildContext context, double itemHeight, GroupItemSwitchOptions options) {
    Size windowSize = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      child: Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            width: double.infinity,
            height: itemHeight,
            child: Row(
              children: [
                Row(
                  children: [
                    (options.tips != null) && options.tips!.isNotEmpty
                        ? Tooltip(
                            message: options.tips,
                            child: InkWell(
                              onTap: () {
                                DialogUtils.showAlertDialog(
                                    context, options.tips!);
                              },
                              child: const Icon(
                                Icons.info_outlined,
                                size: 20,
                              ),
                            ))
                        : const SizedBox(
                            width: 2,
                          ),
                    options.reddot == true
                        ? Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ))
                        : const SizedBox.shrink(),
                    const SizedBox(
                      width: 4,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth:
                                  windowSize.width - 4 * 4 - 4 * 2 - 35 - 80,
                            ),
                            child: Text(
                              options.name,
                              style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem,
                              ),
                            ),
                          ),
                        ]),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(4),
                  child: Switch.adaptive(
                    value: options.switchValue ?? false,
                    activeColor: ThemeDefine.kColorGreenBright,
                    onChanged: options.onSwitch,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _createGroupItemPush(
      BuildContext context, double itemHeight, GroupItemPushOptions options) {
    Size windowSize = MediaQuery.of(context).size;
    const double padding = 4;
    const double iconSize = 20;
    double tipWidth =
        (options.tips != null) && options.tips!.isNotEmpty ? iconSize : 0;
    double reddotWidth = options.reddot == true ? 8 : 0;
    const double arrow_forward_ios_rounded_padding = 4;
    const double arrow_forward_ios_rounded_width = 14;
    double? keyWidth;
    double? valueWidth;
    double textWidthPercent = options.textWidthPercent ?? 0.5;
    keyWidth = windowSize.width * textWidthPercent;
    valueWidth = windowSize.width -
        padding * 2 -
        tipWidth -
        reddotWidth -
        4 -
        arrow_forward_ios_rounded_padding * 2 -
        arrow_forward_ios_rounded_width -
        keyWidth;

    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      child: Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          onTap: options.onPush,
          onLongPress: options.onLongPress,
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: padding,
            ),
            width: double.infinity,
            height: itemHeight,
            child: Row(
              children: [
                Row(
                  children: [
                    (options.tips != null) && options.tips!.isNotEmpty
                        ? Tooltip(
                            message: options.tips,
                            child: InkWell(
                              onTap: () {
                                DialogUtils.showAlertDialog(
                                    context, options.tips!);
                              },
                              child: Icon(
                                Icons.info_outlined,
                                size: tipWidth,
                              ),
                            ))
                        : const SizedBox(
                            width: 0,
                          ),
                    options.reddot == true
                        ? Container(
                            width: reddotWidth,
                            height: reddotWidth,
                            decoration: BoxDecoration(
                              color: options.reddotColor ?? Colors.red,
                              shape: BoxShape.circle,
                            ))
                        : const SizedBox.shrink(),
                    options.icon != null
                        ? Icon(
                            options.icon,
                            size: iconSize,
                          )
                        : const SizedBox.shrink(),
                    const SizedBox(
                      width: 4,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth:
                                options.text != null && options.text!.isNotEmpty
                                    ? keyWidth
                                    : keyWidth + valueWidth,
                          ),
                          child: Text(
                            options.name,
                            style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Row(children: [
                  (options.text != null) && options.text!.isNotEmpty
                      ? ConstrainedBox(
                          constraints: BoxConstraints(
                            maxWidth: valueWidth,
                          ),
                          child: Text(options.text!,
                              style: options.style ??
                                  TextStyle(
                                      fontSize: ThemeConfig.kFontSizeGroupItem,
                                      color: options.textColor)),
                        )
                      : const SizedBox.shrink(),
                  Container(
                    padding:
                        const EdgeInsets.all(arrow_forward_ios_rounded_padding),
                    child: Icon(
                      options.onPush == null
                          ? null
                          : Icons.arrow_forward_ios_rounded,
                      size: arrow_forward_ios_rounded_width,
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _createGroupItemTimePicker(BuildContext context, double itemHeight,
      GroupItemTimerPickerOptions options) {
    final tcontext = Translations.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      child: Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            width: double.infinity,
            height: itemHeight,
            child: Row(
              children: [
                Row(
                  children: [
                    (options.tips != null) && options.tips!.isNotEmpty
                        ? Tooltip(
                            message: options.tips,
                            child: InkWell(
                              onTap: () {
                                DialogUtils.showAlertDialog(
                                    context, options.tips!);
                              },
                              child: const Icon(
                                Icons.info_outlined,
                                size: 20,
                              ),
                            ))
                        : const SizedBox(
                            width: 2,
                          ),
                    options.reddot == true
                        ? Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ))
                        : const SizedBox.shrink(),
                    const SizedBox(
                      width: 4,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: itemHeight,
                          child: Row(children: [
                            Text(
                              options.name,
                              style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                SizedBox(
                  child: CupertinoButton(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    onPressed: options.onPicker == null
                        ? null
                        : () async {
                            await _showDialog(
                              context,
                              CupertinoTimerPicker(
                                mode: CupertinoTimerPickerMode.hm,
                                initialTimerDuration: options.duration!,
                                onTimerDurationChanged: (Duration newDuration) {
                                  options.duration = newDuration;
                                },
                              ),
                            );

                            options.onPicker!(options.duration);
                          },
                    child: Text(
                      _duratingToString(options.duration, tcontext.disable),
                      style: TextStyle(
                        fontSize: ThemeConfig.kFontSizeGroupItem,
                        color: ThemeDefine.kColorBlue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _createGroupItemTimeIntervalPicker(BuildContext context,
      double itemHeight, GroupItemTimerIntervalPickerOptions options) {
    final tcontext = Translations.of(context);
    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      child: Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          onTap: options.onPicker == null
              ? null
              : () async {
                  DialogUtilsResult<Duration>? result =
                      await DialogUtils.showTimeIntervalPickerDialog(
                          context, options.duration, options.notShowDisable);
                  if (result != null) {
                    options.duration = result.data;
                  }

                  options.onPicker!(result == null, options.duration);
                },
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            width: double.infinity,
            height: itemHeight,
            child: Row(
              children: [
                Row(
                  children: [
                    (options.tips != null) && options.tips!.isNotEmpty
                        ? Tooltip(
                            message: options.tips,
                            child: InkWell(
                              onTap: () {
                                DialogUtils.showAlertDialog(
                                    context, options.tips!);
                              },
                              child: const Icon(
                                Icons.info_outlined,
                                size: 20,
                              ),
                            ))
                        : const SizedBox(
                            width: 2,
                          ),
                    options.reddot == true
                        ? Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ))
                        : const SizedBox.shrink(),
                    const SizedBox(
                      width: 4,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: itemHeight,
                          child: Row(children: [
                            Text(
                              options.name,
                              style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                Row(children: [
                  Text(
                    _duratingToString(options.duration, tcontext.disable),
                    style: TextStyle(
                      fontSize: ThemeConfig.kFontSizeGroupItem,
                      color: ThemeDefine.kColorBlue,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _createGroupItemStringPicker(BuildContext context,
      double itemHeight, GroupItemStringPickerOptions options) {
    Size windowSize = MediaQuery.of(context).size;
    double textWidthPercent = options.textWidthPercent ?? 0.5;
    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      child: Material(
        borderRadius: ThemeDefine.kBorderRadius,
        child: InkWell(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 4,
            ),
            width: double.infinity,
            height: itemHeight,
            child: Row(
              children: [
                Row(
                  children: [
                    (options.tips != null) && options.tips!.isNotEmpty
                        ? Tooltip(
                            message: options.tips,
                            child: InkWell(
                              onTap: () {
                                DialogUtils.showAlertDialog(
                                    context, options.tips!);
                              },
                              child: const Icon(
                                Icons.info_outlined,
                                size: 20,
                              ),
                            ))
                        : const SizedBox(
                            width: 2,
                          ),
                    options.reddot == true
                        ? Container(
                            width: 8,
                            height: 8,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              shape: BoxShape.circle,
                            ))
                        : const SizedBox.shrink(),
                    const SizedBox(
                      width: 4,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: itemHeight,
                          child: Row(children: [
                            Text(
                              options.name,
                              style: TextStyle(
                                fontSize: ThemeConfig.kFontSizeGroupItem,
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
                const Spacer(),
                DropdownButton(
                  value: options.selected,
                  items: _buildDropButtonList(
                      options.strings, options.tupleStrings),
                  menuWidth: 200,
                  onChanged: options.onPicker == null
                      ? null
                      : (String? sel) {
                          if (options.tupleStrings != null) {
                            options.selected =
                                sel ?? options.tupleStrings!.first.item1;
                          } else if (options.strings != null) {
                            options.selected = sel ?? options.strings!.first;
                          }

                          options.onPicker!(options.selected);
                        },
                ),
                const SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _duratingToString(Duration? duration, String disable) {
    String ret = "";
    if (duration != null) {
      if (duration.inDays > 0) {
        ret = "${duration.inDays} d";
      } else if (duration.inHours > 0) {
        ret = "${duration.inHours} h";
      } else if (duration.inMinutes > 0) {
        ret = "${duration.inMinutes} m";
      } else if (duration.inSeconds > 0) {
        ret = "${duration.inSeconds} s";
      }
    } else {
      ret = disable;
    }

    return ret;
  }

  Future<void> _showDialog(BuildContext context, Widget child) async {
    await showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        // The bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  static List<DropdownMenuEntry<String>> _buildDropMenuList(
      List<String>? data, List<Tuple2<String, String>>? dataTuple2) {
    if (dataTuple2 != null) {
      return dataTuple2.map((Tuple2 value) {
        return DropdownMenuEntry<String>(
          value: value.item1,
          label: value.item2,
        );
      }).toList();
    } else if (data != null) {
      return data.map((String value) {
        return DropdownMenuEntry<String>(
          value: value,
          label: value,
        );
      }).toList();
    }
    return [];
  }

  static List<DropdownMenuItem<String>> _buildDropButtonList(
      List<String>? data, List<Tuple2<String, String>>? dataTuple2) {
    if (dataTuple2 != null) {
      return dataTuple2.map((Tuple2 value) {
        return DropdownMenuItem<String>(
          value: value.item1,
          child: Text(value.item2),
        );
      }).toList();
    } else if (data != null) {
      return data.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList();
    }
    return [];
  }
}
