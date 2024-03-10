import 'package:fastdelivery/presentation/screens/tabs/tab.dart';
import 'package:fastdelivery/routes/route_name.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static MaterialPageRoute? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const TabHome(),
        );
      default:
    }
  }
}
