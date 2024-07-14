import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/view_model/splash_screen_model/splash_model.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashModel.pageLoader(context);
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/gif/splasher.json",width: width * .2),
            SizedBox(height: height * .05,),
            const Text("Welcome to my portfolio",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
