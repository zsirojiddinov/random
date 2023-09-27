import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../ui/list_page.dart';
import '../../ui/number_page.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {

  HomeBloc() : super(SuccesState()) {
    on<NumberEvent>(number);
    on<ListEvent>(list);
  }

  FutureOr<void> number(NumberEvent event, Emitter<HomeState> emit) {
    Get.to(NumberPage());
  }

  FutureOr<void> list(ListEvent event, Emitter<HomeState> emit) {
    Get.to(ListPage());
  }
}
