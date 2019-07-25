import 'package:coder/components/Fork_dialog.dart';
import 'package:coder/components/custom_dialog.dart';
import 'package:coder/components/rich_editable_text.dart';
import 'package:coder/components/rich_text_field.dart';
import 'package:coder/ui/bottombar/bottom_bar.dart';
import 'package:coder/ui/editor/editor.dart';
import 'package:coder/ui/editor/highlighter.dart';
import 'package:coder/ui/editor/parser.dart';
import 'package:coder/ui/topbar/tab_group/tab_group.dart';
import 'package:coder/ui/topbar/tabs_manger/tab_container.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'env.dart';
import 'tabs_manger/tabs_list.dart';

class FileView extends StatefulWidget {
  @override
  _FileViewState createState() => _FileViewState();
}

class _FileViewState extends State<FileView> with TickerProviderStateMixin {
  TabController controller;
  ScrollController _scrollController;
  String _exampleCode;
  int currentIdx = 0;
  int currtab = 0;
  void initState() {
    super.initState();
    initTab();
    initScroll();
  }

  @override
  void didChangeDependencies() {
    try {
      getExampleCode('buttons_raised', DefaultAssetBundle.of(context))
          .then<void>((String code) {
        if (mounted) {
          setState(() {
            _exampleCode = code ?? 'Example code not found';
          });
        }
      });
    } catch (e) {
      print("Error laoding assets $e");
    }
    super.didChangeDependencies();
  }

  void initTab() async {
    controller = TabController(vsync: this, length: 2, initialIndex: currtab);
  }

  void initScroll() async {
    _scrollController = ScrollController();
  }

  ThemeData mytheme =
      ThemeData(accentColor: Colors.grey.shade200.withOpacity(0.2));
  loadcolor(int i) {
    if (i == currentIdx) {
      return Theme.of(context).cardColor;
    } else {
      return mytheme.accentColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    final SyntaxHighlighterStyle style =
        Theme.of(context).brightness == Brightness.dark
            ? SyntaxHighlighterStyle.darkThemeStyle()
            : SyntaxHighlighterStyle.lightThemeStyle();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).bottomAppBarColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20))),
        child: Row(
          children: <Widget>[
            SizedBox(
              //
              width: 80,
              child: Container(
                decoration:
                    BoxDecoration(color: Theme.of(context).bottomAppBarColor),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  controller: ScrollController(),
                ),
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
                      title: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: tabslist.length,
                        itemBuilder: (buildContext, index) {
                          return TabContainer(
                            isSelected: currentIdx == index,
                            filename: tabslist[index].name,
                            fileicon: tabslist[index].icon,
                            color: loadcolor(index),
                            ontap: () {
                              setState(() {
                                currentIdx = index;
                              });
                            },
                          );
                        },
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
                        ),
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
                        physics: NeverScrollableScrollPhysics(),
                        controller: controller,
                        children: <Widget>[
                          SingleChildScrollView(
                            controller: _scrollController,
                            scrollDirection: Axis.vertical,
                            child: Scrollbar(
                              child: RichTextField(
                                onChangedSpan: (onc) {},
                                controller: RichTextEditingController(
                                    textSpan: TextSpan(children: [
                                  DartSyntaxHighlighter(style)
                                      .format(_exampleCode)
                                ])),
                                maxLines: null,
                                style: TextStyle(fontSize: 30),
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          )
                          /*SingleChildScrollView(
                              controller: _scrollController,
                              //child: tabslist[currentIdx].builder(context),
                              child: Scrollbar(
                                child: ListView(
                                  shrinkWrap: true,
                                  controller: _scrollController,
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: RichText(
                                            textAlign: TextAlign.start,
                                            text: TextSpan(
                                              style: const TextStyle(
                                                  fontFamily: 'monospace',
                                                  fontSize: 20.0),
                                              children: <TextSpan>[
                                                DartSyntaxHighlighter(style)
                                                    .format(_exampleCode)
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              )),*/
                          ,
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
