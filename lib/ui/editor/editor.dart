import 'package:flutter/material.dart';

class EditorView extends StatefulWidget {
  final Widget body;

  const EditorView({Key key, this.body}) : super(key: key);
  @override
  _EditorViewState createState() => _EditorViewState();
}

class _EditorViewState extends State<EditorView> with TickerProviderStateMixin {
  TabController controller;
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  var _tapPosition;
  void _showCustomMenu() {
    final RenderBox overlay = Overlay.of(context).context.findRenderObject();
    showMenu(
        elevation: 6.0,
        position: RelativeRect.fromRect(
            _tapPosition & Size(40, 40), // smaller rect, the touch area
            Offset.zero & overlay.size),
        context: context,
        items: [
          PopupMenuItem(
              child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.play_arrow),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Run Code'),
                  ],
                ),
                Row(
                  children: <Widget>[Text('F5')],
                )
              ],
            ),
          )),
          PopupMenuItem(
              child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.content_cut),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Cut'),
                  ],
                ),
                Row(
                  children: <Widget>[Text('Ctrl+X')],
                )
              ],
            ),
          )),
          PopupMenuItem(
              child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.content_copy),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Copy'),
                  ],
                ),
                Row(
                  children: <Widget>[Text('Ctrl+C')],
                )
              ],
            ),
          )),
          //command palette
          PopupMenuItem(
              child: InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(Icons.code),
                    SizedBox(
                      width: 10,
                    ),
                    Text('command palette'),
                  ],
                ),
                Row(
                  children: <Widget>[Text('Ctrl+P')],
                )
              ],
            ),
          )),
        ]);
  }

  void _storePosition(TapDownDetails details) {
    _tapPosition = details.globalPosition;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: InkWell(
              onLongPress: _showCustomMenu,
              onTapDown: _storePosition,
              child: widget.body),
        ));
  }
}
