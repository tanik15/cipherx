import 'package:cipherx_expense_app/screens/sign_up_screen.dart';
import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class GetttingStartedScreen extends StatelessWidget {
  const GetttingStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              CustomColor.violet100,
              CustomColor.violet80,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              child: Image.asset('assets/images/recordcircle_2.png'),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset('assets/images/recordcircle.png'),
            ),
            Positioned(
              top: 40,
              left: 16,
              child: Image.asset(
                'assets/images/logo.png',
                height: 70,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen(),));
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Welcome to",
                                style: GoogleFonts.aBeeZee(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w400,
                                    color: CustomColor.white),
                              ),
                              Text(
                                "CipherX",
                                style: GoogleFonts.brunoAceSc(
                                    fontSize: 36,
                                    fontWeight: FontWeight.w400,
                                    color: CustomColor.white),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                              backgroundColor: Color(0xEDE1E1BF),
                              radius: 42,
                              child:
                                  SvgPicture.asset('assets/images/arrow.svg'))
                        ],
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        "The best way to track your expenses.",
                        style: GoogleFonts.aBeeZee(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: CustomColor.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
