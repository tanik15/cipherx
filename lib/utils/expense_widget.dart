import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseWidget extends StatelessWidget {
  const ExpenseWidget({
    super.key,
    required this.icon,
    required this.name,
    required this.amount,
    required this.color,
  });

  final String icon;
  final String name;
  final String amount;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            )),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                height: 48,
                width: 48,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: CustomColor.light80),
                child: SvgPicture.asset(icon,
                    height: 16, fit: BoxFit.fitHeight, color: color),
              ),
              SizedBox(
                width: 4,
              ),
              Column( 
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: CustomColor.light80,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                    softWrap: true,
                  ),
                  Text(
                    "₹$amount",
                    style: TextStyle(
                        fontFamily: GoogleFonts.inter().fontFamily,
                        color: CustomColor.light80,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                    softWrap: true,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
