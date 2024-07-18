import 'package:flutter/material.dart';

class DarkTheme {
  ThemeData buildTheme() {
    return ThemeData(
      primarySwatch: Colors.blue,
      brightness: Brightness.dark,
      // Add other dark theme settings here
    );
  }
}