import 'package:e_app/core/constant/color.dart';
import 'package:e_app/core/constant/image.dart';
import 'package:e_app/core/helper/responsive.dart';
import 'package:e_app/view/widget/custom_icon_button.dart';
import 'package:flutter/material.dart';

// class LoginBackground extends StatelessWidget {
//   const LoginBackground({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//         children: [
//           const Spacer(),
//           Container(
//             height: SizeConfig().,
//             width: double.infinity,
//             decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(60),
//                     topRight: Radius.circular(60)),
//                 color: kWhite),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Spacer(flex: 8),
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,

class LoginBackground extends StatelessWidget {
  const LoginBackground({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: SizeConfig.defaultSize! * 35,
      child: Container(
        height: SizeConfig.screenHeight,
        width: SizeConfig.screenWidth,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              children: [
                Expanded(
                    child: Divider(
                  color: kBlue,
                  thickness: 2,
                  indent: 30,
                  endIndent: 6,
                )),
                SizeBoxeHorsental(
                  value: 1,
                ),
                Text(
                  "OR",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff639fd7),
                  ),
                ),
                SizeBoxeHorsental(
                  value: 1,
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
            const SizeBoxeVirtcal(value: 7),
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
            const SizeBoxeVirtcal(value: 10)
          ],
        ),
      ),
    );
  }
}
