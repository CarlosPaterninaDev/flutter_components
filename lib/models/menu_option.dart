import 'package:flutter/material.dart' show IconData, Widget;
// Solo importar la clase que vamos a usar

class MenuOption {
  final String route;
  final IconData icon;
  final String nameOption;
  final Widget screen;

  MenuOption(
      {required this.route,
      required this.icon,
      required this.nameOption,
      required this.screen});
}
