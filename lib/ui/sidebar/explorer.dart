import 'package:flutter/material.dart';
import 'package:coder/style/xd.dart';

class ExplorerV extends StatefulWidget {
  @override
  _ExplorerVState createState() => _ExplorerVState();
}

class _ExplorerVState extends State<ExplorerV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Explorer',
          style: Theme.of(context).textTheme.title,
        ),
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
            height: 50.0,
            margin: EdgeInsets.only(left: 10, top: 20, right: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).primaryColor,
                boxShadow: boxShadow2),
            child: Center(
              child: Text(
                'Open Folder',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          )
        ],
      ),
    );
  }
}
