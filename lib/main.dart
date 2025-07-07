import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app3/cubit/app_cubit.dart';
import 'package:my_app3/cubit/app_cubit_logic.dart';
import 'package:my_app3/services/data_services.dart';

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
      home: BlocProvider<AppCubits>(
        create: (context)=>AppCubits(
          data:DataServices(),
        ),
        
        child: AppCubitLogics() ,
      )
    );
  }
}
