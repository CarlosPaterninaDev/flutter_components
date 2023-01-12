import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    // ! builder es un codigo que regresa un widget
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          title: const Text("Lorem Ipsum"),
          content: Column(mainAxisSize: MainAxisSize.min, children: const [
            FlutterLogo(size: 40),
            SizedBox(height: 20),
            Text(
                "Commodo occaecat consectetur nostrud officia sit qui in excepteur consequat esse. Ad aliqua in qui commodo nisi est culpa incididunt eiusmod. Eiusmod tempor cillum officia voluptate Lorem pariatur aute eu. Aute incididunt non ad aute labore incididunt occaecat ex. Nulla reprehenderit labore aliquip commodo sint dolor reprehenderit in mollit occaecat. Ut in enim ex id exercitation consequat excepteur occaecat anim minim ipsum aute.")
          ]),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cerrar"))
          ],
        );
      },
    );
  }

  void displayDialogCupertino(BuildContext context) {
    // ! builder es un codigo que regresa un widget
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return CupertinoAlertDialog(
          title: const Text("Lorem Ipsum"),
          content: Column(mainAxisSize: MainAxisSize.min, children: const [
            FlutterLogo(size: 40),
            SizedBox(height: 20),
            Text(
                "Commodo occaecat consectetur nostrud officia sit qui in excepteur consequat esse. Ad aliqua in qui commodo nisi est culpa incididunt eiusmod. Eiusmod tempor cillum officia voluptate Lorem pariatur aute eu. Aute incididunt non ad aute labore incididunt occaecat ex. Nulla reprehenderit labore aliquip commodo sint dolor reprehenderit in mollit occaecat. Ut in enim ex id exercitation consequat excepteur occaecat anim minim ipsum aute.")
          ]),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text("Cerrar"))
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 500,
        color: Colors.amber,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
              onPressed: () => displayDialogCupertino(context),
              child: const Text("Show Alert IOs!")),
          const SizedBox(width: 10),
          ElevatedButton(
              onPressed: () => displayDialog(context),
              child: const Text("Show Alert Md!")),
          // * Cuando tengamos que definir una logica mediante Platform
          // ! ElevatedButton(
          // !    onPressed: () => Platform.isAndroid ? displayDialog(context) : displayDialogCupertino(context),
          // !   child: const Text("Show Alert Md!"))
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pop(context),
          child: const Icon(Icons.close)),
    );
  }
}
