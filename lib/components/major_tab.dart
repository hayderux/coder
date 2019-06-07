import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';

class Flightbar extends StatelessWidget {
  final TabController controllerx;

  const Flightbar({Key key, this.controllerx}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.only(
        top: 10,
      ),
      width: 350,
      child: TabBar(
        indicatorColor: Colors.transparent,
        controller: controllerx,
        labelColor: Colors.white,
        labelStyle: TextStyle(fontFamily: 'sf'),
        unselectedLabelColor: Colors.grey.shade400,
        indicator: new BubbleTabIndicator(
          indicatorRadius: 10,
          indicatorHeight: 40.0,
          //indicatorColor: Theme.of(context).scaffoldBackgroundColor,
          tabBarIndicatorSize: TabBarIndicatorSize.tab,
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: <Widget>[
          Tab(
            text: 'Dart',
          ),
          Tab(
            text: 'master',
          ),
          Tab(
            text: 'master',
          ),
        ],
      ),
    );
  }
}
