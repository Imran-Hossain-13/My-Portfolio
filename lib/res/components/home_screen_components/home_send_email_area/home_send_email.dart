import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/res/components/input_text_field/input_box.dart';
import 'package:portfolio/view_model/home_view_model/home_model.dart';
import '../../../../utils/utils.dart';
import '../../../colors.dart';
import '../header_area/header_text_area.dart';



class HomeSendEmailArea extends StatefulWidget {

  const HomeSendEmailArea({super.key});

  @override
  State<HomeSendEmailArea> createState() => _HomeSendEmailAreaState();
}

class _HomeSendEmailAreaState extends State<HomeSendEmailArea> {
  final disableController = TextEditingController();
  final emailSubjectController = TextEditingController();
  final emailBodyController = TextEditingController();

  final disableFocusNode = FocusNode();
  final emailSubjectFocusNode = FocusNode();
  final emailBodyFocusNode = FocusNode();

  final _key = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    disableController.dispose();
    emailSubjectController.dispose();
    emailBodyController.dispose();

    disableFocusNode.dispose();
    emailSubjectFocusNode.dispose();
    emailBodyFocusNode.dispose();
  }
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
              const Text("GET TOUCH",style: TextStyle(color: Colors.black87),)
            ],
          ),
          const Text("CONTACT",style: TextStyle(fontSize: 25),),
          const SizedBox(height: 40,),
          Container(
            width: width,
            padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 30),
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
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.topLeft,
                  colors: [
                    AppColors.gradientColor1.withOpacity(.7),
                    AppColors.gradientColor1.withOpacity(.5),
                  ],
                ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: const Center(child: Icon(FontAwesomeIcons.envelopeCircleCheck,color: Colors.white,size: 22,)),
                ),
                const Text("Send Message!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                const SizedBox(height: 30,),
                Form(
                  key: _key,
                  child: Column(
                    children: [
                      InputTextField(
                        label: 'imran.nkl1431nkl@gmail.com',
                        inputController:  disableController,
                        focusNode: disableFocusNode,
                        keyboardType: TextInputType.text,
                        enable: false,
                        onFieldSubmitted: (value) { },
                        onValidator: (validator){ },
                      ),
                      const SizedBox(height: 15,),
                      InputTextField(
                        label: 'Email subject',
                        inputController:  emailSubjectController,
                        focusNode: emailSubjectFocusNode,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (value) {
                          Utils.fieldFocus(context, emailSubjectFocusNode, emailSubjectFocusNode);
                        },
                        onValidator: (validator){
                          return validator.toString().isEmpty? "Enter email body": null;
                        },
                      ),
                      const SizedBox(height: 15,),
                      InputTextField(
                        label: 'Email body',
                        inputController:  emailBodyController,
                        focusNode: emailBodyFocusNode,
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (value) { },
                        onValidator: (validator){
                          return validator.toString().isEmpty? "Enter email subject": null;
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25,),
                TextButton(
                  onPressed: () async {
                    HomeModel.sendEmail(
                      emailSubjectController.text,
                      emailBodyController.text,
                    );
                    disableController.clear();
                    emailSubjectController.clear();
                    emailBodyController.clear();
                  },
                  style: TextButton.styleFrom(
                      backgroundColor: AppColors.blackColor,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                    ),
                  child: const Center(child: Text("Send",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),)
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("or",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
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
            ),
          )
        ],
      ),
    );
  }
}
