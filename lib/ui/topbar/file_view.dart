import 'package:coder/components/Fork_dialog.dart';
import 'package:coder/components/custom_dialog.dart';
import 'package:coder/ui/bottombar/bottom_bar.dart';
import 'package:coder/ui/editor/editor.dart';
import 'package:coder/ui/topbar/tab_group/tab_group.dart';
import 'package:flutter/material.dart';
import 'env.dart';

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
                          Container(),
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
