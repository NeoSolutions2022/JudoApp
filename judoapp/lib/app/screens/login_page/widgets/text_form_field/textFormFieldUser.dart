import 'package:flutter/material.dart';

import '../../../../core/providers/provider.dart';

class TextFormFieldUser extends StatelessWidget {
  const TextFormFieldUser({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: LoginPageProvider.controllerUser,
      decoration: const InputDecoration(
        labelText: 'Usuario',
        labelStyle: TextStyle(
          color: Colors.grey,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 1,
          ),
        ),
      ),
    );
  }
}
