import 'package:flutter/material.dart';

class TabContainer extends StatelessWidget {
  final String filename;
  final String fileicon;
  final Color color;
  final VoidCallback ontap;
  const TabContainer(
      {Key key,
      this.filename,
      this.fileicon,
      this.ontap,
      this.color,
      this.isSelected})
      : super(key: key);
  final bool isSelected;
  static const animationDuration = Duration(milliseconds: 100);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: AnimatedContainer(
        height: 40,
        width: 200,
        margin: EdgeInsets.only(top: 10, left: 20),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(25)),
        duration: animationDuration,
        child: Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(image: AssetImage(fileicon))),
              ),
              SizedBox(
                width: 10,
              ),
              Text(filename),
              AnimatedOpacity(
                  opacity: isSelected ? 1 : 0,
                  duration: animationDuration,
                  child: CloseButton())
            ],
          ),
        ),
      ),
    );
  }
}
