import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'number_event.dart';
import 'number_state.dart';

class NumberBloc extends Bloc<NumberEvent, NumberState> {

  NumberBloc() : super(SuccesState()) {
    on<GenerateEvent>(generate);
  }

  FutureOr<void> generate(GenerateEvent event, Emitter<NumberState> emit) {}
}
