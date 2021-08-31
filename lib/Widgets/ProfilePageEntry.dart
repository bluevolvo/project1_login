import 'package:flutter/material.dart';

// Container that is meant to give more details to the details entered. This is used in profile page info

class ProfilePageEntry extends StatelessWidget {
  final String entryType;
  final IconData icon;
  final String subtitle;
  final String title;

  ProfilePageEntry(
      {required this.entryType,
      required this.icon,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            entryType,
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          ListTile(
              leading: Icon(
                icon,
                size: 35,
              ),
              tileColor: Colors.white,
              subtitle: Text(
                subtitle,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[900],
                    fontFamily: "Montserrat"),
              ),
              title: Text(
                title,
                style: TextStyle(
                  color: Color(0xFF8FB8DE),
                  fontSize: 20,
                  // fontFamily: FONT
                ),
              )),
        ],
      ),
    );
  }
}
