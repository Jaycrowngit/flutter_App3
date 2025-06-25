//import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
// import 'package:flutterui_icons/flutterui_icons.dart';
//import 'package: flutter/cupertino.dart';
class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=3;
   
  static final List<Widget>_widgetOptions   =<Widget>[
    const Text("Home"),
    const Text("Search"),
    const Text("Ticket"),
    const Text("Profile"),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });

  // _selectedIndex=index;
  // print('${_selectedIndex}');
  // print("Tapped index is "+ selectedindex.tostring());
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar:AppBar(
        title: const Text("My tickets"),
      ),
      body: Center(
        child:_widgetOptions[3],
      ),

     bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
      elevation: 10,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.blueGrey,
      unselectedItemColor: const Color(0xFF526480),
      
      
      items: const [
      

        BottomNavigationBarItem(icon: Icon(Icons.home), label:"Home"),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: "seach"),
        BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "bar"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ]
       ),
    );
  }
}
 