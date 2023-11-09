import 'package:e_app/view/screen/help.dart';
import 'package:e_app/view/screen/home_page.dart';
import 'package:e_app/view/screen/login.dart';
import 'package:e_app/view/screen/otp.dart';
import 'package:e_app/view/screen/product_screen/product_view.dart';
import 'package:e_app/view/screen/splash.dart';
import 'package:flutter/material.dart';
import '../constant/route.dart';

class GoRouter {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case kInti:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case kLogin:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case kOtp:
        return MaterialPageRoute(builder: (context) => const OtpPage());
      case kHelp:
        return MaterialPageRoute(builder: (context) =>   HelpPage());
      case kHome:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case kProduct:
        return MaterialPageRoute(builder: (context) => const ProdectPage());
      default:
        return null;
    }
  }
}
