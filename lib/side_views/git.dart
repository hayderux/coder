import 'package:coder/style/xd.dart';
import 'package:flutter/material.dart';

class GitV extends StatefulWidget {
  @override
  _GitVState createState() => _GitVState();
}

class _GitVState extends State<GitV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Git',
          style: Theme.of(context).textTheme.title,
        ),
        actions: <Widget>[],
      ),
      body: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 10, top: 20, right: 10),
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: boxShadow,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Message',
                    //icon: Icon(Icons.search)
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
