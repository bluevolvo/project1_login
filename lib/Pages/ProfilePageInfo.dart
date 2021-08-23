import 'package:flutter/material.dart';


import 'package:project1_login/Classes/ProfilePageEntry.dart';

class ProfilePageInfo extends StatefulWidget {
  final String title;
  final String email;
  final String password;
  final String image;

  ProfilePageInfo(
      {required this.title,
      required this.email,
      required this.password,
      required this.image});

  @override
  _ProfilePageInfoState createState() => _ProfilePageInfoState();
}

class _ProfilePageInfoState extends State<ProfilePageInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(widget.image.toString()),
              radius: 60,
            ),

            ProfilePageEntry(
              entryType: "Title",
              title: widget.title,
              subtitle: "Account name",
              icon: Icons.perm_identity_outlined,
            ),

            ProfilePageEntry(
                entryType: "Email",
                icon: Icons.email_outlined,
                title: widget.email,
                subtitle: "Account email"),

            ProfilePageEntry(
                entryType: "Password",
                icon: Icons.password,
                title: widget.password,
                subtitle: "Account password")

          ],
        )));
  }
}

