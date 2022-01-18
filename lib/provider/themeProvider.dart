import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  bool get isDark => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme {
  static final darkMode = ThemeData(
      scaffoldBackgroundColor: const Color(0XFF101010),
      colorScheme: const ColorScheme.dark(),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      cardColor: const Color(0xFF210457),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0XFF101010),
        elevation: 0.0,
      ));

  static final lightMode = ThemeData(
      scaffoldBackgroundColor: const Color(0xFFE6E6E6),
      iconTheme: const IconThemeData(
        color: Color(0xFF210457),
      ),
      cardColor: const Color(0xFFD7D3E2),
      appBarTheme: const AppBarTheme(
        elevation: 0.0,
        color: Color(0xFFE6E6E6),
      ));
}
