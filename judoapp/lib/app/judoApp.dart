import 'package:flutter/material.dart';

import 'package:judoapp/app/config/style/customStyle.dart';
import 'package:judoapp/app/View/login_page/login_page.dart';

class JudoApp extends StatelessWidget {
  const JudoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Judo RJ',
      theme: Style.light,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
      },
    );
  }
}
