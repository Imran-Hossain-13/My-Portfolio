import 'package:flutter/material.dart';
import 'package:portfolio/utils/routes/route_name.dart';
import 'package:portfolio/view/web_screens/web_home_screen.dart';
import '../../view/splash_screen/splash_screen.dart';


class Routes {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homeScreen:
        return MaterialPageRoute(builder: (_) => const WebHomeScreen());

      case RouteName.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          );
        });
    }
  }
}