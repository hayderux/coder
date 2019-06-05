import 'package:coder/components/rounded_button.dart';
import 'package:coder/components/rounded_window.dart';
import 'package:flutter/material.dart';

import 'package:coder/style/themebloc.dart';
import 'package:coder/style/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rounded_modal/rounded_modal.dart';

class SideBar extends StatefulWidget {
  final Widget body;
  final ThemeBloc themeBloc;
  const SideBar({Key key, this.body, this.themeBloc}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return SideState();
  }
}

class SideState extends State<SideBar> {
  InkWell bottomicon(IconData icon, VoidCallback onTap) {
    return InkWell(
      child: Padding(
        padding: EdgeInsets.only(right: 10, left: 10, bottom: 10, top: 10),
        child: Icon(
          icon,
          color: Colors.white,
          size: 24,
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
            bottomicon(FontAwesomeIcons.donate, () {
              showRoundedModalBottomSheet(
                  context: context,
                  radius: 15,
                  color: Theme.of(context).scaffoldBackgroundColor,
                  builder: (BuildContext context) {
                    return Padding(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('Donate',
                                  style: TextStyle(
                                      fontFamily: 'sf', fontSize: 22)),
                              CloseButton()
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              paymethod(
                                  'Bitcoin(BTC)', () {}, 'assets/btc.jpg'),
                              paymethod(
                                  'Ethereum(ETH)', () {}, 'assets/eth.jpg'),
                              paymethod(
                                  'Litecoin(LTC)', () {}, 'assets/ltc.jpg'),
                              paymethod('PayPal', () {}, 'assets/paypal.jpg'),
                              paymethod('WeChat', () {}, 'assets/wechat.jpg')
                            ],
                          )
                        ],
                      ),
                    );
                  });
            }),
            bottomicon(FontAwesomeIcons.sun, () {
              widget.themeBloc.selectedTheme.add(_buildLightTheme());
            }),
            bottomicon(FontAwesomeIcons.moon, () {
              widget.themeBloc.selectedTheme.add(_buildDarkTheme());
            }),
            bottomicon(FontAwesomeIcons.cog, () {
              showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (buildContext) {
                    return RoundedWindow(
                      title: 'Settings',
                      body: Container(
                        color: Colors.grey.shade200,
                      ),
                    );
                  });
            })
          ],
        ),
      ),
    );
  }

  Column paymethod(currency, VoidCallback onTap, qr) {
    return Column(
      children: <Widget>[
        Container(
          height: 200,
          width: 200,
          margin: EdgeInsets.only(top: 20, left: 50, right: 30),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(qr))),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, bottom: 10),
          child: Text(
            currency,
            style: TextStyle(fontFamily: 'sf', fontSize: 20),
          ),
        ),
        RoundedButton(
          icon: Icons.content_copy,
          width: 150,
          text: 'Copy',
          ontap: onTap,
        )
      ],
    );
  }
}

DemoTheme _buildLightTheme() {
  return DemoTheme('Pink', lightTheme);
}

DemoTheme _buildDarkTheme() {
  return DemoTheme('Pink', darkTheme);
}
