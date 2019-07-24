import 'package:coder/style/changetheme.dart';
import 'package:flutter/material.dart';
import '../shell.dart';

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VSCODE',
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.of(context),
      home: Material(
        child: ShellView(),
      ),
    );
  }
}
