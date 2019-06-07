import 'package:flutter/material.dart';

class CloseButtonx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10),
        height: 40,
        width: 30,
        decoration:
            BoxDecoration(shape: BoxShape.circle, color: Colors.grey.shade200),
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
          onTap: () {
            Navigator.pop(context);
          },
        ));
  }
}
