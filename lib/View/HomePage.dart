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
    return Consumer(
      builder: (context, value, child) => CustomScrollView(slivers: [
        SliverAppBar(
          title: Text(
            "data",
            style: TextStyle(color: Colors.black),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 500.0,
            mainAxisSpacing: 100.0,
            crossAxisSpacing: 100.0,
            childAspectRatio: 1.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 200,
          ),
        )
      ]),
    );
  }

  // Widget desktopView() {
  //   Size size = MediaQuery.of(context).size;
  //   return Consumer(
  //     builder: (context, stateManager, child) => Scaffold(
  //         appBar: AppBar(
  //           titleSpacing: size.width / 10,
  //           title:
  //               const CircleAvatar(backgroundColor: Colors.amber, radius: 30),
  //           actions: [
  //             Row(children: [
  //               MaterialButton(
  //                 shape: const RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.all(Radius.circular(10))),
  //                 onPressed: () {},
  //                 color: Colors.black,
  //                 hoverColor: Colors.white12,
  //                 child: const Text("Projects",
  //                     style: TextStyle(
  //                         fontFamily: "Borel",
  //                         color: Colors.white,
  //                         fontSize: 20)),
  //               ),
  //               const SizedBox(width: 10),
  //               MaterialButton(
  //                 shape: const RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.all(Radius.circular(10))),
  //                 onPressed: () {},
  //                 color: Colors.black,
  //                 hoverColor: Colors.white12,
  //                 child: const Text("About",
  //                     style: TextStyle(
  //                         fontFamily: "Borel",
  //                         color: Colors.white,
  //                         fontSize: 20)),
  //               ),
  //               const SizedBox(width: 10),
  //               MaterialButton(
  //                 shape: const RoundedRectangleBorder(
  //                     borderRadius: BorderRadius.all(Radius.circular(10))),
  //                 onPressed: () {},
  //                 color: Colors.black,
  //                 hoverColor: Colors.white12,
  //                 child: const Text("Contact",
  //                     style: TextStyle(
  //                         fontFamily: "Borel",
  //                         color: Colors.white,
  //                         fontSize: 20)),
  //               ),
  //             ]),
  //             const SizedBox(
  //               width: 50,
  //             )
  //           ],
  //         ),
  //         body: CustomScrollView(
  //           slivers: [
  //             Container(
  //               color: Colors.red,
  //               height: 400,
  //             )
  //           ],
  //         )),
  //   );
  // }

  Widget tableView() {
    return Consumer(
      builder: (context, stateManager, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Portfolio"),
        ),
        body: const Center(child: Text("tablet")),
      ),
    );
  }

  Widget mobileView() {
    return Consumer(
      builder: (context, stateManager, child) => Scaffold(
        appBar: AppBar(
          title: const Text("Portfolio"),
        ),
        body: const Center(child: Text("Mobile")),
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
