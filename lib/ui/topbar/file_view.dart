import 'package:coder/components/Fork_dialog.dart';
import 'package:coder/components/custom_dialog.dart';
import 'package:coder/ui/bottombar/bottom_bar.dart';
import 'package:coder/ui/editor/editor.dart';
import 'package:coder/ui/topbar/tab_group/tab_group.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'env.dart';

class FileView extends StatefulWidget {
  @override
  _FileViewState createState() => _FileViewState();
}

class _FileViewState extends State<FileView> with TickerProviderStateMixin {
  TabController controller;
  TabController controller2;
  int currtab = 0;
  void initState() {
    super.initState();
    initTab();
  }

  void initTab() async {
    controller2 = TabController(vsync: this, length: 2, initialIndex: 0);
    controller = TabController(vsync: this, length: 2, initialIndex: currtab);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Color(0xff444444),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 80,
              child: Container(
                decoration: BoxDecoration(color: Color(0xff444444)),
              ),
            ),
            Expanded(
              child: Scrollbar(
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: PreferredSize(
                    preferredSize: Size.fromHeight(70),
                    child: AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      centerTitle: false,
                      title: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            height: 40,
                            width: 200,
                            margin: EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(25)),
                            child: Padding(
                              padding: EdgeInsets.only(left: 5, right: 5),
                              child: Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(35),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/icons/js.png'))),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text('main.dart')
                                ],
                              ),
                            ),
                          ),
                          InkWell(
                              onTap: () {
                                if (controller2.index == 0) {
                                  controller2
                                      .animateTo((controller2.index + 1) % 2);
                                } else {
                                  controller2
                                      .animateTo((controller2.index - 1) % 2);
                                }
                              },
                              child: Container(
                                height: 40,
                                width: 200,
                                margin: EdgeInsets.only(top: 10, left: 20),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(35),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/icons/py.png'))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('main.dart')
                                    ],
                                  ),
                                ),
                              )),
                          InkWell(
                              onTap: () {
                                if (controller2.index == 0) {
                                  controller2
                                      .animateTo((controller2.index + 1) % 2);
                                } else {
                                  controller2
                                      .animateTo((controller2.index - 1) % 2);
                                }
                              },
                              child: Container(
                                height: 40,
                                width: 200,
                                margin: EdgeInsets.only(top: 10, left: 20),
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, right: 5),
                                  child: Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Container(
                                        height: 35,
                                        width: 35,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(35),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    'assets/icons/java.png'))),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text('main.dart')
                                    ],
                                  ),
                                ),
                              ))
                        ],
                      ),
                      actions: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.tab,
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
                          icon: Icon(
                            Icons.laptop_mac,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          onPressed: () {
                            showDialogF(
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
                          icon: Icon(Icons.more_horiz,
                              color: Theme.of(context).iconTheme.color),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  body: Container(
                    child: EditorView(
                      body: TabBarView(
                        controller: controller,
                        children: <Widget>[
                          TabBarView(
                            controller: controller2,
                            children: <Widget>[
                              Container(),
                              Container(
                                color: Colors.green,
                              )
                            ],
                          ),
                          TabGroup(
                            ontap: () {
                              controller.animateTo(0);
                            },
                          )
                        ],
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20))),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}
