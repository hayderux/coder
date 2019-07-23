import 'package:coder/style/xd.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: 20, right: 20),
        height: 50,
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            boxShadow: boxShadow,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.only(left: 10),
          child: TextField(
            cursorColor: Colors.black,
            autocorrect: true,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                fillColor: Colors.black,
                focusColor: Colors.black,
                hoverColor: Colors.black,
                icon: Icon(
                  Icons.search,
                )),
          ),
        ));
  }
}
