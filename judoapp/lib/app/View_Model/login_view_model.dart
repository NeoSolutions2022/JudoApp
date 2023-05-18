import 'package:flutter/material.dart';
import 'package:judoapp/app/core/Singletons/singletons.dart';
import 'package:judoapp/app/core/utils/locator.dart';

class LoginViewModel with ChangeNotifier {
  final TextEditingController controllerUser =
      locator<InitialController>().usrLogin;

  final TextEditingController controllerPassword =
      locator<InitialController>().usrSecret;

  final GlobalKey _loginGlobalKey = locator<InitialController>().loginGlobalKey;

  bool obscureText = true;

  GlobalKey get loginGlobalKey => _loginGlobalKey;

  void changeObscureText() {
    obscureText = !obscureText;
    notifyListeners();
  }
}
