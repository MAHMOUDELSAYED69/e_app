import 'package:e_app/core/constant/image.dart';
import 'package:e_app/core/constant/route.dart';
import 'package:flutter/material.dart';

import '../../core/helper/responsive.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation? animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    animation = Tween<double>(begin: .2, end: 1).animate(animationController!)
      ..addListener(() {
        setState(() {});
      });
    animationController?.repeat(reverse: true);
    GetToNewScreen();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Stack(
        children: [
          Image.asset(kBackGrawendSplash),
          AnimatedBuilder(
            animation: animation!,
            builder: (context, _) => Opacity(
              opacity: animation?.value,
              child: Center(
                child: Image.asset(kLogo),
              ),
            ),
          )
        ],
      ),
    );
  }

  void GetToNewScreen() {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () {
        Navigator.pushReplacementNamed(
          context,
          kLogin,
        );
      },
    );
  }
}

class Phone extends StatelessWidget {
  const Phone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp();
  }
}