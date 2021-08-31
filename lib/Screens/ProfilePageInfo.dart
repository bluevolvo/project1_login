import 'package:flutter/material.dart';
import 'package:project1_login/Widgets/ProfilePageEntry.dart';
import 'package:project1_login/Models/PasswordManagerInfoModelForProvider.dart';
import 'package:provider/provider.dart';

class ProfilePageInfo extends StatelessWidget {
  //converted to stateless widget because of provider
  // also keeping provider.of in it's full state in this section because I'm not sure if it's right to use consumer over a scaffold

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(
              "images/${(Provider.of<InformationModelForProvider>(context, listen: false).newTitle)}.jpg"),
          radius: 60,
        ),
        ProfilePageEntry(
          entryType: "Title",
          title:
              Provider.of<InformationModelForProvider>(context, listen: false)
                  .newTitle,
          subtitle: "Account name",
          icon: Icons.perm_identity_outlined,
        ),
        ProfilePageEntry(
            entryType: "Email",
            icon: Icons.email_outlined,
            title:
                Provider.of<InformationModelForProvider>(context, listen: false)
                    .newEmail,
            subtitle: "Account email"),
        ProfilePageEntry(
            entryType: "Password",
            icon: Icons.password,
            title:
                Provider.of<InformationModelForProvider>(context, listen: false)
                    .newPassword,
            subtitle: "Account password")
      ],
    )));
  }
}
