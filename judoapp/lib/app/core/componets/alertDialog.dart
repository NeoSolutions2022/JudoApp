import 'package:flutter/material.dart';

import 'package:judoapp/app/config/style/style.dart';

import '../Singletons/singletons.dart';
import '../utils/locator.dart';

class CustomAlertDialog {
  static dialogLoginBuilder(
      {String textAlertDialog = 'AlertDialog sem texto'}) {
    showDialog(
      context: locator<AppControlller>().loginGlobalKey.currentContext!,
      builder: (context) => AlertDialog(
        alignment: Alignment.center,
        content: Text(
          textAlertDialog,
          style: Theme.of(context).textTheme.alertDialogStyle,
        ),
        actions: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Ok',
                style: Theme.of(context).textTheme.alertDialogStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
