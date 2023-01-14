// ignore_for_file: must_be_immutable

part of 'counterbloc_bloc.dart';
//In State File we have States

@immutable
// it is the abstract class of our State
abstract class CounterblocState {}

// it is initial State which is inherited from base class
class CounterblocInitial extends CounterblocState {
  int? counter;
  CounterblocInitial({this.counter = 0});
}

//it is error state if there is any exception then we throw error
class Counterblocerror extends CounterblocState {}

//it is Success State if there is not any issue the we call this state
class Counterblocsuccess extends CounterblocState {
  int counter;
  Counterblocsuccess({required this.counter});
}
