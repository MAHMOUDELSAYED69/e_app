import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_app/core/constant/color.dart';
import 'package:e_app/view/screen/bottom_navigation_bar/favorite.dart';
import 'package:e_app/view/screen/bottom_navigation_bar/logout.dart';
import 'package:e_app/view/screen/bottom_navigation_bar/notfication.dart';
import 'package:e_app/view/screen/bottom_navigation_bar/setting.dart';
import 'package:flutter/material.dart';

import 'bottom_navigation_bar/home_page_2.dart';

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
  final List<Widget> classSwitch = const [
    LogOutPage(),
    FavoritePage(),
    NotificationPage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: kBackgroundScreen),
        child: IndexedStack(
          index: _bottomNavIndex,
          children: classSwitch,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kBlue,
        child: const Icon(Icons.home),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const HomePage2()));
        },
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
        onTap: (index) {
          setState(() => _bottomNavIndex = index);
        },
        //other params
      ),
    );
  }
}
