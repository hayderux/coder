import 'package:coder/components/close_button.dart';
import 'package:flutter/material.dart';

class BottomBarView extends StatefulWidget {
  @override
  _BottomBarViewState createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView>
    with TickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 600,
                  child: TabBar(
                    controller: controller,
                    labelColor: Theme.of(context).tabBarTheme.labelColor,
                    labelStyle: Theme.of(context).tabBarTheme.labelStyle,
                    indicatorSize: Theme.of(context).tabBarTheme.indicatorSize,
                    tabs: <Widget>[
                      Tab(
                        text: 'PROBLEMS',
                      ),
                      Tab(
                        text: 'OUTPUT',
                      ),
                      Tab(
                        text: 'CONSOLE',
                      ),
                      Tab(
                        text: 'TERMINAL',
                      ),
                    ],
                  ),
                ),
                Container(child: CloseButtonx()),
              ],
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
