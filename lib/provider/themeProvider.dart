import 'package:app_layout/consts/colors/colors.dart';
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
  //Light mode theme
  static final darkMode = ThemeData(
    scaffoldBackgroundColor: kDarkBackgroundColor,
    colorScheme: const ColorScheme.dark(),
    iconTheme: const IconThemeData(
      color: Colors.white,
    ),
    cardColor: kDarkCardColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: kAppBarDarkColor,
      elevation: 0,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(color: Colors.white),
    ),
  );

  // Dark Mode theme
  static final lightMode = ThemeData(
    scaffoldBackgroundColor: kBackgroundColor,
    iconTheme: const IconThemeData(
      color: kPrimaryColor,
    ),
    cardColor: kCardColor,
    appBarTheme: const AppBarTheme(
      elevation: 0.0,
      color: kBackgroundColor,
    ),
  );
}
