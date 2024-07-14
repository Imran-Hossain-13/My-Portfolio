import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/utils.dart';
import '../../../colors.dart';

class HomeProjectArea extends StatelessWidget {
  const HomeProjectArea({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: width * .09),
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
              const Text("TAKE LOOK AT MY",style: TextStyle(color: Colors.black87),)
            ],
          ),
          const Text("PROJECTS",style: TextStyle(fontSize: 25),),
          const SizedBox(height: 40,),
          Container(
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 50,horizontal: 50),
            margin: const EdgeInsets.only(bottom: 50),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const[
                BoxShadow(
                  color: AppColors.gradientColor1,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
                BoxShadow(
                  color: AppColors.gradientColor2,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(3, 0),
                ),
              ],
              gradient: const LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors: [
                    AppColors.gradientColor1,
                    AppColors.gradientColor2,
                  ],
                )
            ),
            child: LayoutBuilder(
              builder: (context, constrains){
                if(constrains.maxWidth > 710){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ProjectBoxes(
                            onTap: (){
                              Utils.hyperLink('https://github.com/Imran-Hossain-13/News-App');
                            },
                            image: "assets/images/news.png",
                            data: const['Api','Get x','Routing','Shared Preferences'],
                            appsTitle: "News update",
                            description: "This application is made for getting data from various kind news channel data by Api",
                            description2: 'Anyone can watch live news update from various top rated news channel, such as BBC, CNN, AlJa jira',
                          ),
                          const SizedBox(width: 10,),
                          ProjectBoxes(
                            onTap: (){
                              Utils.hyperLink('https://github.com/Imran-Hossain-13/Social-Media');
                            },
                            image: "assets/images/social-media.png",
                            data: const['Firebase','Get x','Routing','Authentication','Messaging'],
                            appsTitle: "Social media",
                            description: "This apps is a firebase application based on social media",
                            description2: 'This is  firebase based application.Some can Signup, Sign in, Chat, and create there own profile.',
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ProjectBoxes(
                            onTap: (){
                              Utils.hyperLink('https://github.com/Imran-Hossain-13/School-Management');
                            },
                            image: "assets/images/school.png",
                            data: const['Get x','Routing','Shared Preferences', 'Design'],
                            appsTitle: "School Management",
                            description: "This is a school management application(Only design).",
                            description2: 'This school management application is made for just learning purpose and exploring something new.',
                          ),
                          const SizedBox(width: 10,),
                          ProjectBoxes(
                            onTap: (){
                              Utils.hyperLink('https://github.com/Imran-Hossain-13/Bata-Web');
                            },
                            image: "assets/images/bata.png",
                            data: const['Html','Sass','Bootstrap','Animation'],
                            appsTitle: "Bata",
                            description: "This website design is copied from bangladesh e-commerce website Bata",
                            description2: 'This is an commercial web design with responsive for all design.',
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ProjectBoxes(
                            onTap: (){
                              Utils.hyperLink('https://github.com/Imran-Hossain-13/eshop-web');
                            },
                            image: "assets/images/eshop.png",
                            data: const['Html','Sass','Vanilla js', 'Bootstrap'],
                            appsTitle: "E-commerce",
                            description: "A small project project using vanilla js.",
                            description2: 'This is an e-commerce application. Some can add item for them the summation of those item will also visible.',
                          ),
                        ],
                      ),
                    ],
                  );
                }else{
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ProjectBoxes(
                        onTap: (){
                          Utils.hyperLink('https://github.com/Imran-Hossain-13/News-App');
                        },
                        image: "assets/images/news.png",
                        data: const['Api','Get x','Routing','Shared Preferences'],
                        appsTitle: "News update",
                        description: "This application is made for getting data from various kind news channel data by Api",
                        description2: 'Anyone can watch live news update from various top rated news channel, such as BBC, CNN, AlJa jira',
                      ),
                      const SizedBox(height: 20,),
                      ProjectBoxes(
                        onTap: (){
                          Utils.hyperLink('https://github.com/Imran-Hossain-13/Social-Media');
                        },
                        image: "assets/images/social-media.png",
                        data: const['Firebase','Get x','Routing','Authentication','Messaging'],
                        appsTitle: "Social media",
                        description: "This apps is a firebase application based on social media",
                        description2: 'This is  firebase based application.Some can Signup, Sign in, Chat, and create there own profile.',
                      ),
                      const SizedBox(height: 20,),
                      ProjectBoxes(
                        onTap: (){
                          Utils.hyperLink('https://github.com/Imran-Hossain-13/School-Management');
                        },
                        image: "assets/images/school.png",
                        data: const['Get x','Routing','Design','Shared Preferences' ],
                        appsTitle: "School Management",
                        description: "This is a school management application(Only design).",
                        description2: 'This school management application is made for just learning purpose and exploring something new.',
                      ),
                      const SizedBox(height: 20,),
                      ProjectBoxes(
                        onTap: (){
                          Utils.hyperLink('https://github.com/Imran-Hossain-13/Bata-Web');
                        },
                        image: "assets/images/bata.png",
                        data: const['Html','Sass','Bootstrap','Animation'],
                        appsTitle: "Bata",
                        description: "This website design is copied from bangladesh e-commerce website Bata",
                        description2: 'This is an commercial web design with responsive for all design.',
                      ),
                      const SizedBox(height: 20,),
                      ProjectBoxes(
                        onTap: (){
                          Utils.hyperLink('https://github.com/Imran-Hossain-13/eshop-web');
                        },
                        image: "assets/images/eshop.png",
                        data: const['Html','Sass','Vanilla js', 'Bootstrap'],
                        appsTitle: "E-commerce",
                        description: "A small project project using vanilla js.",
                        description2: 'This is an e-commerce application. Some can add item for them the summation of those item will also visible.',
                      ),
                    ],
                  );
                }
              }
            ),
          )
        ]
      )
    );
  }
}

