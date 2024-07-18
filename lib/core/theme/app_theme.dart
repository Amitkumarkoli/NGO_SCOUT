import 'package:flutter/material.dart';
import 'dark_theme.dart';
import 'light_theme.dart';

class AppTheme {
  static ThemeData lightTheme = LightTheme().buildTheme();
  static ThemeData darkTheme = DarkTheme().buildTheme();
}
