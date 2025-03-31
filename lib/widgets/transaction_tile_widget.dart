import 'package:cipherx_expense_app/utils/category_enum.dart';
import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({
    super.key,
    required this.category, required this.name,
  });

  final CategorynameColor category;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: CustomColor.light80,
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: category.bgcolor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: SvgPicture.asset(
              category.icon,
              color: category.color,
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          color: CustomColor.dark25,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "- ₹120",
                      style: TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          color: CustomColor.red100,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Buy some grocery",
                      style: TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          color: CustomColor.light,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "10:00 AM",
                      style: TextStyle(
                          fontFamily: GoogleFonts.inter().fontFamily,
                          color: CustomColor.light,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
