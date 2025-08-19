import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLaunch extends ChangeNotifier{


Future<void> _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);   // string ko Uri me convert kiya
  if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');  // agar link open na ho
  }
}




  
}