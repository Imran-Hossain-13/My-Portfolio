import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Utils{
  static void fieldFocus(BuildContext context, FocusNode currentFocus, FocusNode nextFocus ){
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static void hyperLink(String url){
    launchUrlString(url);
  }

  static void mySnackbar(BuildContext context, String message){
    SnackBar sc = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(sc);
  }

  static void alertBox(BuildContext context, String title, String content){
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Center(child: Text(title)),
            content: Text(content),
          );
        },
    );
  }
}