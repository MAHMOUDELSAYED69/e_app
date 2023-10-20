import 'package:e_app/core/helper/responsive.dart';
import 'package:flutter/material.dart';

class CustemAllprodects extends StatelessWidget {
  const CustemAllprodects({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      child: Container(
        width: SizeConfig.defaultSize! * 13,
        decoration: ShapeDecoration(
          color: Color(0xFF0062BD),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3F000000),
              blurRadius: 8,
              offset: Offset(2, 2),
              spreadRadius: 4,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Container(
                width: 40,
                height: 40,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 8,
                      offset: Offset(2, 2),
                      spreadRadius: 4,
                    ),
                  ],
                ),
                child: CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage(image)),
         
              ),
            ),
            const SizeBoxeHorsental(value: 1),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
