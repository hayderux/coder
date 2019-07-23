import 'package:flutter/material.dart';

class TabContainer extends StatelessWidget {
  final String filename;
  final String fileicon;

  const TabContainer({Key key, this.filename, this.fileicon}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          /*if (controller2.index == 0) {
            controller2.animateTo((controller2.index + 1) % 2);
          } else {
            controller2.animateTo((controller2.index - 1) % 2);
          }*/
        },
        child: Container(
          height: 40,
          width: 200,
          margin: EdgeInsets.only(top: 10, left: 20),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(25)),
          child: Padding(
            padding: EdgeInsets.only(left: 5, right: 5),
            child: Row(
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
                          image: AssetImage('assets/icons/py.png'))),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('main.dart')
              ],
            ),
          ),
        ));
  }
}
