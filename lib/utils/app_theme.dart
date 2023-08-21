import 'package:flutter/material.dart';

class appthemedata {
  static ThemeData Lighttheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: Colors.purple);
  static ThemeData Darktheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: Colors.lightGreenAccent);
}
