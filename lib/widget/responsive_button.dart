import 'package:flutter/material.dart';
import 'package:my_app3/widget/app_text.dart';

class ResponsiveButton extends StatefulWidget {
  final bool? isResponsive;
  final double? width;

  const ResponsiveButton({
    Key? key,
    this.width=120,
    this.isResponsive = false,
  }) : super(key: key);

  @override
  _ResponsiveButtonState createState() => _ResponsiveButtonState();
}

class _ResponsiveButtonState extends State<ResponsiveButton> {
  @override
  Widget build(BuildContext context) {
    final isResponsive = widget.isResponsive ?? false;

    return Flexible(
      child: Container(
        width:  isResponsive==true?double.maxFinite:widget.width,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(193, 104, 58, 183),
        ),
        child: Row(
          mainAxisAlignment:
              isResponsive ? MainAxisAlignment.spaceBetween : MainAxisAlignment.center,
          children: [
             isResponsive?Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppText(text: "Book Trip Now", color: Colors.white)):Container(),
            Image.asset("assets/img/nav_three.png", width: 20),
          ],
        ),
      ),
    );
  }
}
