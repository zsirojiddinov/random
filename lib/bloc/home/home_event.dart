import 'package:flutter/widgets.dart';

@immutable
abstract class HomeEvent {}

class NumberEvent extends HomeEvent {}

class ListEvent extends HomeEvent {}
