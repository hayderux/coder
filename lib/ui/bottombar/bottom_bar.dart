import 'package:coder/components/Fork_dialog.dart';
import 'package:coder/style/xd.dart' as prefix0;
import 'package:coder/ui/bottombar/language/language_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'bottom_bar_view.dart';

class BottomBar extends StatelessWidget {
  final TabController controller;

  const BottomBar({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Theme.of(context).bottomAppBarColor,
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
                            Icons.bug_report,
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
                                    child: LanguageMode()),
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
