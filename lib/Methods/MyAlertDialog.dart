import 'package:flutter/material.dart';

 myAlertDialogs(context){
   showDialog(
       context: context,
       builder: (BuildContext context) {
         return AlertDialog(
           title: Text(
             "Fill All Fields",
             style: TextStyle(
               color: Color(0xFF8FB8DE),
             ),
           ),
           content: Text("Please fill in the empty fields"),
           actions: [
             TextButton(
                 onPressed: () {
                   Navigator.pop(context);
                 },
                 child: Text("OK",
                     style: TextStyle(color: Colors.white)))
           ],
         );
       },
       barrierDismissible: false);
 }