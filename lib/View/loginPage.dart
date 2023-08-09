// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/Utils/screenSize.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    ScreenSize screenSize = ScreenSize();
    Size size = MediaQuery.of(context).size;
    ScreenTypes type = screenSize.getScreenSize(size.width);
    switch (type) {
      case ScreenTypes.desktop:
        return desktopView();
      case ScreenTypes.tablet:
        return tableView();
      case ScreenTypes.mobile:
        return mobileView();
      case ScreenTypes.noscreen:
        return emptyScreenView();
    }
  }

  Widget desktopView() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: const Center(child: Text("desktop")),
    );
  }

  Widget tableView() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: const Center(child: Text("tablet")),
    );
  }

  Widget mobileView() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Portfolio"),
      ),
      body: const Center(child: Text("mobile")),
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
