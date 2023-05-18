import 'package:flutter/material.dart';
import 'package:judoapp/app/View/login_page/widgets/ElevatedButton/elevated_button_login.dart';

import 'package:judoapp/app/View_Model/View_Model.dart';

import 'widgets/text_form_field/textFormFields.dart';

import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Provider.of<LoginViewModel>(context).loginGlobalKey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            TextFormFields(),
            SizedBox(height: 20),
            CustomElevatedButton(),
          ],
        ),
      ),
    );
  }
}
