import 'package:flutter/material.dart';

import '../../../colors.dart';

class AboutMeArea extends StatelessWidget {
  const AboutMeArea({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: width * .08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Center(
                  child: Container(
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.black45)
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                const Text("SOME INFO",style: TextStyle(color: Colors.black87),)
              ],
            ),
            const Text("ABOUT ME",style: TextStyle(fontSize: 25),),
            const SizedBox(height: 40,),
            Container(
              width: width,
              padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 60),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const[
                  BoxShadow(
                    color: AppColors.gradientColor1,
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  ),
                  BoxShadow(
                    color: AppColors.gradientColor2,
                    spreadRadius: 3,
                    blurRadius: 6,
                    offset: Offset(3, 0),
                  ),
                ],
              ),
              child: const Text.rich(
                TextSpan(
                    text: "I'm a flutter mobile application developer with a background in  ",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1),
                    children: [
                      TextSpan(
                        text: "Computer Science and Technology",
                        style: TextStyle(color: Colors.purple),
                      ),
                      TextSpan(
                        text: ". I am currently studying in ",
                      ),
                      TextSpan(
                        text: "Diploma in Engineering",
                        style: TextStyle(color: Colors.purple),
                      ),
                      TextSpan(
                        text: " and my subject is Computer science & Technology(8th Semester). I have strong foundation of apps development and building complex solutions. Recently, I have successfully completed Apps Development course from ",
                      ),
                      TextSpan(
                        text: "UTC(Universal Technology Corporation)",
                        style: TextStyle(color: Colors.purple),
                      ),
                      TextSpan(
                        text: ". I am passionate about coding and solving problems through code, and I am excited to work alongside with other programmers and try to learn what I don't know, I love to remote work and collaborate with team to achieve goal.",
                      ),
                    ]
                ),
              ),
            )
          ],
        ),
      );
  }
}
