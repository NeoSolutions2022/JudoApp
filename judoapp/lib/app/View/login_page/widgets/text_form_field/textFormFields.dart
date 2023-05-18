import 'package:flutter/material.dart';

import 'textFormFieldPassword.dart';
import 'textFormFieldUser.dart';

class TextFormFields extends StatelessWidget {
  const TextFormFields({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextFormFieldUser(),
        SizedBox(
          height: 20,
        ),
        TextFormFieldPassword(),
      ],
    );
  }
}
