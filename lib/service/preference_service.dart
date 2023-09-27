import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../l10n/l10n.dart';
import '../utils/constanta.dart';

class PreferenceService {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  _saveThemeToBox(bool isDarkMode) => _box.write(_key, isDarkMode);

  bool _loadThemeFromBox() => _box.read(_key) ?? false;

  bool get isDarkMode => _loadThemeFromBox();

  ThemeMode get theme => _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  void swithTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }

  getLang() {
    var lang = _box.read(IConstanta.LANGUAGE) ?? "";
    return lang == ""
        ? L10n.uz()
        : lang == "uz"
            ? L10n.uz()
            : lang == "en"
                ? L10n.en()
                : L10n.ru();
  }

  getRelation() {
    return _box.read(IConstanta.GET_LIST) ?? "";
  }

  void setRelation(String encode) {
    _box.write(IConstanta.GET_LIST, encode);
  }
}
