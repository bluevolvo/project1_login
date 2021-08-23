import 'package:flutter/material.dart';
import 'package:project1_login/Methods/MyThemeData.dart';
import 'package:project1_login/Pages/LandingPage.dart';
import 'package:project1_login/Pages/MainPage.dart';

void main() => (runApp(First()));

class First extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myThemeData(),
      home: LandingPage(),
    );
  }
}
