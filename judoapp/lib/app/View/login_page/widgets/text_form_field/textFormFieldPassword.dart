import 'package:flutter/material.dart';

import 'package:judoapp/app/View_Model/View_Model.dart';

import 'package:provider/provider.dart';

class TextFormFieldPassword extends StatelessWidget {
  const TextFormFieldPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (context, value, child) => TextFormField(
        controller: value.controllerPassword,
        obscureText: value.obscureText,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: () => value.changeObscureText(),
            child: value.obscureText
                ? const Icon(
                    Icons.visibility,
                    color: Colors.grey,
                  )
                : const Icon(
                    Icons.visibility_off,
                    color: Colors.grey,
                  ),
          ),
          labelText: 'Senha',
          labelStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
