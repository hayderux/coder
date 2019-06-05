import 'package:flutter/material.dart';

class ExplorerV extends StatefulWidget {
  @override
  _ExplorerVState createState() => _ExplorerVState();
}

class _ExplorerVState extends State<ExplorerV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Explorer'),
        centerTitle: false,
      ),
    );
  }
}
