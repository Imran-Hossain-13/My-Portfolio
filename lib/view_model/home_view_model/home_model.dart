import 'package:flutter/cupertino.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

import '../../utils/utils.dart';

class HomeModel{
  static downloadResume(BuildContext context){
    //You can download a single file
    FileDownloader.downloadFile(
        url: "https://drive.google.com/uc?export=download&id=1Doj3klPxa1RcI6TGwyVagFmq_XS3mBZ-",
        name: "Imran-resume",//(optional)
        subPath: "documents/",//(optional)
        onProgress: (fileName, double progress) {
          Utils.mySnackbar(context, "Please wait...");
        },
        onDownloadCompleted: (String path) {
          Utils.mySnackbar(context, "Downloaded complete, Go on storage/download/documents/Imran-Resume.pdf");
        },
        onDownloadError: (String error) {
          Utils.mySnackbar(context, 'DOWNLOAD ERROR: $error');
        });
  }

  static sendEmail(String body, String subject) async{
    String mail = "imran.nkl1431nkl@gmail.com";
    final Email email = Email(
      body: body,
      subject: subject,
      recipients: [mail],
      isHTML: false,
    );
    await FlutterEmailSender.send(email).onError((error, stackTrace) {
      print(error.toString());
    });
  }
}