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

  bool _loading = false;

  GlobalKey get loginGlobalKey => _loginGlobalKey;

  void changeObscureText() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void setLoading(bool loading) async {
    loading = _loading;
    notifyListeners();
  }
}
