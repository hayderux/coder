import 'package:flutter/material.dart';
import 'package:coder/side_views/explorer.dart';
import 'package:coder/side_views/git.dart';
import 'package:coder/side_views/search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sideitem {
  
  IconData icon;
  Function(BuildContext) builder;
  Sideitem( this.icon, this.builder);
}

List<Sideitem> list = [
  Sideitem(
    
    FontAwesomeIcons.solidFile,
    (BuildContext context) => ExplorerV()),
  Sideitem(
    
    Icons.search,
    (BuildContext context) => SearchV()),
  Sideitem(
    
    FontAwesomeIcons.codeBranch,
    (BuildContext context) => GitV()),
  Sideitem(
    
    FontAwesomeIcons.bug,
    (BuildContext context) => Container()),
  Sideitem(
    
    FontAwesomeIcons.check,
    (BuildContext context) => Container()),
];