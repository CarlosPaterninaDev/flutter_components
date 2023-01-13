import 'package:flutter/material.dart';
import 'package:flutter_components/models/models.dart';
import 'package:flutter_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'alert',
        icon: Icons.notification_add_rounded,
        nameOption: 'Alert',
        screen: const AlertScreen()),
    MenuOption(
        route: 'animated',
        icon: Icons.play_circle_outlined,
        nameOption: 'Animated',
        screen: const AnimatedScreen()),
    MenuOption(
        route: 'avatar',
        icon: Icons.circle_outlined,
        nameOption: 'Avatar',
        screen: const AvatarScreen()),
    MenuOption(
        route: 'card',
        icon: Icons.contact_page_outlined,
        nameOption: 'Card',
        screen: const CardScreen()),
    MenuOption(
        route: 'inputs',
        icon: Icons.format_align_left_outlined,
        nameOption: 'Form Inputs',
        screen: const InputsScreen()),
    MenuOption(
        route: 'listView',
        icon: Icons.list_alt_outlined,
        nameOption: 'List View',
        screen: const ListviewScreen()),
            MenuOption(
        route: 'listView Builder',
        icon: Icons.line_style_outlined,
        nameOption: 'List View Builder',
        screen: const ListviewBuilderScreen()),
    MenuOption(
        route: 'listViewSeparated',
        icon: Icons.list_rounded,
        nameOption: 'List View Separated',
        screen: const ListviewSeparatedScreen()),
            MenuOption(
        route: 'slider',
        icon: Icons.sledding_sharp,
        nameOption: 'Slider / Checks',
        screen: const SliderScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};

    for (final menu in menuOptions) {
      routes.addAll({menu.route: (BuildContext context) => menu.screen});
    }

    return routes;
  }

  // * static Map<String, Widget Function(BuildContext)> routes = {
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  //   'home': (context) => const HomeScreen(),
  //   'listView': (context) => const ListviewScreen(),
  //   'listViewSeparated': (context) => const ListviewSeparatedScreen(),
  // };

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) =>
      MaterialPageRoute(builder: (context) => const HomeScreen());
}
