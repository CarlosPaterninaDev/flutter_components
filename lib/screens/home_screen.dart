import 'package:flutter/material.dart';
import 'package:flutter_components/routes/app_routes.dart';

import 'package:flutter_components/screens/screens.dart';
import 'package:flutter_components/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Components'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(menuOptions[index].icon, color: AppTheme.primaryColor),
                  title: Text(menuOptions[index].nameOption),
                  onTap: () {
                    // ignore: todo
                    /* TODO: Navegation por push, es muy configurable
                    final route = MaterialPageRoute(
                        builder: (context) => const ListviewScreen());

                    // pushReplacement destruye el stack de cartas, caso de uso el Login
                    Navigator.push(context, route); */

                    Navigator.pushNamed(context, menuOptions[index].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOptions.length));
  }
}
