import 'package:flutter/material.dart';
enum MyThemeKeys { LIGHT, DARK }

class Apptheme {
  static final ThemeData lightTheme = ThemeData(
          //platform: TargetPlatform.iOS,
          brightness: Brightness.light,
          primaryColor: Color(0xff1858B8),
          //accentColor: Color(0xFF333366),
          fontFamily: 'sf',
          cardColor: Color(0xFF13B9FD),
          //scaffoldBackgroundColor: Colors.white
         scaffoldBackgroundColor: Colors.grey.shade200,
        );

  static final ThemeData darkTheme = ThemeData(
          platform: TargetPlatform.iOS,
          brightness: Brightness.dark,
          primaryColor: Color(0xff1858B8),
          //accentColor: Color(0xFF333366),
          fontFamily: 'sf',
          cardColor: Color(0xFF13B9FD),
          //scaffoldBackgroundColor: Colors.white
          
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