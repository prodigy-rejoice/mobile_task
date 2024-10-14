import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/common/global_colors.dart';
import 'package:mobile_task/common/widgets/custom_buttons';
import 'package:mobile_task/common/widgets/custom_text_field.dart';
import 'package:mobile_task/feat/home/presentation/home_screen.dart';
import 'package:mobile_task/feat/register/register_pageview.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xffEFA058), Color(0xffEF5858)],
    ).createShader(Rect.fromLTWH(70, 300, 200.0, 70.0));
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalColors.bgColor,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.brown.withOpacity(0.4),
                  ),
                ),
              ),
              Gap(24),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Welcome back 👋🏾',
                  style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              Gap(72),
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
              Gap(24),
              Text(
                'Password',
                style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: GlobalColors.whiteColor),
              ),
              Gap(6),
              CustomPassWordTextField(
                  fillColor: GlobalColors.textFieldFillColor,
                  hintText: 'Enter Password'),
              Gap(8),
              Text(
                'Forgot password?',
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: GlobalColors.faintGreyColor),
              ),
              Gap(32),
              CustomFullButton(
                  text: 'Sign in',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => HomeScreen()));
                  },
                  color: Colors.green),
              Gap(16),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: "I don't have an account,  ",
                      style: GoogleFonts.montserrat(
                          color: GlobalColors.faintGreyColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                      children: <TextSpan>[
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => RegisterPageview())),
                          text: "Create account",
                          style: GoogleFonts.montserrat(
                              foreground: Paint()..shader = linearGradient,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
