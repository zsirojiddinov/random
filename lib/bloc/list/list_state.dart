import 'package:flutter/widgets.dart';

@immutable
abstract class ListState {}

class SuccesState extends ListState {}

class ProgresState extends ListState {}

class ErrorState extends ListState {
  String message;

  ErrorState(this.message);
}
