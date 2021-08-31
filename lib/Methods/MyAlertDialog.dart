import 'package:flutter/material.dart';

// method alert dialog accepting a context
myAlertDialogs(context) {
  // for alert dialog to work it requires a showDialog which will return the dialog itself
  showDialog(
      context: context,
      builder: (BuildContext context) {
        // dialog aceepts title, content and action(s)
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
                child: Text("OK", style: TextStyle(color: Colors.white)))
          ],
        );
      },
      // meaning user can't tap outside the alert dialog to make it disappear
      barrierDismissible: false);
}
