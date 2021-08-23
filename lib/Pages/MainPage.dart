import 'package:flutter/material.dart';
import 'package:project1_login/Methods/MyAlertDialog.dart';
import 'package:project1_login/Pages/ProfilePageInfo.dart';
import 'package:project1_login/Classes/DataContainer.dart';
import 'package:project1_login/Models/Parameters.dart';
import 'package:project1_login/Methods/ModalSheetCustomization.dart';


class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Parameters> parameterList = [];
  TextEditingController title = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    title.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

  String image(String image) {
    return image = "images/$image.jpg";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
          ),
          onPressed: () {
            modalSheetMethod(context, title, email, password, () {
              setState(() {
                if (title.text.isNotEmpty &&
                    email.text.isNotEmpty &&
                    password.text.isNotEmpty) {
                  Navigator.pop(context);
                  parameterList.add(Parameters(
                    title: title.text,
                    email: email.text,
                    password: password.text,
                  ));
                  title.clear();
                  email.clear();
                  password.clear();
                } else {
                  myAlertDialogs(context);
                }
              });
            });
          }),
      appBar: AppBar(
        centerTitle: true,
        title: (Text(
          "Welcome Back!",
          style: TextStyle(color: Colors.white),
        )),
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: parameterList.length,
          itemBuilder: (context, index) {
            return DataContainer(
              title: parameterList[index].title,
              email: parameterList[index].email,
              image: image(parameterList[index].title),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfilePageInfo(
                    title: parameterList[index].title,
                    password: parameterList[index].password,
                    email: parameterList[index].email,
                    image: image(parameterList[index].title),
                  );
                }));
              },
            );
          }),
    );
  }
}
