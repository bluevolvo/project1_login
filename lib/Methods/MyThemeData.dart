import 'package:flutter/material.dart';

 myThemeData(){
   return ThemeData(
       appBarTheme: AppBarTheme(color: Color(0xFF8FB8DE)),
       fontFamily: "Opensans",
       primaryColor: Color(0xFF8FB8DE),
       accentColor: Colors.white,
       scaffoldBackgroundColor: Color(0xFF8FB8DE),
       inputDecorationTheme: InputDecorationTheme(
         enabledBorder: OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(10)),
             borderSide: (BorderSide(color: Colors.black))),
         focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(10)),
             borderSide: (BorderSide(color: Colors.black))),
         hintStyle: TextStyle(fontFamily: "Opensans"),
       ),
       textButtonTheme: TextButtonThemeData(
           style: ButtonStyle(
               backgroundColor:
               MaterialStateProperty.all<Color>(Color(0xFF8FB8DE)))));
 }