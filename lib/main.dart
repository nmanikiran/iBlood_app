import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iblood_app/home_page.dart';

void main() async {
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // SystemChrome.setSystemUIOverlayStyle(
  //     SystemUiOverlayStyle(statusBarColor: Colors.red));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iBlood',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0XFFD61B1F),
        fontFamily: 'Montserrat'
      ),
      home: HomePage(title: 'Blood Requests'),
    );
  }
}
