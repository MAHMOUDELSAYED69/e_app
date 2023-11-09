import 'package:e_app/core/constant/color.dart';
import 'package:e_app/core/helper/responsive.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(gradient: kBackgroundScreen),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.notifications_off_rounded,
                size: 100,
                color: kWhite,
              ),
              SizeVertical(value: 5),
              Text(
                "Notifications",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 36,
                  fontFamily: 'Inter',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
