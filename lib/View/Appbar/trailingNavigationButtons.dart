// ignore_for_file: file_names

import 'package:flutter/material.dart';

AppBar trailingNavigationButtons(
  Size screenSize,
  BuildContext context,
) {
  return AppBar(
    titleSpacing: screenSize.width / 10,
    title: const CircleAvatar(
      foregroundImage: AssetImage("images/ProfileImage.jpg"),
      radius: 30,
    ),
    actions: [
      Row(children: [
        MaterialButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onPressed: () {
            Navigator.pushNamed(context, 'projects');
          },
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
          onPressed: () {
            Navigator.pushNamed(context, 'about');
          },
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
          onPressed: () {
            Navigator.pushNamed(context, 'contact');
          },
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
