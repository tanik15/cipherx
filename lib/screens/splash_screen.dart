import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/images/logo.svg', 
                    color: CustomColor.white,
                    width: 200, // Adjust size as needed
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                  Text(
                    "CipherX",
                    style: GoogleFonts.brunoAceSc(
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                        color: CustomColor.white),
                  )
                ]),
          ],
        ),
      ),
    );
  }
}