class ProjectBoxes extends StatelessWidget {
  final VoidCallback onTap;
  final String image;
  final List<String> data;
  final String appsTitle;
  final String description;
  final String description2;
  // final double width;
  const ProjectBoxes({
    super.key, required this.image, required this.data, required this.appsTitle, required this.description, required this.onTap, required this.description2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      padding:const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(image,height: 400,width: 350,)
          ),
          const SizedBox(height: 20,),
          Row(
            children: [
              ProjectSkillBoxes(text: data[0],),
              ProjectSkillBoxes(text: data[1],),
              ProjectSkillBoxes(text: data[2]),
            ],
          ),
          Row(
            children: [
              ProjectSkillBoxes(text: data[3],),
              data.length == 5? ProjectSkillBoxes(text: data[4],):Container(),
              data.length == 6? ProjectSkillBoxes(text: data[5],):Container(),
            ],
          ),
          Text(appsTitle,style: const TextStyle(fontSize: 23,fontWeight: FontWeight.bold),),
          Text(description,maxLines: 3,),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: onTap,
                  child: const ProjectLinkBox(icon: FontAwesomeIcons.github)
              ),
              InkWell(
                onTap: (){
                  Utils.alertBox(context,appsTitle,description2);
                },
                child: const ProjectLinkBox(icon: FontAwesomeIcons.info)
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectSkillBoxes extends StatelessWidget {
  final String text;
  const ProjectSkillBoxes({
    super.key, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      margin: const EdgeInsets.only(right: 8,bottom: 12),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const[
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0,3)
          )
        ]
      ),
      child: Center(child: Text(text,style: const TextStyle(color: Colors.white),),),
    );
  }
}

class ProjectLinkBox extends StatelessWidget {
  final IconData icon;
  const ProjectLinkBox({
    super.key, required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          color: AppColors.blackColor,
          borderRadius: BorderRadius.circular(10)
      ),
      child: Icon(icon,color: Colors.grey.shade300,size: 17,),
    );
  }
}
