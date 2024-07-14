import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResponsiveManager extends StatelessWidget {
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveManager({
    super.key,
    required this.webScreenLayout,
    required this.mobileScreenLayout
  });


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constrains){
          if(constrains.maxWidth > 830){
            // Web Screen
            return webScreenLayout;
          }else{
            // Mobile Screen
            return mobileScreenLayout;
          }
        }
    );
  }
}
