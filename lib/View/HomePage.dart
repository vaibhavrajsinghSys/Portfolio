// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/Utils/screenSize.dart';
import 'package:provider/provider.dart';

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
          appBar: trailingNavigationButtons(screenSizeValue, context),
          body: SingleChildScrollView(
            child: Column(children: []),
          )),
    );
  }

  Widget tableView(Size screenSizeValue) {
    return Consumer(
      builder: (context, stateManager, child) => Scaffold(
        appBar: trailingNavigationButtons(screenSizeValue, context),
        body: SingleChildScrollView(
          child: Column(children: []),
        ),
      ),
    );
  }

  Widget mobileView(Size screenSizeValue) {
    return Consumer(
      builder: (context, stateManager, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Portfolio"),
        ),
        body: SingleChildScrollView(
          child: Column(children: []),
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

  AppBar trailingNavigationButtons(Size screenSize, BuildContext context) {
    return AppBar(
      titleSpacing: screenSize.width / 10,
      title: const CircleAvatar(
          foregroundImage: AssetImage("images/ProfileImage.jpg"), radius: 30),
      actions: [
        Row(children: [
          MaterialButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            onPressed: () {},
            color: Colors.black,
            hoverColor: Colors.white12,
            child: const Text("Projects",
                style: TextStyle(
                    fontFamily: "Borel", color: Colors.white, fontSize: 20)),
          ),
          const SizedBox(width: 10),
          MaterialButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            onPressed: () {},
            color: Colors.black,
            hoverColor: Colors.white12,
            child: const Text("About",
                style: TextStyle(
                    fontFamily: "Borel", color: Colors.white, fontSize: 20)),
          ),
          const SizedBox(width: 10),
          MaterialButton(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            onPressed: () {},
            color: Colors.black,
            hoverColor: Colors.white12,
            child: const Text("Contact",
                style: TextStyle(
                    fontFamily: "Borel", color: Colors.white, fontSize: 20)),
          ),
        ]),
        SizedBox(
          width: screenSize.width / 10,
        )
      ],
    );
  }
}
