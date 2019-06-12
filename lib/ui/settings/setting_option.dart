import 'package:flutter/material.dart';

class SettingOption extends StatelessWidget {
  final String title;
  final Widget trailing;

  const SettingOption({Key key, this.title, this.trailing}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              title,
              style: TextStyle(fontSize: 18),
            ),
            trailing
          ],
        ),
      ],
    );
  }
}
