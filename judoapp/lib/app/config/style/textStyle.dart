import 'package:flutter/material.dart';

extension CustomTextStyle on TextTheme {
  TextStyle get alertDialogStyle {
    return const TextStyle(
        fontWeight: FontWeight.bold, color: Colors.black, fontSize: 20);
  }
}
