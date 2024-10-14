import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/common/global_colors.dart';
import 'package:mobile_task/common/widgets/custom_buttons';
import 'package:mobile_task/feat/home/presentation/home_screen.dart';
import 'package:mobile_task/feat/login/log_in_screen.dart';
import 'package:mobile_task/feat/register/register_screen.dart';
import 'package:mobile_task/feat/register/verify_mail_screen.dart';

class RegisterPageview extends StatefulWidget {
  const RegisterPageview({super.key});

  @override
  State<RegisterPageview> createState() => _RegisterPageviewState();
}

class _RegisterPageviewState extends State<RegisterPageview> {
  final _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xffEFA058), Color(0xffEF5858)],
    ).createShader(Rect.fromLTWH(70, 300, 200.0, 70.0));
    return Scaffold(
      backgroundColor: GlobalColors.bgColor,
      appBar: AppBar(
        leadingWidth: 80,
        backgroundColor: GlobalColors.bgColor,
        surfaceTintColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 14),
          child: GestureDetector(
            child: Row(
              children: [
                Icon(
                  Icons.chevron_left,
                  color: GlobalColors.whiteColor,
                ),
                Text(
                  'Back',
                  style: GoogleFonts.montserrat(
                      color: GlobalColors.whiteColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        actions: _currentPage == 0
            ? [
                Padding(
                  padding: const EdgeInsets.only(right: 23.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => const LogInScreen()));
                    },
                    child: Text(
                      'Sign in instead',
                      style: GoogleFonts.montserrat(
                          decoration: TextDecoration.underline,
                          decorationColor: GlobalColors.gradient2,
                          foreground: Paint()..shader = linearGradient,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ]
            : null,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              children: const [
                RegisterScreen(),
                VerifyMailScreen(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
            child: CustomFullButton(
                text: _currentPage == 0 ? 'Next' : 'Verify email',
                onPressed: () {
                  if (_currentPage == 0) {
                    _pageController.animateToPage(1,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeInOut);
                  } else {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (c) => HomeScreen()));
                  }
                },
                color: Colors.transparent),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildIndicator(0),
                Gap(8),
                _buildIndicator(1),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 6, 24, 20),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                _currentPage == 0
                    ? 'Account information'
                    : 'Email verification',
                style: GoogleFonts.montserrat(
                  fontSize: 16,
                  color: GlobalColors.deepGreyColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator(int pageIndex) {
    bool isActive = _currentPage == 1 || _currentPage == pageIndex;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      height: 2,
      width: 150,
      decoration: BoxDecoration(
        color: isActive ? GlobalColors.whiteColor : GlobalColors.faintGreyColor,
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
