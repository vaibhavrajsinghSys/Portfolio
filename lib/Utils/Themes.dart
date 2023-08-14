// ignore_for_file: file_names
import 'package:flutter/material.dart';

class CustomThemes {
  final lightThemes = ThemeData(
      appBarTheme: const AppBarTheme(centerTitle: false, titleSpacing: 30));
  final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
        centerTitle: false,
        toolbarHeight: 80,
        color: Colors.transparent,
        shadowColor: Colors.transparent),
  );
}
