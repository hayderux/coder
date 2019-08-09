import 'package:coder/ui/sideviews/search.dart';
import 'package:flutter/material.dart';

class Sideitem {
  IconData icon;
  Function(BuildContext) builder;
  Sideitem(this.icon, this.builder);
}

List<Sideitem> list = [
  //Sideitem(Icons.file, (BuildContext context) => ExplorerV()),
  Sideitem(Icons.search, (BuildContext context) => SearchV()),
  //Sideitem(FontAwesomeIcons.codeBranch, (BuildContext context) => GitV()),
  //Sideitem(FontAwesomeIcons.bug, (BuildContext context) => Container()),
  Sideitem(Icons.widgets, (BuildContext context) => Container()),
  // Sideitem(FontAwesomeIcons.check, (BuildContext context) => Container()),
];
