import 'package:flutter/material.dart';

import 'package:flutter_components/routes/app_routes.dart';
import 'package:flutter_components/theme/app_theme.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const ListviewScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      // onGenerateRoute: (setting) => AppRoutes.onGenerateRoute(setting),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.light
    );
  }
}
