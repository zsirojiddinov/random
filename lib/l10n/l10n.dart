import 'package:flutter/material.dart';

class L10n {
  static final all = [
    uz(),
    en(),
    ru(),
  ];

  static Locale en() {
    return const Locale('en', 'US');
  }

  static Locale uz() {
    return const Locale('uz', 'UZ');
  }

  static Locale ru() {
    return const Locale('ru', 'RU');
  }
}
