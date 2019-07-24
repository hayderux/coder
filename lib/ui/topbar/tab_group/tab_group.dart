import 'package:coder/ui/topbar/tabs_manger/tabs_list.dart';
import 'package:flutter/material.dart';

import 'group_container.dart';

class TabGroup extends StatefulWidget {
  final VoidCallback ontap;

  const TabGroup({Key key, @required this.ontap}) : super(key: key);
  @override
  _TabGroupState createState() => _TabGroupState();
}

class _TabGroupState extends State<TabGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: GridView.builder(
      itemCount: tabslist.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: 10, bottom: 20, right: 10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        crossAxisSpacing: 1,
        childAspectRatio: 1,
      ),
      itemBuilder: (buildContext, i) {
        return GroupContainer(
          ontap: widget.ontap,
          name: tabslist[i].name,
          icon: tabslist[i].icon,
        );
      },
    )));
  }
}
