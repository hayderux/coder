import 'package:coder/style/xd.dart';
import 'package:flutter/material.dart';

class Env extends StatefulWidget {
  @override
  _EnvState createState() => _EnvState();
}

class _EnvState extends State<Env> {
  Widget envcontainer(IconData icon, Color color) {
    return InkWell(
      hoverColor: Colors.grey,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 100,
        width: 250,
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).bottomAppBarColor,
          boxShadow: boxShadow,
        ),
        child: Icon(
          icon,
          size: 100,
          color: color,
        ),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 1,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: 10, bottom: 20, right: 10, top: 30),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        //envcontainer(Icons.computer, Colors.black),
        //envcontainer(FontAwesomeIcons.windows, Colors.blue.shade800),
        //envcontainer(FontAwesomeIcons.ubuntu, Color(0xffdd4814)),
        // envcontainer(FontAwesomeIcons.apple, Color(0xff7d7d7d))
      ],
    );
  }
}
