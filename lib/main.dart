import 'package:flutter/material.dart';
import 'package:portfolio/responsive/responsive_manager.dart';
import 'package:portfolio/utils/routes/route_name.dart';
import 'package:portfolio/utils/routes/routes.dart';
import 'package:portfolio/view/mobile_screens/mobile_home_screen.dart';
import 'package:portfolio/view/web_screens/web_home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.splashScreen,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
