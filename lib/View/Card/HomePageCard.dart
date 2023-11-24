import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, stateManager, child) => const Card(
        semanticContainer: true,
        clipBehavior: Clip.hardEdge,
        margin: EdgeInsets.all(10),
        borderOnForeground: true,
        elevation: 5,
        child: SizedBox(
            height: 200, child: Row(children: [Text("data"), Text("data")])),
      ),
    );
  }
}
