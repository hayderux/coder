import 'package:flutter/material.dart';


class SearchV extends StatefulWidget {
  @override
  _SearchVState createState() => _SearchVState();
}

class _SearchVState extends State<SearchV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        automaticallyImplyLeading: false,
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.clear_all),
            onPressed: (){},
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 10,top: 20,right: 10),
            color: Colors.grey.shade700,
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search',
                icon: Icon(Icons.search)
              ),
            ),
            )
          )
        ],
      ),
    );
  }
}