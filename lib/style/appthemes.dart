import 'package:flutter/material.dart';

enum MyThemeKeys { LIGHT, DARK }

class Apptheme {
  static final ThemeData lightTheme = ThemeData(
    //light theme
    brightness: Brightness.light,
    dividerColor: Colors.black,
    scaffoldBackgroundColor: Colors.white,
    platform: TargetPlatform.android,
    primaryColor: Color(0xff007ACC),
    textTheme: TextTheme(
        title: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
    primaryIconTheme: IconThemeData(color: Colors.black),
    tabBarTheme: TabBarTheme(
      labelColor: Colors.black,
      labelStyle: TextStyle(fontFamily: 'sf'),
      indicatorSize: TabBarIndicatorSize.label,
    ),
    bottomAppBarColor: Color(0xff007ACC),
    accentIconTheme: IconThemeData(color: Colors.black),
    iconTheme: IconThemeData(color: Colors.black),
    fontFamily: 'sf',
  );

  static final ThemeData darkTheme = ThemeData(
    dividerColor: Colors.white,
    brightness: Brightness.dark,
    platform: TargetPlatform.android,
    bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff333333)),
    scaffoldBackgroundColor: Color(0xff252527),
    primaryColor: Color(0xff007ACC),
    textTheme: TextTheme(title: TextStyle(color: Colors.white)),
    tabBarTheme: TabBarTheme(
        labelColor: Colors.white,
        labelStyle: TextStyle(fontFamily: 'sf'),
        indicatorSize: TabBarIndicatorSize.label),
    bottomAppBarColor: Color(0xff007ACC),
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
        return lightTheme;
    }
  }
}
