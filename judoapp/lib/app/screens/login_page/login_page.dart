import 'package:flutter/material.dart';
import 'package:judoapp/app/core/providers/login_page_providers.dart';

import './../login_page/widgets/text_form_field/textFormFieldUser.dart';
import 'widgets/text_form_field/textFormFieldPassword.dart';
import 'widgets/text_form_field/textFormFields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Entrar',
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextFormFields(),
            ElevatedButton(
              onPressed: () {
                print(LoginPageProvider.controllerUser.text);
                print(LoginPageProvider.controllerPassword.text);
              },
              child: Text('oi'),
            ),
          ],
        ),
      ),
    );
  }
}
