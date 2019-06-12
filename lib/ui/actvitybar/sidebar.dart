import 'package:coder/components/custom_dialog.dart';
import 'package:coder/ui/bottombar/c_dialog.dart';
import 'package:coder/ui/settings/settings.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideBar extends StatefulWidget {
  final Widget body;
  const SideBar({Key key, this.body}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return SideState();
  }
}

class SideState extends State<SideBar> {
  InkWell bottomicon(IconData icon, VoidCallback onTap) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 10),
        child: Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
      ),
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff333333),
      body: widget.body,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 20),
        height: 200,
        //color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            bottomicon(FontAwesomeIcons.cog, () {
              showDialogF(
                  context: context,
                  barrierDismissible: true,
                  builder: (buildContext) {
                    return CustomDialog(
                      title: 'Settings',
                      body: SettingView(),
                    );
                  });
            })
          ],
        ),
      ),
    );
  }
}
