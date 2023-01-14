// ignore_for_file: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
part 'counterbloc_event.dart';
part 'counterbloc_state.dart';

/*Bloc (Buisness Logic Component) Class  which is inherited by Bloc Library and
 we are passuing generics in it*/
class CounterblocBloc extends Bloc<CounterblocEvent, CounterblocState> {
  CounterblocBloc() : super(CounterblocInitial()) {
    //Calling any specific event wwhich is "OnClick"
    on<OnClick>(
        /*
      Here event is the request which is comming from event class 
      and emit means the class or state we return according to request*/
        (event, emit) {
      try {
        if (event.operator == "-") {
          //here emit() means we are emitting or returning any State or Class
          emit(Counterblocsuccess(counter: --event.counter));
        }
        if (event.operator == "+") {
          //here emit() means we are emitting or returning any State or Class
          emit(Counterblocsuccess(counter: ++event.counter));
        }
        if (event.operator == "reset") {
          //here emit() means we are emitting or returning any State or Class
          emit(Counterblocsuccess(counter: 0));
        }
      } catch (e) {
        //here emit() means we are emitting or returning any State or Class
        emit(Counterblocerror());
      }
    });
  }
}
