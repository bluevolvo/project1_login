import 'package:flutter/material.dart';
import 'package:project1_login/Methods/MyAlertDialog.dart';
import 'package:project1_login/Models/PasswordManagerInfoModelForProvider.dart';
import 'package:project1_login/Screens/ProfilePageInfo.dart';
import 'package:project1_login/Widgets/DataContainer.dart';
import 'package:project1_login/Methods/ModalSheetCustomization.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController title = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  // disposing of the text editing controllers to be added to the modalSheet method
  void dispose() {
    title.dispose();
    email.dispose();
    password.dispose();
    super.dispose();
  }

// a method for the images. Since it is local and I want to match the image with the right
  // info, it will take the title of the info as a string.
  String image(String image) {
    return image = "images/$image.jpg";
  }

  @override
  Widget build(BuildContext context) {
    //Consumer widget so i don't repeat "Provider.of<Datatype>(context, listen:false)"
    // Not sure if it is right to wrap around scaffold though
    return Consumer<InformationModelForProvider>(
        builder: (context, information, child) {
      return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.add,
            ),
            onPressed: () {
              //method for modal sheet. It takes context and TextEditing controllers and places the ".text" property
              // of those controllers into the addInformationToPasswordManagerInfo method so it can be added to a list
              modalSheetMethod(context, title, email, password, () {
                if (title.text.isNotEmpty &&
                    email.text.isNotEmpty &&
                    password.text.isNotEmpty) {
                  information.addInformationToPasswordManagerInfo(
                      title.text, email.text, password.text);
                  Navigator.pop(context);
                  title.clear();
                  email.clear();
                  password.clear();
                } else {
                  //Alert dialog to tell user to fill all fields. Visit myAlertDialogs.
                  myAlertDialogs(context);
                }
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
            itemCount: information.parameterList.length,
            itemBuilder: (context, index) {
              //Data container receives info and arranges it.Visit DataContainer
              return DataContainer(
                title: information.parameterList[index].title,
                email: information.parameterList[index].email,
                image: image(information.parameterList[index].title),
                onTap: () {
                  // upon tapping, data is updated in the update method. Visit PasswordManagerInfoModelForProvider
                  information.updatePasswordManagerInfo(
                    information.parameterList[index].title,
                    information.parameterList[index].email,
                    information.parameterList[index].password,
                  );
                  //Navigation to the next page
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfilePageInfo();
                  }));
                },
                //delete method
                onPressDel: () {
                  information.deletePasswordManagerInfo(
                      information.parameterList[index]);
                },
              );
            }),
      );
    });
  }
}
