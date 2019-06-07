import 'package:coder/components/close_button.dart';
import 'package:flutter/material.dart';

class RoundedWindow extends StatelessWidget {
  final String title;
  final double height;
  final Widget body;
  RoundedWindow({
    @required this.title,
    @required this.height,
    this.body,
  });
  dialogContent(BuildContext context) {
    return Stack(
      children: <Widget>[
        //...bottom card part,
        Container(
            height: height,
            padding: EdgeInsets.only(
              top: 10,
              bottom: Consts.padding,
              left: Consts.padding,
              right: Consts.padding,
            ),
            margin: EdgeInsets.only(top: Consts.avatarRadius),
            decoration: new BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              //color: Theme.of(context).primaryColor,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 10.0,
                  offset: const Offset(0.0, 10.0),
                ),
              ],
            ),
            child: Scaffold(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              appBar: PreferredSize(
                  preferredSize: Size.fromHeight(70),
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: Consts.padding, right: Consts.padding),
                        child: Column(
                          mainAxisSize:
                              MainAxisSize.min, // To make the card compact
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Text(
                                    title,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  ),
                                ),
                                CloseButtonx()
                              ],
                            ),
                            Divider()
                          ],
                        ),
                      ))),
              body: Padding(
                padding: EdgeInsets.only(top: 20),
                child: body,
              ),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 300, right: 200, bottom: 40),
        child: Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Consts.padding),
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          child: dialogContent(context),
        ));
  }
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}
