import 'package:flutter/material.dart';
import 'package:project1_login/Methods/MyThemeData.dart';
import 'package:project1_login/Models/PasswordManagerInfoModelForProvider.dart';
import 'package:project1_login/Screens/LandingPage.dart';
import 'package:provider/provider.dart';

void main() => (runApp(VaultApp()));

class VaultApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // change notifier provider with my new model
    return ChangeNotifierProvider(
      create: (context) {
        return InformationModelForProvider();
      },
      child: MaterialApp(
        theme: myThemeData(),
        home: LandingPage(),
      ),
    );
  }
}
