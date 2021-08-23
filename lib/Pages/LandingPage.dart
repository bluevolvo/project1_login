import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1_login/Classes/ButtonClass.dart';
import 'package:project1_login/Pages/SignIn.dart';
import 'package:project1_login/Pages/SignUp.dart';



class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(flex: 4, child: Image.asset("images/march.png")),
          Center(
            child: Text(
              "VAULT",
              style: TextStyle(color: Colors.black, fontSize: 35),
            ),
          ),
          Center(
            child: Text(
              "Your secret is safe with us",
              style: TextStyle(
                  color: Colors.black, fontFamily: "Montserrat", fontSize: 15),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
            child: Button(
              color: Colors.white,
              text: "Sign Up",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignUp();
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 15),
            child: Button(
                color: Colors.white,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SignIn();
                  }));
                },
                text: "Sign In"),
          ),
        ],
      ),
    ));
  }
}
