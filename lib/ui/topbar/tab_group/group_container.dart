import 'package:coder/components/close_button.dart';
import 'package:coder/style/xd.dart';
import 'package:flutter/material.dart';

class GroupContainer extends StatelessWidget {
  final VoidCallback ontap;
  final String icon;
  final String name;
  const GroupContainer({Key key, this.ontap, this.icon, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: ontap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
            height: 250,
            width: 250,
            margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
            decoration: BoxDecoration(
                color: Theme.of(context).bottomAppBarColor,
                boxShadow: boxShadow,
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 35,
                                  width: 35,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35),
                                      image: DecorationImage(
                                          image: AssetImage(icon))),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  name,
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      CloseButtonx()
                    ],
                  ),
                  Divider()
                ],
              ),
            )));
  }
}
