import 'package:flutter/foundation.dart';
import 'package:yasi_app/models/user.dart';

class UserProvider with ChangeNotifier {
  String _username = '';

  String get username => _username;

  void setUserName(String username) {
    _username = username;
    notifyListeners();
  }

  // Add user data here
  User _user = User(
      id: 0,
      username: '',
      password: '',
      email: '',
      fullname: '',
      phone: '',
      updated_at: '',
      created_at: '');

  User get user => _user;

  void setUser(User user) {
    _user = user;
    notifyListeners();
  }
}
