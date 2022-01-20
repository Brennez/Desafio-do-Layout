import 'package:app_layout/consts/colors/colors.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
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
      caption: TextStyle(
        fontFamily: 'marker',
        color: kDarkPrimaryColor,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      headline1: TextStyle(
        fontFamily: 'marker',
        color: kDarkPrimaryColor,
        fontWeight: FontWeight.w700,
        fontSize: 50,
      ),
      headline2: TextStyle(
        color: kDarkPrimaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 30,
      ),
      subtitle1: TextStyle(
        color: kDarkPrimaryColor,
        fontSize: 20,
      ),
      subtitle2: TextStyle(
        fontFamily: "marker",
        color: kDarkPrimaryColor,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      splashColor: Colors.white,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: kDarkBackgroundColor,
        selectedIconTheme: IconThemeData(
          color: kContentColor,
        )),
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
    textTheme: const TextTheme(
      caption: TextStyle(
        fontFamily: 'marker',
        color: kContentColor,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      headline1: TextStyle(
          fontFamily: 'marker',
          color: kPrimaryColor,
          fontWeight: FontWeight.w700,
          fontSize: 50),
      headline2: TextStyle(
        color: kContentColor,
        fontWeight: FontWeight.w500,
        fontSize: 30,
      ),
      subtitle1: TextStyle(
        color: kContentColor,
        fontSize: 20,
      ),
      subtitle2: TextStyle(
        fontFamily: "marker",
        color: kContentColor,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kBackgroundColor,
    ),
  );
}
