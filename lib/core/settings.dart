import 'package:coder/actvitybar/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:mobile_sidebar/common/index.dart';
import 'package:mobile_sidebar/common/sidebar.dart';

class SettingView extends StatefulWidget {
  @override
  _SettingViewState createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MobileSidebar(
        mobileBottomNavigation: false,
        nestedNavigation: false,
        persistIndex: true,
        showList: true,
        items: [
          MenuItem(
              title: 'Apperance',
              subtitle: '',
              child: Container(
                child: ListView(
                  children: <Widget>[
                    SizedBox(height: 10),
                    ListTile(
                      title: Text('Theme'),
                    )
                  ],
                ),
              ),
              color: Colors.red,
              icon: Icons.color_lens),
          MenuItem(
              title: 'Text Editor',
              subtitle: '',
              child: Container(),
              color: Colors.red,
              icon: Icons.edit)
        ],
      ),
    );
  }
}
