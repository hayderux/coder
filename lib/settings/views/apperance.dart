import 'package:coder/style/appthemes.dart';
import 'package:coder/style/changetheme.dart';
import 'package:flutter/material.dart';

import '../setting_option.dart';

class ApperanceV extends StatefulWidget {
  @override
  _ApperanceVState createState() => _ApperanceVState();
}

class _ApperanceVState extends State<ApperanceV> {
  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(left: 10, right: 10),
      children: <Widget>[
        SizedBox(height: 30),
        SettingOption(
          title: 'Theme',
          trailing: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              RaisedButton(
                elevation: 6.0,
                color: Colors.black,
                child: Text(
                  'Dark',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  _changeTheme(context, MyThemeKeys.DARK);
                },
              ),
              SizedBox(
                width: 10,
              ),
              RaisedButton(
                elevation: 6.0,
                child: Text('Light'),
                onPressed: () {
                  _changeTheme(context, MyThemeKeys.LIGHT);
                },
              )
            ],
          ),
        ),
        SettingOption(
          title: 'Font Size',
          trailing: Row(),
        )
      ],
    );
  }
}
