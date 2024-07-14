import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../utils/utils.dart';
import '../../../../view_model/home_view_model/home_model.dart';
import '../../../colors.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';


class HeaderTextArea extends StatelessWidget {
  final TextAlign align;
  const HeaderTextArea({super.key, required this.align});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Text("HI THERE! I'M",style: TextStyle(fontSize: 17),),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Imran", style: TextStyle(letterSpacing: 4,color: Colors.purple.shade400,fontWeight: FontWeight.w900,fontSize: 40)),
            const SizedBox(width: 10,),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                    'Hossain',textAlign: TextAlign.center,
                    speed: const Duration(milliseconds: 200),
                    textStyle: const TextStyle(letterSpacing: 4,fontWeight: FontWeight.bold,fontSize: 40)
                ),
              ],
              totalRepeatCount: 5,
            ),
          ],
        ),
        SizedBox(
          width: width * .4,
          child: Text(
            "A Flutter application developer who is interested in creating interactive applications and gathering experiences based on mobile applications.",
            maxLines: 6,
            textAlign: align,
            style: const TextStyle(fontSize: 19),
          ),
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){
                HomeModel.downloadResume(context);
              },
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 10),
                backgroundColor: AppColors.blackColor,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                shadowColor: Colors.black.withOpacity(0.5),
              ),
              child: const Text("Resume",style: TextStyle(color: Colors.white,fontSize: 16),),
            ),
            SizedBox(width: width * .1,),
            Row(
              children: [
                InkWell(
                  onTap: (){
                    Utils.hyperLink('https://www.linkedin.com/in/imran-hossain-519592277/');
                  },
                    child: const HeaderBox(icon: FontAwesomeIcons.linkedin,)
                ),
                InkWell(
                  onTap: (){
                    Utils.hyperLink('https://github.com/Imran-Hossain-13');
                  },
                    child: const HeaderBox(icon: FontAwesomeIcons.github,)
                ),
                InkWell(
                  onTap: (){
                    Utils.hyperLink('https://wa.me/1860171089');
                  },
                    child: const HeaderBox(icon: FontAwesomeIcons.whatsapp,)
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}

class HeaderBox extends StatelessWidget {
  final IconData icon;
  const HeaderBox({
    super.key, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 48,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: AppColors.blackColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Icon(icon,color: Colors.white,size: 22,),
    );
  }
}
