// ignore_for_file: file_names
import 'package:flutter/material.dart';

class CustomThemes {
//  light theme
  final lightThemes = ThemeData(
    scaffoldBackgroundColor: lightCreamColor,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      toolbarHeight: 80,
      color: lightAppbarBackgroundColor,
      shadowColor: lightAppbarBackgroundColor.withOpacity(0.5),
    ),
    drawerTheme: DrawerThemeData(
        width: 230, backgroundColor: lightDrawerColor.withOpacity(0.9)),
    iconTheme: IconThemeData(color: lightIconThemeColor),
    buttonTheme: ButtonThemeData(buttonColor: lightButtonBackgroundColor),
  );
//   dark theme
  final darkTheme = ThemeData(
      scaffoldBackgroundColor: darkCreamColor,
      appBarTheme: AppBarTheme(
          centerTitle: true,
          toolbarHeight: 80,
          color: darkAppbarBackgroundColor,
          shadowColor: darkAppbarBackgroundColor.withOpacity(0.5)),
      drawerTheme: DrawerThemeData(
          width: 230, backgroundColor: darkDrawerColor.withOpacity(0.9)),
      iconTheme: IconThemeData(color: darkIconThemeColor),
      buttonTheme: ButtonThemeData(buttonColor: darkButtonBackgroundColor));

//  theme color for page.
  static Color lightCreamColor = const Color.fromRGBO(246, 253, 195, 1);
  static Color darkCreamColor = const Color.fromRGBO(190, 49, 69, 1);
// theme color for buttons.
  static Color lightButtonBackgroundColor =
      const Color.fromRGBO(254, 207, 150, 1);
  static Color darkButtonBackgroundColor = const Color.fromRGBO(135, 35, 65, 1);

// theme for navigation bar and appbar
  static Color lightAppbarBackgroundColor =
      const Color.fromRGBO(253, 128, 128, 1);
  static Color darkAppbarBackgroundColor = const Color.fromRGBO(34, 9, 44, 1);

// theme color for icons.
  static Color lightIconThemeColor = Colors.black.withOpacity(0.9);
  static Color darkIconThemeColor = Colors.white.withOpacity(0.9);

  //  theme color for page.
  static Color lightDrawerColor = const Color.fromRGBO(205, 250, 213, 1);
  static Color darkDrawerColor = const Color.fromRGBO(240, 89, 65, 1);
}
