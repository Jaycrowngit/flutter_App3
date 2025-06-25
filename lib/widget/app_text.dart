import 'package:flutter/material.dart';

class AppText extends StatefulWidget {
  final int size;
  final String text;
  final Color color;
   const AppText({
    Key? key,
    this.size=16,
   required this.text,
    this.color=Colors.black54,
    }) :super(key: key);

  @override
  _AppTextState createState() => _AppTextState();
}
  class _AppTextState extends State<AppText> {
 @override
  Widget build(BuildContext context) {
    return Text (
      widget.text,
      style: TextStyle(
        color:widget.color,
        fontSize: widget.size.toDouble(),
        fontWeight: FontWeight.normal,
      ),
    );
  }
}