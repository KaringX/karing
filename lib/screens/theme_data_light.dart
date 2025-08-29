import 'package:flutter/material.dart';
import 'package:karing/app/extension/colors.dart';
import 'package:karing/screens/theme_define.dart';

class ThemeDataLight {
  static const Color mainColor = Colors.white;
  static const Color mainBgColor = Color(0xFFF0F0F0);
  static ThemeData theme(BuildContext context) {
    final ColorScheme scheme = ColorScheme.fromSeed(
      seedColor: mainColor,
      brightness: Brightness.light,
      //primary: mainColor,
      surface: mainBgColor,
      //surfaceContainer:mainBgColor,
      surfaceContainerLow: mainColor,
      secondaryContainer: Colors.grey[350],
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: scheme,
      platform: TargetPlatform.iOS,
      scaffoldBackgroundColor: scheme.surface,
      cardTheme: const CardTheme(color: Colors.white),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: mainBgColor.withValues(alpha: 0.5),
        filled: true,
        labelStyle: TextStyle(color: Colors.grey),
        floatingLabelStyle: TextStyle(color: ThemeDefine.kColorBlue),
        helperStyle: TextStyle(color: Colors.grey),
        hintStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(color: Colors.red),
        isDense: true,
        contentPadding: EdgeInsets.all(8),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeDefine.kColorBlue),
            borderRadius: BorderRadius.all(Radius.circular(4))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeDefine.kColorBlue),
            borderRadius: BorderRadius.all(Radius.circular(4))),
      ),
      listTileTheme: ListTileThemeData(dense: true),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.focused)) {
                return ThemeDefine.kColorBlue[800];
              }
              if (states.contains(WidgetState.selected)) {
                return ThemeDefine.kColorBlue[200];
              }
              return ThemeDefine.kColorBlue;
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith(
            (Set<WidgetState> states) {
              return Colors.white;
            },
          ),
          shape: WidgetStateProperty.resolveWith(
            (Set<WidgetState> states) {
              return RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35));
            },
          ),
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          return Colors.white;
        }),
        checkColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          return ThemeDefine.kColorGreenBright;
        }),
        overlayColor:
            WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          return Colors.grey;
        }),
      ),
    );
  }
}
