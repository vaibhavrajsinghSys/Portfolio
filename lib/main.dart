// ignore_for_file: invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:portfolio/Statemanagement_Provider/initialState.dart';
import 'package:portfolio/Utils/Themes.dart';
import 'package:portfolio/Utils/routes.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';

void main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => InitialState()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Portfolio',
        theme: CustomThemes().lightThemes,
        darkTheme: CustomThemes().darkTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => CustomRoutes().homePage,
          'projects': (context) => CustomRoutes().projectPage,
          'about': (context) => CustomRoutes().aboutPage,
          'contact': (context) => CustomRoutes().contactPage,
        },
      ),
    );
  }
}
