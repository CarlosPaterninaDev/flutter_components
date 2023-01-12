import 'package:flutter/material.dart';

import 'package:flutter_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Cards Component")),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          children: const [
            CustomCard(),
            CustomCard(),
            SizedBox(height: 50),
            CustomCardImage(
                imageUrl: "https://w.wallhaven.cc/full/45/wallhaven-4533k7.jpg",
                imageTitle: "SunSet Beach"),
            CustomCardImage(
                imageUrl: "https://w.wallhaven.cc/full/zy/wallhaven-zyxvqy.jpg",
                imageTitle: "SunSet"),
            CustomCardImage(
                imageUrl:
                    "https://w.wallhaven.cc/full/4v/wallhaven-4vkwr5.jpg"),
            SizedBox(height: 50),
          ],
        ));
  }
}
