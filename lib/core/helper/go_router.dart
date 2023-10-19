import 'package:e_app/view/screen/help.dart';
import 'package:e_app/view/screen/home.dart';
import 'package:e_app/view/screen/login.dart';
import 'package:e_app/view/screen/otp.dart';
import 'package:e_app/view/screen/prodect_info.dart';
import 'package:flutter/material.dart';


class GoRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case '/otp':
        return MaterialPageRoute(builder: (context) => const OtpPage());
      case '/help':
        return MaterialPageRoute(builder: (context) => const HelpPage());
      case '/home':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/prodect':
        return MaterialPageRoute(builder: (context) => const ProdectInfoPage());
      default:
        return null;
    }
  }
}
