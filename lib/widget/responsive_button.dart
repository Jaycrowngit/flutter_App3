import 'package:flutter/material.dart';

class ResponsiveButton extends StatefulWidget {
  final bool? isResponsive;
  final double? width;

  const ResponsiveButton({
    Key? key,
    this.width,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  _ResponsiveButtonState createState() => _ResponsiveButtonState();
}

class _ResponsiveButtonState extends State<ResponsiveButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.deepPurple,
      ),
      child: SingleChildScrollView( // ✅ wrapped as child
        scrollDirection: Axis.horizontal, //  use horizontal for Row
        child: Row(
          children: [
            Image.asset("img/nav_three.png"),
          ],
        ),
      ),
    );
  }
}