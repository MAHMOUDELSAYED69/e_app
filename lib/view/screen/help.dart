import 'package:e_app/core/constant/color.dart';
import 'package:e_app/core/constant/route.dart';
import 'package:e_app/view/widget/custom_button.dart';
import 'package:e_app/view/widget/custom_help_box.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(gradient: kBackgroundScreen),
          child: Column(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 65, bottom: 50),
                    alignment: Alignment.center,
                    child: const Text(
                      "Help",
                      style: TextStyle(fontSize: 32, color: kWhite),
                    ),
                  ),
                  const HelpBox(
                    title: "Account",
                    content:
                        "You need to create an account to use the application but you can delete your account any time you want",
                  ),
                  const HelpBox(
                    title: "Data",
                    content:
                        "You need to create an account to use the application but you can delete your account any time you want",
                  ),
                  const HelpBox(
                    title: "content",
                    content:
                        "You need to create an account to use the application but you can delete your account any time you want",
                  ),
                  const HelpBox(
                    title: "Fees",
                    content:
                        "You need to create an account to use the application but you can delete your account any time you want",
                  ),
                  const SizedBox(height: 315),
                  CustomButton(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, kHome);
                    },
                    title: "Continue",
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
