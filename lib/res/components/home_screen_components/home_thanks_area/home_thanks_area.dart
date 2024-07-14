import 'package:flutter/material.dart';

import '../../../colors.dart';

class HomeThanksArea extends StatefulWidget {
  const HomeThanksArea({super.key});

  @override
  State<HomeThanksArea> createState() => _HomeThanksAreaState();
}

class _HomeThanksAreaState extends State<HomeThanksArea> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * .08),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1,color: Colors.white),
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.topLeft,
                colors: [
                  AppColors.gradientColor1.withOpacity(.7),
                  AppColors.gradientColor1.withOpacity(.5),
                ],
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Thanks for your time!",style: TextStyle(height: 1,letterSpacing: 1,fontSize: 27,fontWeight: FontWeight.bold),),
                Text("Imran Hossain",style: TextStyle(height: 2,letterSpacing: 1,fontSize: 19,fontWeight: FontWeight.bold),),
                Text("imran.nkl1431nkl@gmail.com",style: TextStyle(letterSpacing: 1,fontSize: 18,fontWeight: FontWeight.w200),),
                Text("Bangladesh | Chattagram | Noakhali District",textAlign: TextAlign.center,style: TextStyle(letterSpacing: 1,fontSize: 18,fontWeight: FontWeight.w200),),
              ],
            ),
          )
        ],
      ),
    );
  }
}
