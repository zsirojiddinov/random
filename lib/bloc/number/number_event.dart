import 'package:flutter/widgets.dart';

@immutable
abstract class NumberEvent {}

class GenerateEvent extends NumberEvent {}

class DefaultEvent extends NumberEvent {}
