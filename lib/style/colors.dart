import 'package:flutter/material.dart';

class MyColor {
  static Color backColor = Colors.white;
  static Color greys =  Color(0xFFF5F7FB);
  static Color greys_pro =  Color(0xFFD2E2FF);
  static Color greys50 =  Color(0x80F5F7FB);
  static Color trans =  Color(0x66FFFFFF);
  static Color textColor = Colors.black;
  static Color iconColor = Colors.black;
  static Color hintColor = Colors.grey;
  static Color activeColor = Colors.grey.shade50;
  static Color lineColor = Colors.grey.shade300;
  static Color neActiveColor = Colors.grey.shade200;
  static Color mainColor = const Color(0xFFFFCC00);
  static Color mainColorTransparent = const Color(0x99FFCC00);
  static const Color lightBlue = Color(0xFFF5F7FB);

  static MaterialColor newBlack = const MaterialColor(0xFF121212, <int, Color>{
    50: Color(0xFF444444),
    100: Color(0xFF3F3F3F),
    200: Color(0xFF343434),
    300: Color(0xFF2A2A2A),
    400: Color(0xFF1C1C1C),
    500: Color(0xFF121212),
    600: Color(0xFF111111),
    700: Color(0xFF101010),
    800: Color(0xFF0C0C0C),
    900: Color(0xFF000000),
  });
}
