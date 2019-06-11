import 'package:flutter/material.dart';

import 'close_button.dart';

class CustomDialog extends StatelessWidget {
  final Widget body;
  final String title;
  final double height;
  CustomDialog({@required this.title, this.height, this.body});

  @override
  Widget build(BuildContext context) {
    //padding: EdgeInsets.only(left: 300, right: 200, bottom: 40),
    return Padding(
        padding: EdgeInsets.only(left: 300, right: 200, bottom: 40),
        child: Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 6.0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            child: Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10, left: 5, right: 5),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Container(
                  height: height,
                  child: Scaffold(
                    //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    appBar: PreferredSize(
                      preferredSize: Size.fromHeight(80),
                      child: Column(
                        children: <Widget>[
                          AppBar(
                              elevation: 0.0,
                              title: Text(
                                title,
                                style: Theme.of(context).textTheme.title,
                              ),
                              centerTitle: false,
                              actions: <Widget>[CloseButtonx()],
                              automaticallyImplyLeading: true,
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor),
                          Divider()
                        ],
                      ),
                    ),
                    body: body,
                  ),
                ),
              ),
            )));
  }
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}
