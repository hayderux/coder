import 'package:coder/components/close_button.dart';
import 'package:coder/style/xd.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TabGroup extends StatefulWidget {
  final VoidCallback ontap;

  const TabGroup({Key key, @required this.ontap}) : super(key: key);
  @override
  _TabGroupState createState() => _TabGroupState();
}

class _TabGroupState extends State<TabGroup> {
  Widget tabcontainer() {
    return InkWell(
        onTap: widget.ontap,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 250,
          width: 250,
          margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              boxShadow: boxShadow,
              borderRadius: BorderRadius.circular(10)),
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
                        Icon(
                          FontAwesomeIcons.java,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(' File1')
                      ],
                    ),
                  ),
                  CloseButtonx()
                ],
              ),
              Divider()
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Text(
            '  Tabs',
            style: TextStyle(fontSize: 50),
          ),
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 5,
            crossAxisSpacing: 1,
            childAspectRatio: 1,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 10, bottom: 20, right: 10),
            children: <Widget>[
              tabcontainer(),
              tabcontainer(),
              tabcontainer(),
              tabcontainer(),
              tabcontainer(),
              tabcontainer()
            ],
          )
        ],
      ),
    ));
  }
}
