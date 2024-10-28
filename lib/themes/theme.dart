import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    surface: Colors.grey[400]!,
    primary: Colors.grey[300]!,
    secondary: Colors.grey[200]!,
    tertiary: const Color.fromARGB(255, 138, 100, 253),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    surface: Colors.grey[900]!,
    primary: Colors.grey[800]!,
    secondary: Colors.grey[700]!,
    tertiary: const Color.fromARGB(255, 138, 100, 253),
  ),
);