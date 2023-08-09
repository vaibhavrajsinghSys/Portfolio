// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomThemes {
  final lightThemes = ThemeData(
      appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          toolbarHeight: 70,
          centerTitle: false,
          titleTextStyle: TextStyle(
            color: Colors.amber,
            fontSize: 50,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.orange,
                offset: Offset(2.0, 2.0),
              ),
            ],
          )));
  final darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
          toolbarHeight: 70,
          centerTitle: false,
          elevation: 15,
          titleTextStyle: TextStyle(
            color: Colors.blueGrey,
            fontSize: 50,
            shadows: [
              Shadow(
                blurRadius: 10.0,
                color: Colors.blueGrey,
                offset: Offset(2.0, 2.0),
              ),
            ],
          )));
}
