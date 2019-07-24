import 'dart:ui';
import 'package:flutter/material.dart';
import 'ui/actvitybar/actvitybar.dart';
import 'ui/actvitybar/list.dart';
import 'ui/topbar/file_view.dart';

class ShellView extends StatefulWidget {
  @override
  _ShellViewState createState() => _ShellViewState();
}

class _ShellViewState extends State<ShellView> with TickerProviderStateMixin {
  int currentIdx = 0;
  TabController controller;
  bool showsidebar = false;
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  loadcolor(int i) {
    if (i == currentIdx) {
      return Theme.of(context).bottomAppBarColor;
    } else {
      return Theme.of(context).cardColor.withOpacity(0.2);
    }
  }

  Widget showside() {
    if (showsidebar == false) {
      return Center();
    } else {
      return SizedBox(
        width: 350,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              child: list[currentIdx].builder(context),
              decoration: BoxDecoration(
                  border: Border(right: BorderSide(color: Colors.black)),
                  gradient: LinearGradient(colors: [
                    Color(0xff12c2e9),
                    Color(0xffc471ed),
                  ])),
            ),
          ),
        ),
      );
    }
  }

  Widget _buildList() {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int i) {
          return Padding(
              padding: EdgeInsets.only(top: 30, left: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: loadcolor(i),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: InkWell(
                  child: ListTile(
                      leading:
                          Icon(list[i].icon, size: 30, color: Colors.white),
                      selected: i == currentIdx),
                  onTap: () {
                    setState(() {
                      currentIdx = i;
                    });
                  },
                  onDoubleTap: () {
                    if (showsidebar == false) {
                      setState(() {
                        showsidebar = true;
                      });
                    } else {
                      setState(() {
                        showsidebar = false;
                      });
                    }
                  },
                ),
              ));
        },
        itemCount: list.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          SizedBox(
            width: 100,
            child: ActvityBar(
              body: _buildList(),
            ),
          ),
          showside(),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(),
              child: FileView(),
            ),
          )
        ],
      ),
    );
  }
}
