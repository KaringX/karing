import 'dart:io';

import 'package:flutter/material.dart';

class ThemeConfig {
  static const double kListItemHeight = 62;
  static const double kListItemHeight2 = 50;
  static const double kGroupItemHeight = 46;

  static const double kFontSizeTitle = 18;
  static const FontWeight kFontWeightTitle = FontWeight.w600;

  static const double kFontSizeListItem = 17;
  static const FontWeight kFontWeightListItem = FontWeight.w500;

  static const double kFontSizeListSubItem = 14;
  static const FontWeight kFontWeightListSubItem = FontWeight.w400;

  static double kFontSizeGroupItem =
      (Platform.isAndroid || Platform.isIOS) ? 15 : 14;
  static const FontWeight kFontWeightGroupItem = FontWeight.w400;
}
