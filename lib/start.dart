import 'package:coder/style/xd.dart';
import 'package:flutter/material.dart';

import 'ui/actvitybar/list.dart';
import 'ui/actvitybar/sidebar.dart';
import 'ui/bottombar/bottom_bar.dart';
import 'ui/topbar/file_view.dart';


class HomePage extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<HomePage> with TickerProviderStateMixin {
  int currentIdx = 0;
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  Widget _buildList() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int i) {
          return Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Icon(list[i].icon, size: 35, color: Colors.white),
              selected: i == currentIdx,
              onTap: () {
                setState(() {
                  currentIdx = i;
                });
              },
            ),
          );
        },
        itemCount: list.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomBar(
          controller: controller,
        ),
        body: Row(
          children: <Widget>[
            SizedBox(
              width: 70.0,
              child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff333333),
                  ),
                  child: SideBar(
                    body: _buildList(),
                  )),
            ),
            Container(
              width: 300,
              child: list[currentIdx].builder(context),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
              ),
            ),
            Expanded(
              child: Container(
                child: FileView(),
                decoration: BoxDecoration(boxShadow: boxShadow),
              ),
            )
          ],
        ));
  }
}
