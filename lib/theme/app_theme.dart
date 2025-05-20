import 'package:flutter/material.dart';

class AppTheme {
  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF0D0D0D),
    fontFamily: 'Poppins',
    primaryColor: Colors.pinkAccent,
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 28,
      ),
      bodyLarge: TextStyle(color: Colors.white70, fontSize: 16),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.pinkAccent,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
