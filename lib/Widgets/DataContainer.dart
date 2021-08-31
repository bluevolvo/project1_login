import 'package:flutter/material.dart';

// the data container that shows the information
class DataContainer extends StatelessWidget {
  final String image;
  final String title;
  final String email;
  final Function() onTap;
  final Function() onPressDel;

  DataContainer(
      {required this.title,
      required this.email,
      required this.image,
      required this.onTap,
      required this.onPressDel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(image),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          email,
                          style:
                              TextStyle(fontSize: 15, fontFamily: "Montserrat"),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                        onPressed: onPressDel,
                        icon: Icon(
                          Icons.delete_outline_outlined,
                          size: 30,
                          color: Color(0xFF8FB8DE),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
