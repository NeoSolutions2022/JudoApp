import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:judoapp/app/core/utils/locator.dart';
import 'package:judoapp/app/judoApp.dart';
import 'package:provider/provider.dart';

import 'app/View_Model/View_Model.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.transparent,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark));

  setupLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginViewModel>(
          create: (_) => LoginViewModel(),
        )
      ],
      child: const JudoApp(),
    ),
  );
}
