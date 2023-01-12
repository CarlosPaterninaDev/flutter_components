import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListviewScreen extends StatelessWidget {
  final options = const ["Menu 1", "Menu 2", "Menu 3", "Menu 4", "Menu 5"];

  const ListviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("ListView")),
        // ignore: todo
        // TODO: Builder para crear listas perezosas
        body: ListView(
          children: [
            // ignore: todo
            // TODO: No es necesario llamar el metodo toList() ya que el spread operator se encarga de transformar un iterable a una lista
            // ...options.map((e) => const Text("data")),

            ...options.map((e) =>
                const ListTile(leading: Icon(Icons.abc, color: AppTheme.primaryColor), title: Text("data"), trailing: Icon(Icons.arrow_forward_ios_outlined)))
          ],
        ));
  }


  
}
