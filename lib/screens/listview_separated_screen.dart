import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListviewSeparatedScreen extends StatelessWidget {
  final options = const ["Menu 1", "Menu 2", "Menu 3", "Menu 4", "Menu 5"];

  const ListviewSeparatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("ListView Separated")),
        body: ListView.separated(
          itemBuilder: (BuildContext context, int index) => ListTile(
              leading: const Icon(Icons.abc, color: AppTheme.primaryColor),
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              onTap: () {
                final menu = options[index];
                print(menu);
              }),
          // ignore: todo
          itemCount: options
              .length, // TODO: Cuando no se utilizan los parametros es muy comun que se reemplace por _ y __
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
