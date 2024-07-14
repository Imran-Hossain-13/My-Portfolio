import 'package:flutter/material.dart';
import '../header_image_area.dart';
import '../header_text_area.dart';

class MobileHeaderArea extends StatefulWidget {
  const MobileHeaderArea({super.key});

  @override
  State<MobileHeaderArea> createState() => _MobileHeaderAreaState();
}

class _MobileHeaderAreaState extends State<MobileHeaderArea> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: height * .08,
        ),
        const HeaderImageArea(),
        SizedBox(height: height * .06,),
        const HeaderTextArea(align: TextAlign.center,),
      ],
    );
  }
}
