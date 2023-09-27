import 'dart:convert';

import '../service/preference_service.dart';

class DBRepository {
  DBRepository() {}

  List<String> getList() {
    var relationList = <String>[];
    var list = <dynamic>[];
    var relationStr = PreferenceService().getRelation();
    if (relationStr != "") {
      list = json.decode(relationStr);
      list.map((e) {
        String aa = e;
        relationList.add(aa);
      }).toList();
    }
    relationList.shuffle();
    return relationList;
  }

  List<String> addItem(String item) {
    var relationList = getList();
    relationList.add(item);
    var encode = json.encode(relationList);
    PreferenceService().setRelation(encode);
    return getList();
  }

  List<String> deleteItem(String item) {
    var relationList = getList();
    relationList.remove(item);
    var encode = json.encode(relationList);
    PreferenceService().setRelation(encode);
    return getList();
  }

  setList(List<String> list) {
    var encode = json.encode(list);
    PreferenceService().setRelation(encode);
    return;
  }
}
