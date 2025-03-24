import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';

class ThemeDataDark {
  static const Color homeColor = Color(0xFF202020);
  static const Color mainColor = Color(0xFF303030);
  static const Color mainBgColor = Color(0xFF202020);
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      platform: TargetPlatform.iOS,
      //fontFamily: 'Roboto',
      primaryColor: mainColor,
      primaryColorDark: mainColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: mainColor,
        brightness: Brightness.dark,
      ),

      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: mainBgColor,
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarColor: mainBgColor,
          systemNavigationBarDividerColor: Colors.transparent,
          statusBarColor: mainBgColor,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      scaffoldBackgroundColor: mainBgColor,
      cardColor: mainColor,
      canvasColor: mainColor,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      cardTheme: const CardTheme(color: mainBgColor),
      checkboxTheme: CheckboxThemeData(
        fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          return mainColor;
        }),
        checkColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          return ThemeDefine.kColorGreenBright;
        }),
        overlayColor:
            WidgetStateProperty.resolveWith((Set<WidgetState> states) {
          return Colors.grey;
        }),
      ),
      radioTheme: RadioThemeData(
          fillColor: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            if (states.contains(WidgetState.selected)) {
              return ThemeDefine.kColorGreenBright;
            }
            return null;
          }),
          overlayColor:
              WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            return Colors.grey;
          }),
          visualDensity: const VisualDensity(horizontal: -1, vertical: -1)),
      listTileTheme: const ListTileThemeData(
        dense: true,
        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
        horizontalTitleGap: 0.0,
        visualDensity: VisualDensity(horizontal: -1, vertical: -1),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(horizontal: -1, vertical: -1),
          backgroundColor: mainColor,
          foregroundColor: Colors.white,
          selectedForegroundColor: Colors.white,
          selectedBackgroundColor: mainColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: ThemeDefine.kColorBlue,
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)))),
      dialogTheme: DialogTheme(
          surfaceTintColor: Colors.black,
          backgroundColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4))),

      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: ThemeDefine.kColorBlue,
        circularTrackColor: Colors.black,
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
          textStyle: TextStyle(
              color: Colors.white, fontSize: ThemeConfig.kFontSizeGroupItem),
          inputDecorationTheme: const InputDecorationTheme(
            labelStyle: TextStyle(color: Colors.grey),
            floatingLabelStyle: TextStyle(color: ThemeDefine.kColorBlue),
            helperStyle: TextStyle(color: Colors.grey),
            hintStyle: TextStyle(color: Colors.grey),
            errorStyle: TextStyle(color: Colors.red),
            isDense: true,
            contentPadding: EdgeInsets.all(8),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: ThemeDefine.kColorBlue),
                borderRadius: BorderRadius.all(Radius.circular(0))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: ThemeDefine.kColorBlue),
                borderRadius: BorderRadius.all(Radius.circular(0))),
            fillColor: Colors.white,
            filled: true,
          ),
          menuStyle: const MenuStyle(
            backgroundColor: WidgetStatePropertyAll<Color>(mainColor),
            shadowColor: WidgetStatePropertyAll<Color>(mainColor),
            surfaceTintColor: WidgetStatePropertyAll<Color>(mainColor),
          )),
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(color: Colors.grey),
        floatingLabelStyle: TextStyle(color: ThemeDefine.kColorBlue),
        helperStyle: TextStyle(color: Colors.grey),
        hintStyle: TextStyle(color: Colors.grey),
        errorStyle: TextStyle(color: Colors.red),
        isDense: true,
        contentPadding: EdgeInsets.all(8),
        border: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeDefine.kColorBlue),
            borderRadius: BorderRadius.all(Radius.circular(0))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: ThemeDefine.kColorBlue),
            borderRadius: BorderRadius.all(Radius.circular(0))),
        fillColor: Colors.white,
        filled: true,
      ),
      primaryTextTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          titleMedium: TextStyle(color: Colors.black)),
      textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          titleMedium: TextStyle(color: Colors.white)),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: Colors.blue[700],
        selectionHandleColor: Colors.black,
      ),
      menuTheme: const MenuThemeData(
          style: MenuStyle(
        backgroundColor: WidgetStatePropertyAll<Color>(mainBgColor),
      )),
      popupMenuTheme: const PopupMenuThemeData(
          color: mainBgColor, surfaceTintColor: Colors.white),
    );
  }
}
