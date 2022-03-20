import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: primary,
    // AppBarTheme
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      elevation: 0,
      centerTitle: true
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5
    ),

    elevatedButtonTheme:  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: Colors.indigo,
        shape:  const StadiumBorder(),
        elevation: 0,
      ),
    ),

  );
}