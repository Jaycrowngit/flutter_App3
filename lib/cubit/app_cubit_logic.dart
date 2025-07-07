import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app3/cubit/app_cubit.dart';
import 'package:my_app3/cubit/app_cubit_state.dart';
import 'package:my_app3/pages/detail_page.dart';
import 'package:my_app3/pages/home_page.dart';
import 'package:my_app3/pages/welcome_page.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({super.key});

  @override
  _AppCubitsLogicsState createState() => _AppCubitsLogicsState();
}

class _AppCubitsLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:BlocBuilder<AppCubits, CubitStates>(
        builder: (context, state){
          if (state is WelcomeState){
            return WelcomePage();
          }

          if (state is DetailState){
            return DetailPage();
          }
          if (state is LoadingState){
            return Center(child: CircularProgressIndicator(),);
          }
           if (state is LoadedState){
            return HomePage();
          }
         
          else {
            return Container();
          }
        })
    );
  }
}