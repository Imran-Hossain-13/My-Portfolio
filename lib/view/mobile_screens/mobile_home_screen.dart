import 'package:flutter/material.dart';
import 'package:portfolio/res/colors.dart';
import 'package:portfolio/res/components/home_screen_components/project_area/project_area.dart';
import '../../res/components/home_screen_components/about_me/about_me.dart';
import '../../res/components/home_screen_components/header_area/mobile_header_area/mobile_header_area.dart';
import '../../res/components/home_screen_components/home_send_email_area/home_send_email.dart';
import '../../res/components/home_screen_components/home_thanks_area/home_thanks_area.dart';
import '../../res/components/home_screen_components/skills_area/skills_area.dart';


class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
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
                const MobileHeaderArea(),
                SizedBox(height: height * .15,),
                const AboutMeArea(),
                SizedBox(height: height * .15,),
                const SkillsMeArea(),
                SizedBox(height: height * .15,),
                const HomeProjectArea(),
                SizedBox(height: height * .15,),
                const HomeSendEmailArea(),
                SizedBox(height: height * .15,),
                const HomeThanksArea(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
