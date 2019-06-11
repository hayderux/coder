import 'package:coder/components/close_button.dart';
import 'package:coder/components/rounded_button.dart';
import 'package:coder/style/xd.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_modal/rounded_modal.dart';

import 'c_dialog.dart';

class BottomBar extends StatelessWidget {
  final TabController controller;

  const BottomBar({Key key, this.controller}) : super(key: key);
  Column paymethod(currency, VoidCallback onTap, qr) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          width: 200,
          margin: EdgeInsets.only(top: 20, left: 50, right: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(qr))),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: Text(
            currency,
            style: TextStyle(fontFamily: 'sf', fontSize: 20),
          ),
        ),
        RoundedButton(
          icon: Icons.content_copy,
          width: 150,
          text: 'Copy',
          ontap: onTap,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    InkWell bottomicon(IconData icon, VoidCallback onTap) {
      return InkWell(
        child: Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: Icon(
            icon,
            color: Colors.white,
            size: 22,
          ),
        ),
        onTap: onTap,
      );
    }

    return Container(
      height: 35,
      color: Theme.of(context).bottomAppBarColor,
      child: Padding(
        padding: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            bottomicon(
              FontAwesomeIcons.exclamationTriangle,
              () {
                showRoundedModalBottomSheet(
                    radius: 15,
                    context: context,
                    dismissOnTap: false,
                    color: Theme.of(context).scaffoldBackgroundColor,
                    builder: (buildContext) {
                      return Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Container(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    width: 600,
                                    child: TabBar(
                                      controller: controller,
                                      labelColor: Theme.of(context)
                                          .tabBarTheme
                                          .labelColor,
                                      labelStyle: Theme.of(context)
                                          .tabBarTheme
                                          .labelStyle,
                                      indicatorSize: Theme.of(context)
                                          .tabBarTheme
                                          .indicatorSize,
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
                    });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  child: Text('Dart'),
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
                                            leading:
                                                Icon(FontAwesomeIcons.java),
                                            title: Text('Java'),
                                          ),
                                        ],
                                      ),
                                    ))),
                              ));
                        });
                  },
                ),
                bottomicon(FontAwesomeIcons.solidBell, () {
                  showDialogF(
                      context: context,
                      barrierDismissible: true,
                      builder: (buildContext) {
                        return DialogFork(
                          alignment: Alignment.bottomRight,
                          elevation: 6.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Container(
                              height: 450,
                              width: 400,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 10, left: 10, right: 10),
                                child: ListView(
                                  physics: NeverScrollableScrollPhysics(),
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          'Notifications',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        CloseButtonx()
                                      ],
                                    ),
                                    Divider()
                                  ],
                                ),
                              )),
                        );
                      });
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}
