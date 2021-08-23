import 'package:flutter/material.dart';
import 'package:project1_login/Pages/MainPage.dart';
import 'package:project1_login/Classes/ButtonClass.dart';
import 'package:project1_login/Pages/LandingPage.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return LandingPage();
            }));
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              "Login Here",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              "Glad you came back",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              //    style: TextStyle(fontFamily: FONT),
              decoration: InputDecoration(
                  hintText: "Enter Email",
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter Password", prefixIcon: Icon(Icons.password)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Button(
              text: "Sign In",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainPage();
                }));
              },
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
