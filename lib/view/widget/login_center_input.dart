import 'package:e_app/core/constant/color.dart';
import 'package:e_app/core/helper/custom_print.dart';
import 'package:e_app/view/widget/custom_button.dart';
import 'package:e_app/view/widget/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CenterInput extends StatelessWidget {
  const CenterInput({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    String? fullName;
    String? phoneNum;
    return Align(
      alignment: Alignment.center,
      child: Form(
        key: formKey,
        child: Container(
          alignment: Alignment.center,
          //!
          width: 372,
          height: 350,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 10,
                  offset: Offset(2, 5),
                  spreadRadius: 4,
                ),
              ],
              color: kWhite,
              borderRadius: BorderRadius.all(Radius.circular(40))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 10),
              const Text("Welcome",
                  style: TextStyle(fontSize: 30, color: kBlack)),
              //!
              const SizedBox(height: 10),
              const Divider(
                color: kBlue,
                //!
                thickness: 4,
                endIndent: 120,
                indent: 120,
              ),
              const SizedBox(height: 35),
              CustomTextFormField(
                onSaved: (data) {
                  fullName = data;
                },
                width: 280,
                label: "Enter your Full Name",
              ),
              const SizedBox(height: 30),
              CustomTextFormField(
                onSaved: (data) {
                  phoneNum = data;
                },
                //!
                width: 280,
                label: "Enter your Phone Number",
              ),
              const SizedBox(height: 30),
              CustomButton(
                title: "Login",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    kPrint("fullName : $fullName & phoneNum : $phoneNum");
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
