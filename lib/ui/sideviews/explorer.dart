import 'package:flutter/material.dart';

class ExplorerV extends StatefulWidget {
  @override
  _ExplorerVState createState() => _ExplorerVState();
}

class _ExplorerVState extends State<ExplorerV> {
  iconbutton() {
    return Container(
      margin: EdgeInsets.only(right: 20,top: 5),
      height: 30,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.grey.shade200.withOpacity(0.6), shape: BoxShape.circle),
      child: Icon(
        Icons.folder,
        size: 20,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Projects',
          style: Theme.of(context).textTheme.title,
        ),
        actions: <Widget>[iconbutton()],
        /*bottom: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: ButtonBar(
            alignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[iconbutton(), iconbutton(), iconbutton()],
          ),
        ),*/
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 600,
            margin: EdgeInsets.only(left: 20, right: 20,top: 20),
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.6),
                borderRadius: BorderRadius.circular(15)),
          )
        ],
      ),
    );
  }
}
