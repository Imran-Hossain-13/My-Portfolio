import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../colors.dart';

class SkillsMeArea extends StatelessWidget {
  const SkillsMeArea({super.key});

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
              const Text("CHECK OUT MY",style: TextStyle(color: Colors.black87),)
            ],
          ),
          const Text("SKILLS",style: TextStyle(fontSize: 25),),
          const SizedBox(height: 40,),
          Container(
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 50),
            margin: const EdgeInsets.only(bottom: 50),
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
            child: LayoutBuilder(builder: (context, constrains){
              if(constrains.maxWidth > 830){
                return Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("FLUTTER RELATED",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.gofore, text: 'Get x', color: Colors.red,),
                            SkillBoxes(icon: FontAwesomeIcons.pinterest, text: 'Provider', color: Colors.blue,),
                            SkillBoxes(icon: FontAwesomeIcons.laptopCode, text: 'API', color: Colors.cyan,),
                            SkillBoxes(icon: FontAwesomeIcons.replyAll, text: 'Responsive', color: Colors.pinkAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.arrowsToDot, text: 'Animation', color: Colors.teal,),
                            SkillBoxes(icon: FontAwesomeIcons.route, text: 'Routing', color: Colors.black,),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Database",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.database, text: 'MySQL', color: Colors.purpleAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.firefoxBrowser, text: 'Firebase', color: Colors.yellow,),
                            SkillBoxes(icon: FontAwesomeIcons.mdb, text: 'MongoDB', color: Colors.green,),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Web Design",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.html5, text: 'Html', color: Colors.red,),
                            SkillBoxes(icon: FontAwesomeIcons.css3, text: 'Css', color: Colors.blueAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.sass, text: 'Sass', color: Colors.purple,),
                            SkillBoxes(icon: FontAwesomeIcons.bootstrap, text: 'Bootstrap', color: Colors.purpleAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.cannabis, text: 'TailWind', color: Colors.blue,),
                            SkillBoxes(icon: FontAwesomeIcons.squareJs, text: 'Vanilla JS', color: Colors.yellow,),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              }else if(constrains.maxWidth > 560){
                return Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("FLUTTER RELATED",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.gofore, text: 'Get x', color: Colors.red,),
                            SkillBoxes(icon: FontAwesomeIcons.pinterest, text: 'Provider', color: Colors.blue,),
                            SkillBoxes(icon: FontAwesomeIcons.laptopCode, text: 'API', color: Colors.cyan,),
                            SkillBoxes(icon: FontAwesomeIcons.replyAll, text: 'Responsive', color: Colors.pinkAccent,),
                          ],
                        ),
                        const Row(
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.arrowsToDot, text: 'Animation', color: Colors.teal,),
                            SkillBoxes(icon: FontAwesomeIcons.route, text: 'Routing', color: Colors.black,),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Database",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.database, text: 'MySQL', color: Colors.purpleAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.firefoxBrowser, text: 'Firebase', color: Colors.yellow,),
                            SkillBoxes(icon: FontAwesomeIcons.mdb, text: 'MongoDB', color: Colors.green,),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Web Design",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.html5, text: 'Html', color: Colors.red,),
                            SkillBoxes(icon: FontAwesomeIcons.css3, text: 'Css', color: Colors.blueAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.sass, text: 'Sass', color: Colors.purple,),
                            SkillBoxes(icon: FontAwesomeIcons.bootstrap, text: 'Bootstrap', color: Colors.purpleAccent,),
                          ],
                        ),
                        const Row(
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.cannabis, text: 'TailWind', color: Colors.blue,),
                            SkillBoxes(icon: FontAwesomeIcons.squareJs, text: 'Vanilla JS', color: Colors.yellow,),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              }else if(constrains.maxWidth > 430){
                return Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("FLUTTER RELATED",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.gofore, text: 'Get x', color: Colors.red,),
                            SkillBoxes(icon: FontAwesomeIcons.pinterest, text: 'Provider', color: Colors.blue,),
                            SkillBoxes(icon: FontAwesomeIcons.laptopCode, text: 'API', color: Colors.cyan,),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.replyAll, text: 'Responsive', color: Colors.pinkAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.arrowsToDot, text: 'Animation', color: Colors.teal,),
                            SkillBoxes(icon: FontAwesomeIcons.route, text: 'Routing', color: Colors.black,),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Database",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.database, text: 'MySQL', color: Colors.purpleAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.firefoxBrowser, text: 'Firebase', color: Colors.yellow,),
                            SkillBoxes(icon: FontAwesomeIcons.mdb, text: 'MongoDB', color: Colors.green,),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Web Design",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.html5, text: 'Html', color: Colors.red,),
                            SkillBoxes(icon: FontAwesomeIcons.css3, text: 'Css', color: Colors.blueAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.sass, text: 'Sass', color: Colors.purple,),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.bootstrap, text: 'Bootstrap', color: Colors.purpleAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.cannabis, text: 'TailWind', color: Colors.blue,),
                            SkillBoxes(icon: FontAwesomeIcons.squareJs, text: 'Vanilla JS', color: Colors.yellow,),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              }else{
                return Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("FLUTTER RELATED",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.gofore, text: 'Get x', color: Colors.red,),
                            SkillBoxes(icon: FontAwesomeIcons.pinterest, text: 'Provider', color: Colors.blue,),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.laptopCode, text: 'API', color: Colors.cyan,),
                            SkillBoxes(icon: FontAwesomeIcons.replyAll, text: 'Responsive', color: Colors.pinkAccent,),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.arrowsToDot, text: 'Animation', color: Colors.teal,),
                            SkillBoxes(icon: FontAwesomeIcons.route, text: 'Routing', color: Colors.black,),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Database",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.database, text: 'MySQL', color: Colors.purpleAccent,),
                            SkillBoxes(icon: FontAwesomeIcons.firefoxBrowser, text: 'Firebase', color: Colors.yellow,),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.mdb, text: 'MongoDB', color: Colors.green,),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 50,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Center(
                              child: Container(
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 1,color: Colors.black45)
                                ),
                              ),
                            ),
                            const SizedBox(width: 10,),
                            const Text("Web Design",style: TextStyle(color: Colors.black87,fontSize: 12),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.html5, text: 'Html', color: Colors.red,),
                            SkillBoxes(icon: FontAwesomeIcons.css3, text: 'Css', color: Colors.blueAccent,),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.sass, text: 'Sass', color: Colors.purple,),
                            SkillBoxes(icon: FontAwesomeIcons.bootstrap, text: 'Bootstrap', color: Colors.purpleAccent,),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SkillBoxes(icon: FontAwesomeIcons.cannabis, text: 'TailWind', color: Colors.blue,),
                            SkillBoxes(icon: FontAwesomeIcons.squareJs, text: 'Vanilla JS', color: Colors.yellow,),
                          ],
                        ),
                      ],
                    ),
                  ],
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}

class SkillBoxes extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;
  const SkillBoxes({
    super.key, required this.icon, required this.text, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 85,
      margin: const EdgeInsets.only(top: 25,left: 25,right: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 10,
            spreadRadius: 2
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon,color: color,size: 29,),
          const SizedBox(height: 8,),
          Text(text)
        ],
      ),
    );
  }
}
