import 'package:flutter/material.dart';

class QadamTheme {
  static TextTheme lightTextTheme = TextTheme(

    bodyText1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline1: TextStyle(
      fontSize: 46.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline3: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline4: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline5: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline6: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(

    bodyText1: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline1: TextStyle(
      fontSize: 46.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline3: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline4: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline5: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline6: TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      fontFamily: 'Raleway',
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith((states) {
          return Colors.black;
        }),
      ),
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      fontFamily: 'Raleway',
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
      ),
      textTheme: darkTextTheme,
    );
  }
}
