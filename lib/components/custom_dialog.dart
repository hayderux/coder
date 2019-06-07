import 'package:flutter/material.dart';

import 'close_button.dart';

class CustomDialog extends StatelessWidget {
  final Widget body;
  final String title;
  final double height;
  CustomDialog({@required this.title, this.height, this.body});
  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: Container(
            margin: EdgeInsets.only(top: 15, bottom: 15, left: 5, right: 5),
            height: height,
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
                    automaticallyImplyLeading: false,
                    backgroundColor: Theme.of(context).dialogBackgroundColor),
                Divider(),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 100),
          child: Scaffold(
            body: body,
          ),
        )
      ],
    );
  }

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
            //child: dialogContent(context),
            child: Padding(
              padding: EdgeInsets.only(top: 15, bottom: 10, left: 5, right: 5),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                child: Container(
                  height: height,
                  child: Scaffold(
                    appBar: PreferredSize(
                      preferredSize: Size.fromHeight(90),
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
                              automaticallyImplyLeading: false,
                              backgroundColor:
                                  Theme.of(context).dialogBackgroundColor),
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
