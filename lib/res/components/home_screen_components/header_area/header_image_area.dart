import 'package:flutter/material.dart';

import '../../../colors.dart';

class HeaderImageArea extends StatelessWidget {
  const HeaderImageArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 170,
      backgroundColor: AppColors.gradientColor1,
      backgroundImage: AssetImage("assets/images/developer.jpg"),
    );
  }
}
