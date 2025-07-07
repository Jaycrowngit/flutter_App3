import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app3/cubit/app_cubit.dart';
import 'package:my_app3/cubit/app_cubit_state.dart';
import 'package:my_app3/widget/app_large_text.dart';
import 'package:my_app3/widget/app_text.dart';
import 'package:my_app3/widget/responsive_button.dart';


import '../widget/app_button.dart' show AppButtons;

class DetailPage extends StatefulWidget {
  const DetailPage ({Key? key}) : super(key: key);

  @override
   _DetailPageState createState() =>  _DetailPageState();
}

class  _DetailPageState extends State <DetailPage> {
  int gottenStars=4;
  int selectedIndex=-1;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubits, CubitStates>(
      builder: (context, state){
        DetailState detail = state as DetailState;
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
                      image:NetworkImage("http://mark.bslmeiyu.com/uploads/"+detail.places.img),
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
                    IconButton(onPressed: () {
                      BlocProvider.of<AppCubits>(context).GoHome();
                    }, icon: Icon(Icons.menu, color: Colors.black)),
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
                  SizedBox(height: 9,),
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
                  SizedBox(height: 12,),
                  AppLargeText(text: "People", size:22),
                  SizedBox(height: 3,),
                  AppText(text: "Number of people in your group", color:Colors.black45),
                  SizedBox(height:10),
                  Wrap(
                    children: List.generate(5, ( index) {
                     return InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        },
                       child: Container(
                        margin: const EdgeInsets.only(right: 4),
                         child: AppButtons(
                         size: 42, 
                         color: selectedIndex==index?Colors.white:Colors.black,
                        backgroundColor:  selectedIndex==index?Colors.black:const Color.fromARGB(123, 158, 158, 158),
                        borderColor:  selectedIndex==index?Colors.black:Colors.grey,
                        text:(index+1).toString(),
                        ),
                       ),
                     );
                    })
                  ),
                  SizedBox(height: 15,),
                  AppLargeText(text: "Description", size:22),
                  SizedBox(height: 7,),
                  AppText(text: "Yosemite National Park is a globally renowned natural landmark in California's Sierra Nevada mountains, celebrated for its stunning granite cliffs, waterfalls, giant sequoia groves, and diverse ecosystems", color:Colors.black45, size: 14,),
                   ],
                  ),
          ),
            ),
            Positioned(
              bottom: 20,
              left:20,
              right: 20,
              child:Row(
                 children: [
                   AppButtons(
                   size: 55,
                   color: Colors.black45, 
                   backgroundColor: Colors.white, 
                   borderColor: Colors.black45,
                   isIcon: true,
                   icon: Icons.favorite_border_sharp,
                   ),
                   SizedBox(width:8),
                   ResponsiveButton(
                    isResponsive: true,
                    
                   )
                 ],
              ),)
             ]
        ),
        
     ),
     
     );
    }  
    );
  }
}

  