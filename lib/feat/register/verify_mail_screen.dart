import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/common/global_colors.dart';
import 'package:mobile_task/common/widgets/custom_buttons';

class VerifyMailScreen extends StatefulWidget {
  const VerifyMailScreen({super.key});

  @override
  State<VerifyMailScreen> createState() => _VerifyMailScreenState();
}

class _VerifyMailScreenState extends State<VerifyMailScreen> {
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: GlobalColors.bgColor,
        body: Column(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Verify your email',
                    style: GoogleFonts.montserrat(
                        fontSize: 29,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                  Gap(16),
                  RichText(
                    text: TextSpan(
                        text: "Please enter the OTP sent to\n",
                        style: GoogleFonts.montserrat(
                            color: GlobalColors.faintGreyColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                        children: <TextSpan>[
                          TextSpan(
                            text: "tolu.ab19@gmail.com",
                            style: GoogleFonts.montserrat(
                                color: GlobalColors.whiteColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          )
                        ]),
                  ),
                  Gap(32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: List.generate(3, (index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 7),
                            child: SizedBox(
                              height: 52,
                              width: 40,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0),
                                child: TextField(
                                  style: GoogleFonts.montserrat(
                                      color: GlobalColors.whiteColor,
                                      fontWeight: FontWeight.bold),
                                  onChanged: (value) {
                                    if (value.length == 1) {
                                      FocusScope.of(context).nextFocus();
                                    }
                                  },
                                  keyboardType: TextInputType.number,
                                  controller: _controllers[index],
                                  maxLength: 1,
                                  autofocus: true,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          GlobalColors.textFieldFillColor,
                                      contentPadding: EdgeInsets.zero,
                                      counterText: '',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide(
                                              color:
                                                  GlobalColors.borderColor))),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                      Gap(1),
                      Text(
                        '-',
                        style: GoogleFonts.montserrat(
                            fontSize: 24, color: GlobalColors.whiteColor),
                      ),
                      Gap(8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(3, (index) {
                          return Padding(
                            padding: EdgeInsets.only(right: 7),
                            child: SizedBox(
                              height: 52,
                              width: 40,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 0),
                                child: TextField(
                                  style: GoogleFonts.montserrat(
                                      color: GlobalColors.whiteColor,
                                      fontWeight: FontWeight.bold),
                                  onChanged: (value) {
                                    if (value.length == 1 && index < 2) {
                                      FocusScope.of(context).nextFocus();
                                    } else if (value.isEmpty && index > 0) {
                                      FocusScope.of(context).previousFocus();
                                    }
                                  },
                                  keyboardType: TextInputType.number,
                                  controller: _controllers[index + 3],
                                  maxLength: 1,
                                  autofocus: true,
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor:
                                          GlobalColors.textFieldFillColor,
                                      contentPadding: EdgeInsets.zero,
                                      counterText: '',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          borderSide: BorderSide(
                                              color:
                                                  GlobalColors.borderColor))),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
