import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'list.dart';

class SettingView extends StatefulWidget {
  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  ThemeData mytheme = ThemeData(
      primaryColor: Colors.blue.shade800,
      accentColor: Colors.grey.shade200.withOpacity(0.6));
  int currentIdx = 0;
  loadcolor(int i) {
    if (i == currentIdx) {
      return mytheme.primaryColor;
    } else {
      return mytheme.accentColor;
    }
  }

  Widget _buildList() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        reverse: false,
        itemBuilder: (BuildContext context, int i) {
          return Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      settinglist[i].title,
                      style: TextStyle(color: loadcolor(i), fontSize: 18),
                    ),
                    leading: Icon(settinglist[i].icon,
                        size: 30, color: loadcolor(i)),
                    selected: i == currentIdx,
                    onTap: () {
                      setState(() {
                        currentIdx = i;
                      });
                    },
                  ),
                  Divider()
                ],
              ));
        },
        itemCount: settinglist.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Row(
          children: <Widget>[
            Container(
              width: 300,
              //color: Theme.of(context).cardColor,
              child: Scrollbar(
                child: _buildList(),
              ),
            ),
            VerticalDivider(),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: settinglist[currentIdx].builder(context),
            ))
          ],
        ));
  }
}
