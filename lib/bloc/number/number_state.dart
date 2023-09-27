import 'package:flutter/widgets.dart';

@immutable
abstract class NumberState {}

class SuccesState extends NumberState {}

class ProgresState extends NumberState {}

class ErrorState extends NumberState {
  String message;

  ErrorState(this.message);
}
