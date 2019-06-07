import 'package:coder/start.dart';
import 'package:coder/style/themes.dart';
import 'package:flutter/material.dart';
import 'package:coder/style/themebloc.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final ThemeBloc themeBloc = ThemeBloc();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VSCODE',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: Material(
        child: HomePage(
          themeBloc: themeBloc,
        ),
      ),
    );
  }
}
