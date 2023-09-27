import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'number_event.dart';
import 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {
  var minController = TextEditingController();
  var maxController = TextEditingController();
  String random = "0";

  NumberBloc() : super(SuccesState()) {
    on<GenerateEvent>(generate);
    on<DefaultEvent>(defaultMethod);
  }

  generate(GenerateEvent event, Emitter<NumberState> emit) {
    var str1 = minController.text.toString();
    var str2 = maxController.text.toString();
    int min = int.parse(str1);
    int max = int.parse(str2);

    var random = Random();
    int i = random.nextInt(max - min) + min;
    print(i);
    this.random = "$i";
    emit(SuccesState());
  }

  FutureOr<void> defaultMethod(event, Emitter<NumberState> emit) {
    minController.text = "0";
    maxController.text = "100";
    emit(SuccesState());
  }
}
