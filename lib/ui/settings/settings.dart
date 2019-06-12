import 'package:coder/style/xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'list.dart';

class SettingView extends StatefulWidget {
  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  int currentIdx = 0;
  
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
                    title: Text(settinglist[i].title),
                    leading: Icon(settinglist[i].icon,
                        size: 30, color: Theme.of(context).primaryColor),
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
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  boxShadow: boxShadow,
                  color: Theme.of(context).scaffoldBackgroundColor),
              child: settinglist[currentIdx].builder(context),
            ))
          ],
        ));
  }
}
