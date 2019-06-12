import 'package:coder/ui/sidebar/explorer.dart';
import 'package:coder/ui/sidebar/git.dart';
import 'package:coder/ui/sidebar/search.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sideitem {
  IconData icon;
  Function(BuildContext) builder;
  Sideitem(this.icon, this.builder);
}

List<Sideitem> list = [
  Sideitem(FontAwesomeIcons.fileCode, (BuildContext context) => ExplorerV()),
  Sideitem(Icons.search, (BuildContext context) => SearchV()),
  Sideitem(FontAwesomeIcons.codeBranch, (BuildContext context) => GitV()),
  Sideitem(FontAwesomeIcons.bug, (BuildContext context) => Container()),
  Sideitem(Icons.widgets, (BuildContext context) => Container()),
  Sideitem(FontAwesomeIcons.check, (BuildContext context) => Container()),
];
