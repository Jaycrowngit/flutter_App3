import 'package:flutter/material.dart';
import 'package:my_app3/widget/app_large_text.dart';
import 'package:my_app3/widget/app_text.dart';
import 'package:my_app3/widget/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> images = [
    "welcome_three.png",
    "welcome_three.png",
    "welcome_three.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("img/" + images[index]),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: Row(
                children: [
                  // Left column with text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trips"),
                      AppText(text: "Mountain", size: 30),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 250,
                        child: AppText(
                          text:
                              "Mountain hikes give you an incredible sense of freedom along with an endurance test.",
                          color: Colors.black45,
                          size: 14,
                        ),
                      ),
                      const SizedBox(height: 40),
                      const ResponsiveButton(width: 100),
                    ],
                  ),
                  const Spacer(),
                  // Right column with indicators
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(3, (indexDotS) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 2),
                        width: 8,
                        height: index == indexDotS ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: index == indexDotS
                              ? Colors.blueGrey
                              : Colors.blue.withOpacity(0.5),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
