import '../style/xd.dart';
import 'package:flutter/material.dart';




class RoundedButton extends StatelessWidget {
  final VoidCallback ontap;
  final IconData icon;
  final String text;
  final double width;
  const RoundedButton({Key key, this.ontap, this.icon, this.text, this.width}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
       width: width,
       height: 60,
       decoration: BoxDecoration(
         color: Theme.of(context).primaryColor,
         
         borderRadius: BorderRadius.circular(30),
         boxShadow: boxShadow
       ),
       child: Padding(
         padding: EdgeInsets.only(left: 20,right: 20,),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: <Widget>[
             
             Padding(
               padding: EdgeInsets.all(5),
               child: Text(text,style: TextStyle(
                 color: Colors.white,
                 fontSize: 20,
                 fontWeight: FontWeight.w500,
                 fontFamily: 'sf'
               ),),
             ),
             Icon(icon,color: Colors.white,size: 25,),
           ],
         ),
       )
     ),
    );
  }

}