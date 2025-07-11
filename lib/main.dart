import 'package:flutter/material.dart';
import 'package:my_app3/pages/detail_page.dart';
import 'package:my_app3/pages/rev_pages/main_page.dart';
import 'package:my_app3/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DetailPage()
    );
  }
}
