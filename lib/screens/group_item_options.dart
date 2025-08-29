// ignore_for_file: constant_identifier_names

import 'package:karing/screens/theme_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tuple/tuple.dart';

typedef SetStateCallback = void Function();

class GroupItemTextOptions {
  GroupItemTextOptions(
      {required this.name,
      required this.text,
      this.tips,
      this.textStyle,
      this.textColor,
      this.textWidthPercent = 0.5,
      this.child,
      this.onPush,
      this.onLongPress});

  final String name;
  final String? text;
  final String? tips;
  final TextStyle? textStyle;

  final Color? textColor;
  final double textWidthPercent;
  final Widget? child;
  Future<void> Function()? onPush;
  Future<void> Function()? onLongPress;
}

class GroupItemTextFieldOptions {
  GroupItemTextFieldOptions({
    required this.name,
    this.tips,
    this.obscureText = false,
    this.keyboardType,
    this.inputFormatters,
    this.text,
    this.textStyle,
    this.hint,
    this.errorText,
    this.enabled,
    this.readOnly = false,
    this.autoFocus = false,
    this.focusNode,
    this.textInputAction,
    this.textWidthPercent = 0.5,
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
  final TextStyle? textStyle;
  final String? hint;
  final String? errorText;
  final bool readOnly;
  final bool? enabled;
  final bool autoFocus;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final double textWidthPercent;
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
    this.textStyle,
    this.textColor,
    this.textWidthPercent = 0.3,
    this.onPush,
    this.onLongPress,
  });

  final String name;
  final String? tips;
  final bool? reddot;
  final Color? reddotColor;
  final IconData? icon;
  final String? text;
  final TextStyle? textStyle;
  final Color? textColor;
  final double textWidthPercent;
  Future<void> Function()? onPush;
  Future<void> Function()? onLongPress;
}

class GroupItemTimerIntervalPickerOptions {
  GroupItemTimerIntervalPickerOptions({
    required this.name,
    this.tips,
    this.reddot,
    this.duration,
    this.showDays = true,
    this.showHours = true,
    this.showMinutes = true,
    this.showSeconds = true,
    this.showDisable = true,
    this.onPicker,
  });

  final String name;
  final String? tips;
  final bool? reddot;
  Duration? duration;

  final bool showDays;
  final bool showHours;
  final bool showMinutes;
  final bool showSeconds;
  final bool showDisable;
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
    this.textWidthPercent = 0.5,
    this.onPicker,
  });

  final String name;
  final String? tips;
  final bool? reddot;
  final List<String?>? strings;
  final List<Tuple2<String?, String>>? tupleStrings;
  String? selected;
  final double textWidthPercent;
  Future<void> Function(String?)? onPicker;
}

class GroupItemOptions {
  GroupItemOptions({
    this.itemHeight = ThemeConfig.kGroupItemHeight,
    this.textOptions,
    this.textFormFieldOptions,
    this.switchOptions,
    this.pushOptions,
    this.timerIntervalPickerOptions,
    this.stringPickerOptions,
  });
  final double itemHeight;
  final GroupItemTextOptions? textOptions;
  final GroupItemTextFieldOptions? textFormFieldOptions;
  final GroupItemSwitchOptions? switchOptions;
  final GroupItemPushOptions? pushOptions;
  final GroupItemTimerIntervalPickerOptions? timerIntervalPickerOptions;
  final GroupItemStringPickerOptions? stringPickerOptions;
}
