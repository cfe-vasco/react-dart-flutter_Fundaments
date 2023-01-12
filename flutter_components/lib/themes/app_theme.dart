import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 28, 184, 198);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //Color primario
      // primaryColor: Colors.indigo,

      //AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 10,
      ),

      //TextButton Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(foregroundColor: primary),
      ),

      //FloatingActionButton
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
      ),

      //ElevatedButtons

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppTheme.primary,
          shape: const StadiumBorder(),
          elevation: 0,
        ),
      ),

      //InputDecoration
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10))),
      ));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      //Color primario
      primaryColor: Colors.indigo,

      //AppBar Theme
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 10,
      ),
      scaffoldBackgroundColor: Colors.black);
}
