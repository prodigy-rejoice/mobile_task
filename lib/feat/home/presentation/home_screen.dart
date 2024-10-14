import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_task/app/assets.dart';
import 'package:mobile_task/common/global_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xffEFA058), Color(0xffEF5858)],
    ).createShader(Rect.fromLTWH(70, 300, 200.0, 70.0));
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
          child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              backgroundColor: GlobalColors.bgColor,
              selectedIconTheme: IconThemeData(color: GlobalColors.whiteColor),
              selectedItemColor: GlobalColors.whiteColor,
              unselectedIconTheme:
                  IconThemeData(color: GlobalColors.imageIconGreyColor),
              unselectedItemColor: GlobalColors.imageIconGreyColor,
              elevation: 0,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.menu), label: 'Services'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.swap_vert), label: 'Statisics'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.group), label: 'Referrals'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings), label: 'Settings'),
              ]),
        ),
        floatingActionButton: Container(
          height: 52,
          width: 52,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xffEF5858),
                Color(0xffEFA058),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(
              image: AssetImage(PngAssets.chat),
              fit: BoxFit.contain,
              color: GlobalColors.whiteColor,
            ),
          ),
        ),
        backgroundColor: GlobalColors.bgColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: GlobalColors.whiteColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        bottomRight: Radius.circular(24))),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomContainerIcon(
                            icon: Icons.person_2_outlined,
                          ),
                          Text(
                            'Welcome, Sam 👋🏾',
                            style: GoogleFonts.montserrat(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: GlobalColors.bgColor),
                          ),
                          CustomContainerIcon(
                            icon: Icons.notifications_outlined,
                          ),
                        ],
                      ),
                      Gap(24),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [Color(0xffEF5858), Color(0xffEFA058)]),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomRight: Radius.circular(16))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'WALLET BALANCE',
                                    style: GoogleFonts.montserrat(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: GlobalColors.whiteColor),
                                  ),
                                  Gap(4),
                                  Row(
                                    children: [
                                      Text(
                                        _isObscure ? 'NGN 50,000' : 'NGN *****',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700,
                                            color: GlobalColors.whiteColor),
                                      ),
                                      Gap(10),
                                      GestureDetector(
                                        onTap: () => setState(() {
                                          _isObscure = !_isObscure;
                                        }),
                                        child: Icon(
                                          _isObscure
                                              ? Icons.visibility_off
                                              : Icons.visibility,
                                          color: GlobalColors.whiteColor,
                                          size: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Gap(8),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: GlobalColors.whiteColor
                                            .withOpacity(0.6)),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 4),
                                      child: RichText(
                                        text: TextSpan(
                                            text: 'Cashback ',
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w400,
                                                fontSize: 12,
                                                color: GlobalColors
                                                    .thinBlackColor),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: 'N341.20',
                                                  style: GoogleFonts.montserrat(
                                                    fontSize: 12,
                                                    foreground: Paint()
                                                      ..shader = linearGradient,
                                                    fontWeight: FontWeight.w700,
                                                  ))
                                            ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Gap(8),
                              Container(
                                height: 80,
                                width: 1.3,
                                color: GlobalColors.thinDividerColor,
                              ),
                              Gap(8),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.2),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          bottomRight: Radius.circular(16))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'MONIEPOINT',
                                          style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                              color: GlobalColors.whiteColor),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '8192017482',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700,
                                                  color:
                                                      GlobalColors.whiteColor),
                                            ),
                                            Gap(10),
                                            GestureDetector(
                                              child: Icon(
                                                Icons.copy,
                                                color: GlobalColors.whiteColor,
                                                size: 18,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Gap(8),
                                        Text(
                                          'Deposit Fee: N20',
                                          style: GoogleFonts.montserrat(
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor:
                                                  GlobalColors.whiteColor,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 12,
                                              color: GlobalColors.whiteColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconGreyTextColumn(
                              text: 'Top up', icon: PngAssets.top),
                          Container(
                            height: 20,
                            width: 1.3,
                            color: GlobalColors.faintGreyColor,
                          ),
                          IconGreyTextColumn(
                              text: 'Transfer', icon: PngAssets.send),
                          Container(
                            height: 20,
                            width: 1.3,
                            color: GlobalColors.faintGreyColor,
                          ),
                          IconGreyTextColumn(
                              text: 'History', icon: PngAssets.history),
                        ],
                      ),
                      Gap(15),
                      Container(
                        width: 45,
                        height: 5,
                        decoration: BoxDecoration(
                            color: GlobalColors.borderFaintColor,
                            borderRadius: BorderRadius.circular(100)),
                      )
                    ],
                  ),
                ),
              ),
              Gap(32),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Quick Actions',
                        style: GoogleFonts.montserrat(
                            color: GlobalColors.whiteColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Gap(15),
                    GridView(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          crossAxisCount: 4),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: GlobalColors.thinBlackColor),
                          child: IconTextColumn(
                              icon: PngAssets.data, text: 'Data'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: GlobalColors.thinBlackColor),
                          child: IconTextColumn(
                              icon: PngAssets.airtime, text: 'Airtime'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: GlobalColors.thinBlackColor),
                          child: IconTextColumn(
                              icon: PngAssets.showmax, text: 'Showmax'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: GlobalColors.thinBlackColor),
                          child: IconTextColumn(
                              icon: PngAssets.airtime, text: 'Giftcards'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: GlobalColors.thinBlackColor),
                          child: IconTextColumn(
                              icon: PngAssets.betting, text: 'Betting'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: GlobalColors.thinBlackColor),
                          child: IconTextColumn(
                              icon: PngAssets.electricity, text: 'Electricity'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: GlobalColors.thinBlackColor),
                          child: IconTextColumn(
                              icon: PngAssets.tv, text: 'TV/Cable'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: GlobalColors.thinBlackColor),
                          child: IconTextColumn(
                              icon: PngAssets.epin, text: 'E-Pin'),
                        ),
                      ],
                    ),
                    Gap(32),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'News & Update',
                          style: GoogleFonts.montserrat(
                              color: GlobalColors.whiteColor,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        GestureDetector(
                          child: Text('View all',
                              style: GoogleFonts.montserrat(
                                fontSize: 16,
                                foreground: Paint()..shader = linearGradient,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ],
                    ),
                    Gap(16),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image(
                            height: 150,
                            image: AssetImage(
                              PngAssets.people1,
                            ),
                            fit: BoxFit.cover,
                          ),
                          Gap(16),
                          Image(
                            height: 150,
                            image: AssetImage(PngAssets.people1),
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Gap(40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconTextColumn extends StatelessWidget {
  const IconTextColumn({
    required this.icon,
    required this.text,
    super.key,
  });
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Container(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topLeft,
        //       end: Alignment.bottomRight,
        //       colors: [
        //         Color(0xffEF5858),
        //         Color(0xffEFA058),
        //       ],
        //     ),
        //   ),
        //   child: ImageIcon(AssetImage(icon)),
        // ),
        ImageIcon(
          AssetImage(icon),
          color: GlobalColors.gradient2,
        ),
        Gap(4),
        Text(
          text,
          style: GoogleFonts.montserrat(
              color: GlobalColors.whiteColor,
              fontWeight: FontWeight.w500,
              fontSize: 14),
        )
      ],
    );
  }
}

class IconGreyTextColumn extends StatelessWidget {
  const IconGreyTextColumn({
    required this.icon,
    required this.text,
    super.key,
  });
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ImageIcon(
          AssetImage(icon),
          color: GlobalColors.imageIconGreyColor,
        ),
        Gap(4),
        Text(
          text,
          style: GoogleFonts.montserrat(
              color: GlobalColors.sweetBlackColor,
              fontWeight: FontWeight.w500,
              fontSize: 14),
        )
      ],
    );
  }
}

class CustomContainerIcon extends StatelessWidget {
  const CustomContainerIcon({
    super.key,
    required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      width: 42,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.transparent,
          border: Border.all(color: GlobalColors.deepGreyColor)),
      child: Icon(
        icon,
        color: GlobalColors.bgColor,
      ),
    );
  }
}
