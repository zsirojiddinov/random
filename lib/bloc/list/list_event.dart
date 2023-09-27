import 'package:flutter/widgets.dart';

@immutable
abstract class ListEvent {}

class RemoveEvent extends ListEvent {
  String model;

  RemoveEvent(this.model);
}

class AddEvent extends ListEvent {}

class GetListEvent extends ListEvent {}

class GenerateEvent extends ListEvent {}
