import 'package:flutter/material.dart';
import 'package:my_app3/widget/app_large_text.dart';
import 'package:my_app3/widget/app_text.dart';
import 'package:my_app3/widget/responsive_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app3/cubit/app_cubit.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List<String> images = [
    "welcome_three.png",
    "welcome_two.jpg",
    "welcome_one.jpg",
  ];

  late PageController _pageController;
  int _currentPage = 0;

  @override
  void initState() {
    _pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemBuilder: (_, pageIndex) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/img/" + images[pageIndex]),
                fit: BoxFit.fitWidth,
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
                      const AppLargeText(text: "Trips"),
                      const AppText(text: "Mountain", size: 30),
                      const SizedBox(height: 20),
                      const SizedBox(
                        width: 250,
                        child: AppText(
                          text:
                              "Mountain hikes give you an incredible sense of freedom along with an endurance test.",
                          color: Colors.black45,
                          size: 14,
                        ),
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () {
                          BlocProvider.of<AppCubits>(context).getData();
                        },
                        child: SizedBox(
                          width: 200,
                          child: ResponsiveButton(width: 120),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // Right column with indicators
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(images.length, (indexDotS) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 8),
                        width: 8,
                        height: _currentPage == indexDotS ? 24 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: _currentPage == indexDotS
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
