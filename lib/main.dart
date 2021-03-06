import 'package:coder/style/appthemes.dart';
import 'package:coder/style/changetheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

import 'app/app.dart';

void main() async {
  debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
  runApp(CustomTheme(
    initialThemeKey: MyThemeKeys.DARK,
    child: MyApp(),
  ));
}
