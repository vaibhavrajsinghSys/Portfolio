// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/Utils/screenSize.dart';
import 'package:portfolio/View/Card/HomePageCard.dart';
import 'package:portfolio/View/Drawer/AppDrawer.dart';
import 'package:provider/provider.dart';

import 'Appbar/trailingNavigationButtons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize();
    Size size = MediaQuery.of(context).size;
    ScreenTypes type = screenSize.getScreenSize(size.width);
    switch (type) {
      case ScreenTypes.desktop:
        return desktopView(size);
      case ScreenTypes.tablet:
        return tableView(size);
      case ScreenTypes.mobile:
        return mobileView(size);
      case ScreenTypes.noscreen:
        return emptyScreenView();
    }
  }

  Widget desktopView(Size screenSizeValue) {
    return Consumer(
      builder: (context, stateManager, child) => Scaffold(
          appBar: trailingNavigationButtons(screenSizeValue, context, true),
          body: SingleChildScrollView(
            child: Column(children: []),
          )),
    );
  }

  Widget tableView(Size screenSizeValue) {
    return Consumer(
      builder: (context, stateManager, child) => Scaffold(
        appBar: trailingNavigationButtons(screenSizeValue, context, true),
        body: SingleChildScrollView(
          child: Column(children: []),
        ),
      ),
    );
  }

  Widget mobileView(Size screenSizeValue) {
    return Consumer(
      builder: (context, stateManager, child) => Scaffold(
        drawer: Drawer(child: DrawerItems()),
        appBar: AppBar(
          title: const Text("Portfolio",
              style: TextStyle(
                  fontFamily: "Borel", color: Colors.white, fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            HomePageCard(),
          ]),
        ),
      ),
    );
  }

  Widget emptyScreenView() {
    return const Center(
      child: Scaffold(
        body: Center(child: Text("This screen size is not supported!")),
      ),
    );
  }
}
