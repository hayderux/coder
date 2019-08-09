import 'package:flutter/material.dart';

import 'views/apperance.dart';

class Settingitem {
  IconData icon;
  Function(BuildContext) builder;
  String title;
  Settingitem(this.icon, this.builder, this.title);
}

List<Settingitem> settinglist = [
  Settingitem(Icons.color_lens, (BuildContext context) => ApperanceV(),
      'Apperance'),
  Settingitem(
      Icons.edit, (BuildContext context) => ApperanceV(), 'Editor'),
  
  Settingitem(
      Icons.info, (BuildContext context) => Container(), 'About')
];
