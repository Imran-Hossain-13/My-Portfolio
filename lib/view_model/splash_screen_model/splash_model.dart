import 'dart:async';
import 'package:flutter/material.dart';
import '../../responsive/responsive_manager.dart';
import '../../view/mobile_screens/mobile_home_screen.dart';
import '../../view/web_screens/web_home_screen.dart';

class SplashModel{
  static pageLoader(BuildContext context){
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const ResponsiveManager(webScreenLayout: WebHomeScreen(), mobileScreenLayout: MobileHomeScreen())));
    });
  }
}
