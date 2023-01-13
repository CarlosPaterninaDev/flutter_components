import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.deepOrange;

  static const double elevation = 0;

  static final ThemeData light = ThemeData.light().copyWith(
      primaryColor: Colors.amber,
      //
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: elevation),
      //
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primaryColor)),
      //
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primaryColor),
      //
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppTheme.primaryColor,
              shape: const StadiumBorder(),
              padding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 40))),
      //
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primaryColor),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: primaryColor
          ),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),

      )
        
      );

     
  //
  static final ThemeData dark = ThemeData.dark().copyWith(
      primaryColor: Colors.amber,
      appBarTheme:
          const AppBarTheme(color: primaryColor, elevation: elevation));
}
