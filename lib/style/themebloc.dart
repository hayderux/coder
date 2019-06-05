import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class DemoTheme {
  final String name;
  final ThemeData data;

  const DemoTheme(this.name, this.data);
}

class ThemeBloc {
  final Stream<ThemeData> themeDataStream;
  final Sink<DemoTheme> selectedTheme;

  factory ThemeBloc() {
    final selectedTheme = PublishSubject<DemoTheme>();
    final themeDataStream = selectedTheme
        .distinct()
        .map((theme) => theme.data);
    return ThemeBloc._(themeDataStream, selectedTheme);
  }

  const ThemeBloc._(this.themeDataStream, this.selectedTheme);

  DemoTheme initialTheme() {
    return DemoTheme(
        'initial',
        ThemeData(
        brightness: Brightness.dark,
        platform: TargetPlatform.iOS,
        bottomAppBarTheme: BottomAppBarTheme(
          color: Color(0xff333333)
        ),
        tabBarTheme: TabBarTheme(
          labelColor: Colors.white,
          labelStyle: TextStyle(
            fontFamily: 'sf'
          ),
         indicatorSize: TabBarIndicatorSize.label 
        ),
        bottomAppBarColor: Color(0xff007ACC),
        accentIconTheme: IconThemeData(
          color: Colors.white
        ),
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        fontFamily: 'sf',
      )
        );
  }
}