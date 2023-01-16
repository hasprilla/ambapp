import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 0, 200, 83);
  static const Color secundary = Colors.black12;
  static const TextStyle h1 = TextStyle(
    fontSize: 38,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle h2 = TextStyle(
    fontSize: 35,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle h3 = TextStyle(
    fontSize: 18,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle h4 = TextStyle(
    fontSize: 25,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle hintStyle = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: Color.fromARGB(255, 117, 117, 117),
  );
  static const TextStyle h5 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primary,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        // side: BorderSide(color: Colors.red, width: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            wordSpacing: 2,
            letterSpacing: 2),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: secundary),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: secundary),
        borderRadius: BorderRadius.circular(10),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: primary),
        borderRadius: BorderRadius.circular(10),
      ),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: secundary),
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
