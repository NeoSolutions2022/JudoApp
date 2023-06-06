import 'package:flutter/material.dart';
import 'package:judoapp/app/core/Singletons/singletons.dart';
import 'package:judoapp/app/core/componets/alertDialog.dart';
import 'package:judoapp/app/core/utils/locator.dart';

class LoginViewModel with ChangeNotifier {
  final TextEditingController controllerUser =
      locator<AppControlller>().usrLogin;

  final TextEditingController controllerPassword =
      locator<AppControlller>().usrSecret;

  final GlobalKey _loginGlobalKey = locator<AppControlller>().loginGlobalKey;

  bool obscureText = true;

  bool _loading = false;

  GlobalKey get loginGlobalKey => _loginGlobalKey;

  bool get loading => _loading;

  void changeObscureText() {
    obscureText = !obscureText;
    notifyListeners();
  }

  void setLoading(bool loading) async {
    loading = _loading;
    notifyListeners();
  }

  void dismissKeyboard() => FocusManager.instance.primaryFocus?.unfocus();

  loginTry() async {
    if (controllerUser.text.isEmpty || controllerPassword.text.isEmpty) {
      CustomAlertDialog.dialogLoginBuilder(
          textAlertDialog: "Usuário e senha são obrigatórios");
    } else {
      setLoading(true);
      //Await login
      setLoading(false);
    }
  }
}
