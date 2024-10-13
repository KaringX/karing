import 'dart:io';

import 'package:flutter/material.dart';
import 'package:karing/screens/theme_data_blue.dart';
import 'package:karing/screens/theme_data_dark.dart';
import 'package:karing/screens/theme_data_light.dart';
import 'package:karing/screens/theme_define.dart';

class Themes with ChangeNotifier {
  String _theme = '';
  void setTheme(String theme, bool notify) {
    switch (theme) {
      case ThemeDefine.kThemeSystem:
      case ThemeDefine.kThemeLight:
      case ThemeDefine.kThemeDark:
      case ThemeDefine.kThemeBlue:
        _theme = theme;
      default:
        return;
    }
    if (!notify) {
      return;
    }

    notifyListeners();
  }

  String theme() {
    return _theme;
  }

  Color? getThemeHomeColor(BuildContext context) {
    var brightness = MediaQuery.platformBrightnessOf(context);
    switch (_theme) {
      case ThemeDefine.kThemeSystem:
        return brightness == Brightness.dark
            ? ThemeDataDark.homeColor
            : ThemeDataLight.homeColor;
      case ThemeDefine.kThemeLight:
        return ThemeDataLight.homeColor;
      case ThemeDefine.kThemeDark:
        return ThemeDataDark.homeColor;
      case ThemeDefine.kThemeBlue:
        return ThemeDataBlue.homeColor;
    }
    return null;
  }

  Color? getThemeIconColor(BuildContext context) {
    var brightness = MediaQuery.platformBrightnessOf(context);
    switch (_theme) {
      case ThemeDefine.kThemeSystem:
       return brightness == Brightness.dark
            ? Colors.white.withOpacity(0.5)
            : Colors.black.withOpacity(0.5);
      case ThemeDefine.kThemeLight:
        return Colors.black.withOpacity(0.5);
      case ThemeDefine.kThemeDark:
        return Colors.white.withOpacity(0.5);
      case ThemeDefine.kThemeBlue:
        return Colors.black.withOpacity(0.5);
    }
    return Colors.grey.withOpacity(0.5);
  }

  ThemeMode themeMode() {
    switch (_theme) {
      case ThemeDefine.kThemeSystem:
        return ThemeMode.system;
      case ThemeDefine.kThemeLight:
        return ThemeMode.light;
      case ThemeDefine.kThemeDark:
        return ThemeMode.dark;
    }
    return ThemeMode.light;
  }

  ThemeData themeData(BuildContext context) {
    var brightness = MediaQuery.platformBrightnessOf(context);
    switch (_theme) {
      case ThemeDefine.kThemeSystem:
        return brightness == Brightness.dark
            ? ThemeDataDark.theme(context)
            : ThemeDataLight.theme(context);
      case ThemeDefine.kThemeLight:
        return ThemeDataLight.theme(context);
      case ThemeDefine.kThemeDark:
        return ThemeDataDark.theme(context);
      case ThemeDefine.kThemeBlue:
        return ThemeDataBlue.theme(context);
    }
    return ThemeDataLight.theme(context);
  }

  Brightness? getStatusBarBrightness(BuildContext context) {
    if (Platform.isIOS) {
      var brightness = MediaQuery.platformBrightnessOf(context);
      switch (_theme) {
        case ThemeDefine.kThemeSystem:
          return brightness == Brightness.dark
              ? Brightness.dark
              : Brightness.light;
        case ThemeDefine.kThemeLight:
        case ThemeDefine.kThemeBlue:
          return Brightness.light;
        case ThemeDefine.kThemeDark:
          return Brightness.dark;
      }
    }
    return null;
  }

  Brightness? getStatusBarIconBrightness(BuildContext context) {
    if (Platform.isAndroid) {
      var brightness = MediaQuery.platformBrightnessOf(context);
      switch (_theme) {
        case ThemeDefine.kThemeSystem:
          return brightness == Brightness.dark
              ? Brightness.light
              : Brightness.dark;
        case ThemeDefine.kThemeLight:
        case ThemeDefine.kThemeBlue:
          return Brightness.dark;
        case ThemeDefine.kThemeDark:
          return Brightness.light;
      }
    }
    return null;
  }
}
