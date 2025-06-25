import 'package:flutter/material.dart';

class AppLargeText extends StatefulWidget {
  final int size;
  final String text;
  final Color color;
   const AppLargeText({
    Key? key,
    this.size=30,
   required this.text,
    this.color=Colors.black,
    }) :super(key: key);

  @override
  _AppLargeTextState createState() => _AppLargeTextState();
}
  class _AppLargeTextState extends State<AppLargeText> {
 @override
  Widget build(BuildContext context) {
    return Text (
      widget.text,
      style: TextStyle(
        color:widget.color,
        fontSize: widget.size.toDouble(),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}