import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_app/core/constant/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex = 1;
  List<IconData> iconList = const [
    Icons.login,
    Icons.favorite,
    Icons.notifications_on_outlined,
    Icons.settings,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.canPop(context);
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Container(
        decoration: const BoxDecoration(gradient: kBackgroundScreen),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kBlue,
        child: const Icon(Icons.home),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        // shadow:
        //     const Shadow(color: kGrey, blurRadius: 30, offset: Offset(2, -2)),
        icons: iconList,
        elevation: 100,

        inactiveColor: kGrey,
        activeColor: kBlue,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        height: 64,
        iconSize: 28,
        leftCornerRadius: 24,
        rightCornerRadius: 24,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
