import 'package:flutter/material.dart';

class AppConfigUI {
  AppConfigUI._();

  static const MaterialColor _primarySwatch = MaterialColor(0XFF0066B0, {
    50: Color(0XFF005C9E),
    100: Color(0XFF00528D),
    200: Color(0XFF00477B),
    300: Color(0XFF003D6A),
    400: Color(0XFF003358),
    500: Color(0XFF002946),
    600: Color(0XFF001F35),
    700: Color(0XFF001423),
    800: Color(0XFF000A12),
    900: Color(0XFF000000),
  });

  static final ThemeData theme = ThemeData(
      primarySwatch: _primarySwatch,
      primaryColor: const Color(0XFF0066B0),
      primaryColorLight: const Color(0XFF219FFF),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelStyle: TextStyle(color: Colors.black),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ));
}
