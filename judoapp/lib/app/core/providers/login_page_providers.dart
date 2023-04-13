import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPageProvider with ChangeNotifier {
  static TextEditingController controllerUser = TextEditingController();

  static TextEditingController controllerPassword = TextEditingController();

  bool obscureText = true;

  void changeObscureText() {
    obscureText = !obscureText;
    notifyListeners();
  }
}
