import 'package:flutter/material.dart';
import 'package:judoapp/app/judoApp.dart';
import 'package:provider/provider.dart';

import 'app/core/providers/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<LoginPageProvider>(
          create: (_) => LoginPageProvider(),
        )
      ],
      child: const JudoApp(),
    ),
  );
}
