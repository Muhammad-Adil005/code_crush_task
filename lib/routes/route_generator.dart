import 'package:code_crush_app/routes/route_constants.dart';
import 'package:flutter/material.dart';

import '../screen/google_map_screen/google_map.dart';
import '../screen/home_screen/home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case Routes.mapScreen:
        return MaterialPageRoute(
          builder: (_) => const GoogleMapScreen(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
