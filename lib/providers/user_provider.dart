import 'package:flutter/material.dart';
import '../models/userModel.dart';

class UserProvider extends ChangeNotifier {
  UserProfile _user = UserProfile(
      name: "", email: "", role: '', age: 0, gender: '', address: '');

  UserProfile get user => _user;

  void setUser(dynamic user) {
    _user = UserProfile.fromJson(user);
    notifyListeners();
  }

  void setUserFromModel(UserProfile user) {
    _user = user;
    notifyListeners();
  }
}
