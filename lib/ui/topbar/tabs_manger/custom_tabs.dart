import 'package:flutter/material.dart';

class CustomTabs extends StatefulWidget {
  final TabController controller;
  final List<Widget> tabs;
  final ValueChanged<int> onTap;
  const CustomTabs({Key key, @required this.controller, @required this.tabs, this.onTap})
      : assert(tabs != null),
        assert(controller != null),
        super(key: key);
  @override
  _CustomTabsState createState() => _CustomTabsState();
}

class _CustomTabsState extends State<CustomTabs> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
