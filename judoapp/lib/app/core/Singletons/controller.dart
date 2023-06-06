import 'package:flutter/material.dart';

class AppControlller {
  final TextEditingController _usrLogin = TextEditingController();

  final TextEditingController _usrSecret = TextEditingController();

  final GlobalKey _loginGlobalKey = GlobalKey();

  TextEditingController get usrLogin => _usrLogin;

  TextEditingController get usrSecret => _usrSecret;

  GlobalKey get loginGlobalKey => _loginGlobalKey;
}
