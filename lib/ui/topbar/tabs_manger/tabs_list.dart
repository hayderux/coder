import 'package:flutter/material.dart';

class MyTabs {
  String name;
  String icon;
  Function(BuildContext) builder;
  MyTabs(this.name, this.icon, this.builder);
}

List<MyTabs> tabslist = [
  MyTabs(
      'main.py',
      'assets/icons/py.png',
      (buildContext) => Container(
            child: Center(
              child: Image.asset('assets/icons/py.png'),
            ),
          )),
  MyTabs(
      'home.js',
      'assets/icons/js.png',
      (buildContext) => Container(
            child: Center(
              child: Image.asset('assets/icons/js.png'),
            ),
          )),
  MyTabs(
      'app.dart',
      'assets/icons/dart.png',
      (buildContext) => Container(
            child: Center(
              child: Image.asset('assets/icons/dart.png'),
            ),
          )),
  MyTabs(
      'tabs.java',
      'assets/icons/java.png',
      (buildContext) => Container(
            child: Center(
              child: Image.asset('assets/icons/java.png'),
            ),
          ))
];
