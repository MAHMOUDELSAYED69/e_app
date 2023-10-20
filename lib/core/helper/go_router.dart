import 'package:e_app/view/screen/help.dart';
import 'package:e_app/view/screen/home_screen/Home_Screen.dart';
import 'package:e_app/view/screen/hometest.dart';
import 'package:e_app/view/screen/login.dart';
import 'package:e_app/view/screen/otp.dart';
import 'package:e_app/view/screen/prodect_info.dart';
import 'package:e_app/view/screen/splash.dart';
import 'package:flutter/material.dart';

class GoRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case '/login':
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
