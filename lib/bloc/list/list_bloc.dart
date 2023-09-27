import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random/repositry/db_repository.dart';

import 'list_event.dart';
import 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  var list = <String>[];
  var inputController = TextEditingController();
  String selectedName = "";

  ListBloc() : super(SuccesState()) {
    on<RemoveEvent>(remove);
    on<AddEvent>(addItem);
    on<GetListEvent>(allList);
    on<GenerateEvent>(genarate);
  }

  FutureOr<void> remove(RemoveEvent event, Emitter<ListState> emit) {
    var repository = DBRepository();
    list = repository.deleteItem(event.model);
    emit(SuccesState());
  }

  FutureOr<void> addItem(AddEvent event, Emitter<ListState> emit) {
    var string = inputController.text.toString();
    if (string != "") {
      var repository = DBRepository();
      list = repository.addItem(string);
      inputController.text = "";
      emit(SuccesState());
    }
  }

  FutureOr<void> allList(GetListEvent event, Emitter<ListState> emit) {
    var repository = DBRepository();
    list = repository.getList();
    emit(SuccesState());
  }

  genarate(GenerateEvent event, Emitter<ListState> emit) {
    var repository = DBRepository();
    list = repository.getList();
    if (list.length == 0) {
      selectedName = "";
      emit(SuccesState());
      return;
    }
    var random = Random();
    var nextInt = random.nextInt(list.length);
    selectedName = list[nextInt];
    print(list[nextInt]);
    print(nextInt);
    repository.setList(list);
    emit(SuccesState());
  }
}
