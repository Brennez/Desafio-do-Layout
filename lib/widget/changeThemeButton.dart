import 'package:app_layout/consts/colors/colors.dart';
import 'package:app_layout/provider/themeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: use_key_in_widget_constructors
class ChangeThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
        activeColor: kDarkPrimaryColor,
        inactiveThumbColor: kPrimaryColor,
        value: themeProvider.isDark,
        onChanged: (value) {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggleTheme(value);
        });
  }
}
