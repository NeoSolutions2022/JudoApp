import 'package:flutter/material.dart';

import 'package:judoapp/app/View_Model/View_Model.dart';

import 'package:provider/provider.dart';

class TextFormFieldUser extends StatelessWidget {
  const TextFormFieldUser({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LoginViewModel>(context);

    return TextFormField(
      controller: controller.controllerUser,
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
