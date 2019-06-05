import 'package:flutter/material.dart';


class GitV extends StatefulWidget {
  @override
  _GitVState createState() => _GitVState();
}

class _GitVState extends State<GitV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Source control'),
        centerTitle: false,
      ),
    );
  }
}