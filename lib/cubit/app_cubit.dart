import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app3/cubit/app_cubit_state.dart';
import 'package:my_app3/model/data_model.dart';
import 'package:my_app3/services/data_services.dart';
class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()){
    emit(WelcomeState());
  }

  final DataServices data;
  late final places;
  void getData()async{
    try {
      emit(LoadingState());
      places = await data.getInfo ();
      emit(LoadedState(places));
    } catch (e) { 

    }
  }

detailPage(DataModel data){
  emit(DetailState(data));
}
GoHome(){
  emits(LoadedState(places));
}
}