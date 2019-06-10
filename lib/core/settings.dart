import 'package:coder/style/appthemes.dart';
import 'package:coder/style/changetheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SettingView extends StatefulWidget {
  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  void _changeTheme(BuildContext buildContext, MyThemeKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: ListView(
          padding: EdgeInsets.only(left: 10, right: 10),
          children: <Widget>[
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Theme', style: TextStyle(fontSize: 18)),
                Row(
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
                )
              ],
            ),
            Divider()
          ],
        ));
  }
}
