import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const _lightOnPrimaryColor = Colors.white;
const _lightPrimaryColor = Color(0xFF7f8ec4);
const _lightSecondaryColor = Color(0xFF506193);
const _iconColor = Colors.white;

final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimaryColor,
    primaryColor: _lightPrimaryColor,
    accentColor: _lightSecondaryColor,
    accentColorBrightness: Brightness.dark,
    brightness: Brightness.dark,
    fontFamily: "CutiveMono",
    appBarTheme: const AppBarTheme(
        color: _lightPrimaryColor,
        elevation: 1
    ),
    iconTheme: const IconThemeData(
        color: _iconColor,
    ),
    buttonTheme: ButtonThemeData(
        buttonColor: _lightSecondaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white
    ),
    colorScheme: const ColorScheme.dark(
        primary: _lightPrimaryColor,
        secondary: _lightSecondaryColor,
        onPrimary: _lightOnPrimaryColor,
    ),
    textTheme: const TextTheme(
        headline6: TextStyle(fontSize: 26.0),
        subtitle1: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        bodyText2: TextStyle(fontSize: 16.0),
        button: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
    ),
    cardTheme: const CardTheme(
        elevation: 1,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        color: _lightPrimaryColor,
    ),
);