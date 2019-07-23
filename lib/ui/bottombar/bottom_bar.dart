import 'package:coder/components/Fork_dialog.dart';
import 'package:coder/style/xd.dart';
import 'package:coder/style/xd.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottom_bar_view.dart';

class BottomBar extends StatelessWidget {
  final TabController controller;

  const BottomBar({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Color(0xff444444),
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    elevation: 7.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    builder: (buildContext) {
                      return Padding(
                        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                        child: BottomBarView(),
                      );
                    });
              },
              padding: EdgeInsets.only(left: 60),
              child: Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      boxShadow: prefix0.boxShadow,
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, right: 5),
                    child: Center(
                      child: Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.bug,
                            color: Colors.black,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            '3',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          )
                        ],
                      ),
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        boxShadow: prefix0.boxShadow,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        'Dart',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  onPressed: () {
                    showDialogF(
                        context: context,
                        barrierDismissible: true,
                        builder: (buildContext) {
                          return DialogFork(
                              alignment: Alignment.topCenter,
                              elevation: 6.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Container(
                                height: 800,
                                width: 800,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        top: 10, left: 10, right: 10),
                                    child: Scrollbar(
                                        child: SingleChildScrollView(
                                      reverse: false,
                                      physics: NeverScrollableScrollPhysics(),
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                              margin: EdgeInsets.only(
                                                  left: 10, top: 20, right: 10),
                                              height: 50,
                                              decoration: BoxDecoration(
                                                  color: Theme.of(context)
                                                      .cardColor,
                                                  boxShadow: boxShadow2,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10)),
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: TextField(
                                                  cursorColor: Colors.black,
                                                  autocorrect: true,
                                                  decoration: InputDecoration(
                                                      border: InputBorder.none,
                                                      hintText: 'Search',
                                                      fillColor: Colors.black,
                                                      focusColor: Colors.black,
                                                      hoverColor: Colors.black,
                                                      icon: Icon(
                                                        Icons.search,
                                                      )),
                                                ),
                                              )),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          ListTile(
                                            leading: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(35),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/icons/dart.png'))),
                                            ),
                                            title: Text('Dart'),
                                          ),
                                          ListTile(
                                            leading: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(35),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/icons/java.png'))),
                                            ),
                                            title: Text('Java'),
                                          ),
                                          ListTile(
                                            leading: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(35),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/icons/js.png'))),
                                            ),
                                            title: Text('Java Script'),
                                          ),
                                          ListTile(
                                            leading: Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(35),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          'assets/icons/py.png'))),
                                            ),
                                            title: Text('Python'),
                                          ),
                                        ],
                                      ),
                                    ))),
                              ));
                        });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
