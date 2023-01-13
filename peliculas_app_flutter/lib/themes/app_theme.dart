import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.red.shade900;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      appBarTheme: AppBarTheme(
    color: primary,
    elevation: 10,
  ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      appBarTheme: AppBarTheme(
    color: primary,
  ));
}
