import 'package:flutter/material.dart';
import 'package:portfolio/res/components/home_screen_components/about_me/about_me.dart';
import 'package:portfolio/res/components/home_screen_components/home_send_email_area/home_send_email.dart';
import 'package:portfolio/res/components/home_screen_components/project_area/project_area.dart';
import '../../res/colors.dart';
import '../../res/components/home_screen_components/header_area/web_header_area/web_header_area.dart';
import '../../res/components/home_screen_components/home_thanks_area/home_thanks_area.dart';
import '../../res/components/home_screen_components/skills_area/skills_area.dart';


class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({super.key});

  @override
  State<WebHomeScreen> createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: width,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors: [
                    AppColors.gradientColor1,
                    AppColors.gradientColor2,
                  ],
                )
            ),
            child: Column(
              children: [
                const WebHeaderArea(),
                SizedBox(height: height * .20,),
                const AboutMeArea(),
                SizedBox(height: height * .20,),
                const SkillsMeArea(),
                SizedBox(height: height * .20,),
                const HomeProjectArea(),
                SizedBox(height: height * .20,),
                const HomeSendEmailArea(),
                SizedBox(height: height * .20,),
                const HomeThanksArea(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
