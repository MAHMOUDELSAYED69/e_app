
import 'package:e_app/core/helper/go_router.dart';
import 'package:e_app/view/widget/login_background.dart';
import 'package:e_app/view/widget/login_center_input.dart';
import 'package:flutter/material.dart';

import '../view/screen/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: "/",
      // onGenerateRoute: GoRouter.generateRoute,
      home: LoginPage(),
    );
  }
} 