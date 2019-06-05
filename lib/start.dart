import 'package:flutter/material.dart';
import 'package:coder/style/themebloc.dart';

import 'actvitybar/list.dart';
import 'actvitybar/sidebar.dart';
import 'bottombar/bottom_bar.dart';

class HomePage extends StatefulWidget {
  final ThemeBloc themeBloc;

  const HomePage({Key key, this.themeBloc}) : super(key: key);
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
        itemBuilder: (BuildContext context, int i) {
          return Padding(
            padding: EdgeInsets.only(top: 30),
            child: ListTile(
              leading: Icon(list[i].icon, size: 36, color: Colors.white),
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
                  //child: _buildList()
                  child: SideBar(
                    themeBloc: widget.themeBloc,
                    body: _buildList(),
                  )),
            ),
            Container(
              width: 300,
              child: list[currentIdx].builder(context),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                boxShadow: <BoxShadow>[
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 12.0,
                    offset: new Offset(0.0, 10.0),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(),
            )
          ],
        ));
  }
}
