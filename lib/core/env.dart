import 'package:coder/style/xd.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Env extends StatefulWidget {
  @override
  _EnvState createState() => _EnvState();
}

class _EnvState extends State<Env> {
  Widget envcontainer(IconData icon, Color color) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 300,
        width: 300,
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            //color: Colors.white,
            //boxShadow: boxShadow,
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        envcontainer(FontAwesomeIcons.terminal, Colors.black),
        envcontainer(FontAwesomeIcons.windows, Colors.blue.shade800),
        envcontainer(FontAwesomeIcons.ubuntu, Color(0xffdd4814)),
        envcontainer(FontAwesomeIcons.apple, Color(0xff7d7d7d))
      ],
    );
  }
}
