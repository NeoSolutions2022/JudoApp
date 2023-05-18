import 'package:flutter/material.dart';
import 'package:judoapp/app/config/style/style.dart';

import '../../../../View_Model/View_Model.dart';

import 'package:provider/provider.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginViewModel>(context, listen: false);

    return SizedBox(
      width: double.infinity,
      height: 42,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
        onPressed: () {
          loginProvider.dismissKeyboard();
          loginProvider.loginTry();
        },
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Consumer<LoginViewModel>(
            builder: (context, provider, child) => provider.loading
                ? const SizedBox(
                    height: 19,
                    width: 19,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  )
                : Text('Entrar',
                    style: Theme.of(context).textTheme.widgetsForegroundText),
          ),
        ),
      ),
    );
  }
}
