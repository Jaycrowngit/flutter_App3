import 'package:flutter/material.dart';

class AppButtons extends StatelessWidget {
  final Color  color;
  final Color backgroundColor;
  final Color borderColor;
  String?      text;
  IconData?    icon;
  bool?        isIcon;
  double size;
  AppButtons({Key? key,
  this.isIcon=false,
  this.text,
  this.icon,
  required this.size,
  required this.color,
  required this .backgroundColor, 
  required this.borderColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            border:Border.all(
              color:borderColor,
              width: 1.0 ),
         borderRadius: BorderRadius.circular(10),
        color:backgroundColor
        ),
        // child:Container(
        //   AppText(),
        // ) ,
   );
}
}