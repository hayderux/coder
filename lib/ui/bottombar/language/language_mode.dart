import 'package:coder/components/search_bar.dart';
import 'package:flutter/material.dart';

import 'languages_list.dart';

class LanguageMode extends StatefulWidget {
  @override
  _LanguageModeState createState() => _LanguageModeState();
}

class _LanguageModeState extends State<LanguageMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: SearchBar(),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(top: 30),
        shrinkWrap: true,
        itemCount: languageslist.length,
        itemBuilder: (buildContext, index) {
          return ListTile(
            onTap: () {
              Navigator.pop(context);
            },
            leading: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  image: DecorationImage(
                      image: AssetImage(languageslist[index].icon))),
            ),
            title: Text(languageslist[index].title),
          );
        },
      ),
    );
  }
}
