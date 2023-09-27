import 'package:flutter/widgets.dart';

@immutable
abstract class HomeState {}

class SuccesState extends HomeState {}

class ProgresState extends HomeState {}

class ErrorState extends HomeState {
  String message;

  ErrorState(this.message);
}
