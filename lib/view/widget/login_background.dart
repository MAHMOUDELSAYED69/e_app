import 'package:e_app/core/constant/color.dart';
import 'package:e_app/core/constant/images.dart';
import 'package:e_app/view/widget/custom_icon_button.dart';
import 'package:flutter/material.dart';

class LoginBackground extends StatelessWidget {
  const LoginBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const Spacer(),
          Container(
            height: 590,
            width: double.infinity,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60),
                    topRight: Radius.circular(60)),
                color: kWhite),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 8),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Divider(
                      color: kBlue,
                      thickness: 2,
                      indent: 35,
                      endIndent: 10,
                    )),
                    Text(
                      "OR",
                      style: TextStyle(fontSize: 15, color: kBlue),
                    ),
                    Expanded(
                        child: Divider(
                      color: kBlue,
                      thickness: 2,
                      indent: 10,
                      endIndent: 35,
                    )),
                  ],
                ),
                const Spacer(
                  flex: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(flex: 2),
                    CustomIconButton(ontap: () {}, image: kFacebookLogo),
                    const Spacer(),
                    CustomIconButton(ontap: () {}, image: kAppleLogo),
                    const Spacer(),
                    CustomIconButton(ontap: () {}, image: kGoogleLogo),
                    const Spacer(flex: 2),
                  ],
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        ],
      );
    
  }
}
