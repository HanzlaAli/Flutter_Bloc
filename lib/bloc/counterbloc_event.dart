// ignore_for_file: must_be_immutable

part of 'counterbloc_bloc.dart';

//In Event File we have Events we have one or multiple Events
@immutable
// it is the abstract class of our event
abstract class CounterblocEvent {}

/*
it is the main class of our event which is inherited from CounterblocEvent
and we are passing arguments in it
 */
class OnClick extends CounterblocEvent {
  //1st argument
  int counter;
  //2nd argument
  String operator;
  //Constructor
  OnClick({required this.counter, required this.operator});
}
