import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:cipherx_expense_app/utils/text_button.dart';
import 'package:cipherx_expense_app/utils/text_field_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _isChecked = false;

  bool isValidEmail(String email) {
    // Regular expression for validating an email address
    final RegExp emailRegex = RegExp(
      r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$",
    );
    return emailRegex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/icons/arrow-left.svg',
                      width: 32,
                    ),
                  ),
                  Text(
                    "Sign Up",
                    style: GoogleFonts.inter(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: CustomColor.dark,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 32,
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              InputFeildWidget(
                hinttext: "Name",
                controller: nameController,
              ),
              SizedBox(
                height: 16,
              ),
              InputFeildWidget(
                hinttext: "Email",
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email';
                  } else if (!isValidEmail(value)) {
                    return 'Enter a valid email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 16,
              ),
              InputFeildWidget(
                controller: passwordController,
                hinttext: "Password",
                validator: (value) {
                  if (value == null || value.length != 8) {
                    return "password must be 8 char";
                  }
                  return null;
                },
                keyboardType: TextInputType.text,
                maxlenght: 8,
                obscureText: true,
                onchanged: (value) {
                  if (value.length == 8) {
                    FocusScope.of(context).unfocus();
                  }
                },
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (bool? newValue) {
                      setState(() {
                        _isChecked = newValue!;
                      });
                    },
                    activeColor:
                        CustomColor.violet100, // Customize checkbox color
                    checkColor: Colors.white, // Customize checkmark color
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black), // Default text style
                        children: <TextSpan>[
                          TextSpan(text: 'By signing up, you agree to the '),
                          TextSpan(
                            text: 'Terms of Service',
                            style: TextStyle(
                                color: CustomColor.violet100,
                                decoration: TextDecoration.underline),
                          ),
                          TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                                color: CustomColor.violet100,
                                decoration: TextDecoration.underline),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Text("Or with",
                  style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff91919F),),),
              SizedBox(
                height: 16,
              ),
              TextButtonWidget(
                textcolor: CustomColor.white,
                bordercolor: CustomColor.violet100,
                height: 55,
                text: "Sign Up",
                color: CustomColor.violet100,
                fontsize: 16,
              ),
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account? ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: GoogleFonts.inter().fontFamily,
                      )),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: CustomColor.violet100,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.inter().fontFamily,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
