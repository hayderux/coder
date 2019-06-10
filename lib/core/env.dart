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
        height: 100,
        width: 250,
        margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
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
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 1,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: 10, bottom: 20, right: 10),
      scrollDirection: Axis.vertical,
      children: <Widget>[
        envcontainer(FontAwesomeIcons.terminal, Colors.black),
        envcontainer(FontAwesomeIcons.windows, Colors.blue.shade800),
        envcontainer(FontAwesomeIcons.ubuntu, Color(0xffdd4814)),
        envcontainer(FontAwesomeIcons.apple, Color(0xff7d7d7d))
      ],
    );
  }
}
