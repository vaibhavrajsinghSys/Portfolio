// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:portfolio/Utils/screenSize.dart';

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
          actions: [
            IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.home)),
            const SizedBox(
              width: 20,
            )
          ],
        ),
        body: const Center(child: Text("desktop")));
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
      endDrawer: Drawer(
          width: 200,
          child: Column(children: [
            Container(
              height: 300,
              color: Colors.red,
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              label: Text("Home"),
              icon: Icon(Icons.home),
              backgroundColor: Colors.transparent,
              extendedIconLabelSpacing: 10,
            )
          ])),
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
