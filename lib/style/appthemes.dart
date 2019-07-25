import 'package:flutter/material.dart';

enum MyThemeKeys { LIGHT, DARK }

class Apptheme {
  static final ThemeData lightTheme = ThemeData(
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    brightness: Brightness.light,
    platform: TargetPlatform.iOS,
  );

  static final ThemeData darkTheme = ThemeData(
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    brightness: Brightness.dark,
    platform: TargetPlatform.iOS,
    scaffoldBackgroundColor: Color(0xff333333),
    accentColor: Color(0xff007ACC),
    cardColor: Color(0xff252527),
    primaryColor: Color(0xff007ACC),
    bottomAppBarColor: Color(0xff444444),
    accentIconTheme: IconThemeData(color: Colors.white),
    iconTheme: IconThemeData(color: Colors.white),
    fontFamily: 'sf',
  );
  static ThemeData getThemeFromKey(MyThemeKeys themeKey) {
    switch (themeKey) {
      case MyThemeKeys.LIGHT:
        return lightTheme;
      case MyThemeKeys.DARK:
        return darkTheme;
      default:
        return darkTheme;
    }
  }
}
