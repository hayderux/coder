import 'package:flutter/material.dart';

enum MyThemeKeys { LIGHT, DARK }

class Apptheme {
  static final ThemeData lightTheme = ThemeData(
    hoverColor: Colors.transparent,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    //light theme
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    platform: TargetPlatform.iOS,
    appBarTheme: AppBarTheme(color: Colors.grey.shade200),
    cardColor: Colors.grey.shade200,
    primaryColor: Color(0xff007ACC),
    textTheme: TextTheme(
        title: TextStyle(
            color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)),
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
    hoverColor: Colors.transparent, 
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    brightness: Brightness.dark,
    platform: TargetPlatform.iOS,
    bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff444444)),
    scaffoldBackgroundColor: Color(0xff333333),
    accentColor: Color(0xff007ACC),
    appBarTheme: AppBarTheme(color: Color(0xff252527)),
    cardColor: Color(0xff252527),
    primaryColor: Color(0xff007ACC),
    textTheme: TextTheme(
        title: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
    tabBarTheme: TabBarTheme(
        labelColor: Colors.white,
        labelStyle: TextStyle(fontFamily: 'sf'),
        indicatorSize: TabBarIndicatorSize.label),
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
        return lightTheme;
    }
  }
}
