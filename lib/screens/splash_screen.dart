import 'package:cipherx_expense_app/screens/gettting_started_screen.dart';
import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  void navigate(context){
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => GetttingStartedScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    navigate(context);
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
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Container(
                  //   color: Colors.red,
                  //   child: SvgPicture.asset(
                  //     'assets/images/Vector.svg',
                  //     width: 200,
                  //     placeholderBuilder: (BuildContext context) =>
                  //         const CircularProgressIndicator(),
                  //   ),
                  // ),
                  Image.asset('assets/images/logo.png'),
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
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  "By\nOpen Source Community",
                  style: GoogleFonts.cambay(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: CustomColor.white),
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
