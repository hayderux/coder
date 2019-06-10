import 'package:coder/components/custom_dialog.dart';
import 'package:coder/core/env.dart';
import 'package:coder/tab_group/tab_group.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FileView extends StatefulWidget {
  @override
  _FileViewState createState() => _FileViewState();
}

class _FileViewState extends State<FileView> with TickerProviderStateMixin {
  TabController controller;
  int currtab = 0;
  void initState() {
    super.initState();
    initTab();
  }

  void initTab() async {
    controller = TabController(vsync: this, length: 2, initialIndex: currtab);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            elevation: 1.0,
            backgroundColor: Colors.grey.shade200,
            //backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            centerTitle: false,

            actions: <Widget>[
              IconButton(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  FontAwesomeIcons.th,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: () {
                  if (controller.index == 0) {
                    controller.animateTo((controller.index + 1) % 2);
                  } else {
                    controller.animateTo((controller.index - 1) % 2);
                  }
                },
              ), //
              IconButton(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(
                  FontAwesomeIcons.laptopCode,
                  color: Theme.of(context).iconTheme.color,
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (buildContext) {
                        return CustomDialog(
                          title: 'Env',
                          height: 500,
                          body: Env(),
                        );
                      });
                },
              ),
              IconButton(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                icon: Icon(FontAwesomeIcons.ellipsisH,
                    color: Theme.of(context).iconTheme.color),
                onPressed: () {},
              )
            ],
          )),
      //body: TabGroup(),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          Container(
              child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(10.0),
            child: new ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: double.infinity,
              ),
              child: new Scrollbar(
                child: new SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  reverse: true,
                  child: SizedBox(
                    child: new TextField(
                      maxLines: 50,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Add your text here',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
          TabGroup()
        ],
      ),
      //body*/
    );
  }
}
