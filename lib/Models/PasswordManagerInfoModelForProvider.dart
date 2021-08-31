import 'package:flutter/material.dart';
import 'PasswordManagerInfoModel.dart';
import "dart:collection";
// foundation.dart can also be used

class InformationModelForProvider extends ChangeNotifier {
  List<PasswordManagerInfoModel> _passwordInfoParameterList = [];

  // i place this i the data container as updated info.
  //This shows in the Profile page info screen
  late String newTitle;
  late String newEmail;
  late String newPassword;

  // This acts as a window to my list. I can see it but cant touch it.
  // this way I don't mistakenly access the _passwordInfoParameterList
  // and will use my addInformation method.

  UnmodifiableListView<PasswordManagerInfoModel> get parameterList {
    return UnmodifiableListView(_passwordInfoParameterList);
  }

  // method to be able to add information to my list using provider
  void addInformationToPasswordManagerInfo(String title, String email,
      String password) {
    final addInfo = PasswordManagerInfoModel(
        title: title, email: email, password: password);

    _passwordInfoParameterList.add(addInfo);
    notifyListeners();
  }

// update PasswordManagerInfo takes a string of the parameters of the model so
// it is able to easily place it in the right location of the data container.
// I wonder if there's an easier way.
  void updatePasswordManagerInfo(String title,
      String email,
      String password,) {
    newTitle = title;
    newEmail = email;
    newPassword = password;
    notifyListeners();
  }

// For the delete method to work, it accepts an argument of type PasswordManagerInfoModel.
  // This is so that it takes in the index of the current model iteration in use in
  // the main page(the one the user has tapped on)
  void deletePasswordManagerInfo(PasswordManagerInfoModel infoModel) {
    _passwordInfoParameterList.remove(infoModel);
    notifyListeners();
  }
}
