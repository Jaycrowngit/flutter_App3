import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app3/pages/rev_pages/bar_item_page.dart';
import 'package:my_app3/pages/home_page.dart';
import 'package:my_app3/pages/rev_pages/my_page.dart';
import 'package:my_app3/pages/rev_pages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override 
  _MainPageState createState() =>  _MainPageState();
}

class _MainPageState extends State <MainPage> {
  List pages = [
    HomePage(),
    BarItemPage(),
    SearchPage(),
    MyPage(),
  ];
  int currentIndex=0;
  void onTop(int index){
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        type:BottomNavigationBarType.fixed,
        backgroundColor:  Colors.white,
        onTap: onTop,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items:[
          BottomNavigationBarItem(label:"Home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(label:"Bar", icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label:"Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label:"My", icon: Icon(Icons.person)),
        ]
        ),
    );
  }
}
    
  

