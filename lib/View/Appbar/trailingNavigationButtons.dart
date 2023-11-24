// ignore_for_file: file_names

import 'package:flutter/material.dart';

AppBar trailingNavigationButtons(
  Size screenSize,
  BuildContext context,
  bool showProfilePhoto,
) {
  var currentRoute = ModalRoute.of(context)?.settings.name;
  return AppBar(
    titleSpacing: screenSize.width / 10,
    title: showProfilePhoto
        ? const CircleAvatar(
            foregroundImage: AssetImage("images/ProfileImage.jpg"), radius: 30)
        : Container(),
    actions: [
      Row(children: [
        MaterialButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onPressed: () {
            if (currentRoute != "projects") {
              Navigator.pushNamed(context, 'projects');
            }
          },
          child: const Text("Projects",
              style: TextStyle(
                  fontFamily: "Borel", color: Colors.white, fontSize: 20)),
        ),
        const SizedBox(width: 10),
        MaterialButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onPressed: () {
            if (currentRoute != "about") {
              Navigator.pushNamed(context, 'about');
            }
          },
          child: const Text("About",
              style: TextStyle(
                  fontFamily: "Borel", color: Colors.white, fontSize: 20)),
        ),
        const SizedBox(width: 10),
        MaterialButton(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          onPressed: () {
            if (currentRoute != "contact") {
              Navigator.pushNamed(context, 'contact');
            }
          },
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
