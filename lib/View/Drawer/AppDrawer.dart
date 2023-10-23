// ignore_for_file: file_names

import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Column(
          children: [
            IconButton(
                onPressed: () => {
                      Navigator.pop(context),
                    },
                icon: Icon(Icons.arrow_back)),
          ],
        ),
        const DrawerHeader(
          decoration: BoxDecoration(color: Colors.green),
          child: Text(
            "Vaibhav raj singh",
            style: TextStyle(
                fontFamily: "Borel", color: Colors.white, fontSize: 20),
          ),
        ),
        ListTile(
          title: const Text(
            "Home",
            style: TextStyle(
                fontFamily: "Borel", color: Colors.white, fontSize: 20),
          ),
          onTap: () {
            Navigator.pushNamed(context, "home");
          },
        ),
        ListTile(
          title: const Text(
            "Projects",
            style: TextStyle(
                fontFamily: "Borel", color: Colors.white, fontSize: 20),
          ),
          onTap: () {
            Navigator.pushNamed(context, "projects");
          },
        ),
        ListTile(
          title: const Text(
            "Contact",
            style: TextStyle(
                fontFamily: "Borel", color: Colors.white, fontSize: 20),
          ),
          onTap: () {
            Navigator.pushNamed(context, "contact");
          },
        ),
        ListTile(
          title: const Text(
            "About",
            style: TextStyle(
                fontFamily: "Borel", color: Colors.white, fontSize: 20),
          ),
          onTap: () {
            Navigator.pushNamed(context, "about");
          },
        ),
      ],
    );
  }
}
