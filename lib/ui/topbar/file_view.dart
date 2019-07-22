import 'package:coder/style/xd.dart' as prefix0;
import 'package:coder/ui/bottombar/bottom_bar.dart';
import 'package:coder/ui/editor/editor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/font_awesome.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FileView extends StatefulWidget {
  @override
  _FileViewState createState() => _FileViewState();
}

class _FileViewState extends State<FileView> with TickerProviderStateMixin {
  TabController controller;
  int currtab = 0;
  void initState() {
    super.initState();
    initTab();
  }

  void initTab() async {
    controller = TabController(vsync: this, length: 2, initialIndex: currtab);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xff444444),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 80,
              child: Container(
                decoration: BoxDecoration(color: Color(0xff444444)),
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBar(
                    elevation: 0.0,
                    backgroundColor: Theme.of(context).bottomAppBarColor,
                    centerTitle: false,
                    title: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            margin:
                                EdgeInsets.only(right: 20, bottom: 10, top: 10),
                            height: 35,
                            width: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: prefix0.boxShadow,
                                color: Colors.grey.withOpacity(0.6)),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 10, bottom: 10, right: 10),
                              child: Row(
                                children: <Widget>[
                                  Icon(FontAwesomeIcons.java),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 4, left: 10),
                                    child: Text('main.dart'),
                                  )
                                ],
                              ),
                            ))
                      ],
                    ),
                    actions: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 20),
                        height: 30,
                        width: 30,
                        child: Icon(Icons.play_arrow),
                        decoration: BoxDecoration(
                            boxShadow: prefix0.boxShadow,
                            shape: BoxShape.circle,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  body: Container(
                    child: EditorView(),
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
