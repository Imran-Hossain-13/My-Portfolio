import 'package:flutter/material.dart';
import '../header_image_area.dart';
import '../header_text_area.dart';

class WebHeaderArea extends StatefulWidget {
  const WebHeaderArea({super.key});

  @override
  State<WebHeaderArea> createState() => _WebHeaderAreaState();
}

class _WebHeaderAreaState extends State<WebHeaderArea> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: height * .2,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeaderImageArea(),
            SizedBox(width: width * .09,),
            const HeaderTextArea(align: TextAlign.start,),
          ],
        ),
      ],
    );
  }
}
