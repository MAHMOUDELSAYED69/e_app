import 'package:e_app/core/constant/image.dart';
import 'package:e_app/view/widget/login_background.dart';
import 'package:e_app/view/widget/login_center_input.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(kBackgroundLoginPage),
          const LoginBackground(),
          const CenterInput(),
        ],
      ),
    );
  }
}
