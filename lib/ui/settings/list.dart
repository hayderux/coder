import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'views/apperance.dart';

class Settingitem {
  IconData icon;
  Function(BuildContext) builder;
  String title;
  Settingitem(this.icon, this.builder, this.title);
}

List<Settingitem> settinglist = [
  Settingitem(FontAwesomeIcons.moon, (BuildContext context) => ApperanceV(),
      'Apperance'),
  Settingitem(
      FontAwesomeIcons.edit, (BuildContext context) => ApperanceV(), 'Editor'),
  Settingitem(FontAwesomeIcons.terminal, (BuildContext context) => Container(),
      'Terminal'),
  Settingitem(
      FontAwesomeIcons.info, (BuildContext context) => Container(), 'About')
];
