import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/common/global_colors.dart';
import 'package:mobile_task/common/widgets/custom_buttons';
import 'package:mobile_task/common/widgets/custom_text_field.dart';
import 'package:mobile_task/feat/register/verify_mail_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xffEFA058), Color(0xffEF5858)],
    ).createShader(Rect.fromLTWH(70, 300, 200.0, 70.0));
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalColors.bgColor,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Create an account',
                  style: GoogleFonts.montserrat(
                      fontSize: 29,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              Gap(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'First name',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: GlobalColors.whiteColor),
                        ),
                        Gap(6),
                        CustomTextField(
                          fillColor: GlobalColors.textFieldFillColor,
                          hintText: 'First name',
                          inputType: TextInputType.name,
                        ),
                      ],
                    ),
                  ),
                  Gap(10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Last name',
                          style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: GlobalColors.whiteColor),
                        ),
                        Gap(6),
                        CustomTextField(
                          fillColor: GlobalColors.textFieldFillColor,
                          hintText: 'Last name',
                          inputType: TextInputType.name,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Gap(20),
              Text(
                'Phone number',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: GlobalColors.whiteColor),
              ),
              Gap(6),
              CustomTextField(
                fillColor: GlobalColors.textFieldFillColor,
                hintText: 'Enter phone number',
                inputType: TextInputType.phone,
              ),
              Gap(20),
              Text(
                'Email address',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: GlobalColors.whiteColor),
              ),
              Gap(6),
              CustomTextField(
                fillColor: GlobalColors.textFieldFillColor,
                hintText: 'Enter Email address',
                inputType: TextInputType.emailAddress,
              ),
              Gap(20),
              Text(
                'Create Password',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: GlobalColors.whiteColor),
              ),
              Gap(6),
              CustomPassWordTextField(
                fillColor: GlobalColors.textFieldFillColor,
                hintText: 'Enter Password',
              ),
              Gap(20),
              Text(
                'Referral Code (Optional)',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: GlobalColors.whiteColor),
              ),
              Gap(6),
              CustomTextField(
                fillColor: GlobalColors.textFieldFillColor,
                hintText: 'Enter Referral Code',
                inputType: TextInputType.text,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
