import 'package:e_app/core/constant/color.dart';
import 'package:e_app/core/constant/route.dart';
import 'package:e_app/core/helper/custom_print.dart';
import 'package:e_app/core/helper/scaffold_snakbar.dart';
import 'package:e_app/cubits/auth_cubit/auth_cubit.dart';
import 'package:e_app/view/widget/custom_button.dart';
import 'package:e_app/view/widget/otp_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    String? fieldA, fieldB, fieldC, fieldD;
    GlobalKey<FormState> formKey = GlobalKey();
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is OtpSccess) {
          scaffoldSnackBar(context, "Sccess");
          Navigator.pushReplacementNamed(context, kHelp);
        } else if (state is OtpFailure) {
          scaffoldSnackBar(context, "Invalid Number!");
        }
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(gradient: kBackgroundScreen),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Verify Phone',
                style: TextStyle(
                  color: kWhite,
                  fontSize: 30,
                  fontFamily: 'Inter',
                  height: 0,
                ),
              ),
              const SizedBox(height: 30),
              //! const SizeBoxeHorsentel(value: 5),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: formKey,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OtpField(
                        onSaved: (data) {
                          fieldA = data;
                        },
                      ),
                      OtpField(
                        onSaved: (data) {
                          fieldB = data;
                        },
                      ),
                      OtpField(
                        onSaved: (data) {
                          fieldC = data;
                        },
                      ),
                      OtpField(
                        onSaved: (data) {
                          fieldD = data;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
              //!  const SizeBoxeHorsentel(value: 1),
              InkWell(
                onTap: () {},
                child: const Text(
                  'Resend Code',
                  style: TextStyle(
                    color: kBlue,
                    fontSize: 18,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              //!  const SizeBoxeHorsentel(value: 2),
              CustomButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      String? fieldSubmitted =
                          fieldA! + fieldB! + fieldC! + fieldD!;
                      kPrint(fieldSubmitted);
                      kPrint("phoneNum");
                      BlocProvider.of<AuthCubit>(context).verifyUser(
                          fieldSubmitted: fieldSubmitted,
                          phoneNum: "01061172139");
                    }
                  },
                  title: "Verify"),
            ],
          ),
        ),
      ),
    );
  }
}
