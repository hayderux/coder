import 'package:coder/style/xd.dart';
import 'package:flutter/material.dart';

class SearchV extends StatefulWidget {
  @override
  _SearchVState createState() => _SearchVState();
}

class _SearchVState extends State<SearchV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Search',
          style: Theme.of(context).textTheme.title,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.refresh,
              color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 10, top: 20, right: 10),
              height: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  boxShadow: boxShadow2,
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      icon: Icon(Icons.search)),
                ),
              ))
        ],
      ),
    );
  }
}
