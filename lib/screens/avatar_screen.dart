import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Avatar"),
          actions: [
            Container(
                margin: const EdgeInsets.only(right: 10),
                child: CircleAvatar(
                  backgroundColor: Colors.amber[900],
                  child: const Text("CP"),
                ))
          ],
        ),
        body: const Center(
          child: CircleAvatar(
          // ! Este widget no tiene el fadeIn para las imagenes
          maxRadius: 100,
          backgroundImage: NetworkImage("https://lh3.googleusercontent.com/a/AEdFTp491yyAXm_v85krSZ585jThSVG6iKnFbPKAQSQtfw=s96-c-rg-br100"),
        )));
  }
}
