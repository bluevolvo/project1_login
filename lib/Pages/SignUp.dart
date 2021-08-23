import 'package:flutter/material.dart';
import 'package:project1_login/Pages/MainPage.dart';
import 'package:project1_login/Classes/ButtonClass.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              "Register Here",
              style: TextStyle(
                fontSize: 32,
                //  fontFamily: FONT,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              "We can't wait to work with you",
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
              // style: TextStyle(fontFamily: FONT),
              decoration: InputDecoration(
                  hintText: "Enter Email",
                  prefixIcon: Icon(Icons.email_outlined)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: TextField(
              obscureText: true,
              //   style: TextStyle(fontFamily: FONT),
              decoration: InputDecoration(
                  hintText: "Enter Password", prefixIcon: Icon(Icons.password)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Button(
                color: Colors.white,
                text: "Sign Up",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return MainPage();
                  }));
                }),
          )
        ],
      ),
    );
  }
}
