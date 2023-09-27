import 'package:flutter/material.dart';
import 'package:random/style/colors.dart';

class MyTheme {
/*  static final light = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: Colors.blue,
    brightness: Brightness.light,
  );*/
  static final light = ThemeData.light().copyWith(
    primaryColor: MyColor.mainColor,
    backgroundColor: MyColor.backColor,
    brightness: Brightness.light,
  /*  appBarTheme: AppBarTheme(
      backgroundColor: MyColor.mainColor,
    ),*/
  );

  static final night = ThemeData.dark().copyWith(
    backgroundColor: MyColor.newBlack[300],
    primaryColor: MyColor.newBlack,
    brightness: Brightness.dark,
  );

/* static final night = ThemeData(
    backgroundColor: MyColor.darkGreyColor,
    primaryColor: MyColor.darkGreyColor,
    primarySwatch: MyColor.newBlack,
    brightness: Brightness.dark,
  );*/
}
