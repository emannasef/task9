import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

void launchUrl(String url) async {
  // if (await canLaunch(url)) {
  //   await launch(
  //     url,
  //     forceSafariVC: false,
  //     forceWebView: false,
  //     headers: <String, String>{'my_header_key': 'my_header_value'},
  //   );
  // } else {
  //   throw 'Could not launch $url';
  // }
}

pushToScreen(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return widget;
  }));
}

popScreen(BuildContext context) {
  Navigator.pop(context);
}
