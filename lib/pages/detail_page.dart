import 'package:flutter/material.dart';
import 'package:my_app3/widget/app_large_text.dart';
import 'package:my_app3/widget/app_text.dart';

import '../widget/app_button.dart' show AppButtons;

class DetailPage extends StatefulWidget {
  const DetailPage ({Key? key}) : super(key: key);

  @override
   _DetailPageState createState() =>  _DetailPageState();
}

class  _DetailPageState extends State <DetailPage> {
  int gottenStars=4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child:Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("img/mountain_slideone.jpeg"),
                      fit: BoxFit.fill,
                      )
                      ),
                )),
              Positioned(
                top: 30,
                left: 20,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu, color: Colors.black)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Colors.black)),
                  ],
                  ),
                  ),

              Positioned(
                top:310,
                child: Container(
                  padding: const EdgeInsets.only(left:20, right:20 , top:30,),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration:  BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.only(
                    topRight:Radius.circular(35),
                    topLeft:Radius.circular(35)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                      AppLargeText(text: "Yosemite", color:const Color.fromARGB(169, 0, 0, 0)),
                      AppLargeText(text: "\$ 250", color:const Color.fromARGB(137, 0, 0, 0)),
                    ],
                  ),
                  SizedBox(height: 6,),
                  Row(
                    children: [
                      Icon(Icons.location_on, color:Colors.black54,size:18),
                      SizedBox(width: 5),
                      AppText(text: "USA, California", color:Colors.black38, size:13),
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Wrap(
                    children: List.generate(5, (index){
                      return Icon(Icons.star, color: index<gottenStars?Colors.orangeAccent:const Color.fromARGB(38, 0, 0, 0));
                    }),
                  ),
                  SizedBox(width: 10,),
                  AppText(text: "(4.0)", color: Colors.black38),
                    ],
                  ),
                  SizedBox(height: 24,),
                  AppLargeText(text: "People", size:20),
                  SizedBox(height: 5,),
                  AppText(text: "Number of people in your group", color:Colors.black45),
                  Wrap(
                     
                    children: List.generate(5, ( index) {
                     return AppButtons(
                     size: 45, 
                     color: Colors.black,
                    backgroundColor: const Color.fromARGB(213, 239, 9, 9),
                    borderColor:  const Color.fromARGB(107, 158, 158, 158)
                    );
                    })
                  ),
                   ],
                  ),
                ),
                )
          ],
        ),
      ),
    );
  }
}