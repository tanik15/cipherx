import 'package:cipherx_expense_app/utils/category_enum.dart';
import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:cipherx_expense_app/utils/text_button.dart';
import 'package:cipherx_expense_app/widgets/transaction_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TodayViewWidget extends StatelessWidget {
  const TodayViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Transaction",
                  style: TextStyle(
                      fontFamily: GoogleFonts.inter().fontFamily,
                      color: CustomColor.dark25,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                TextButtonWidget(
                  textcolor: CustomColor.violet100,
                  bordercolor: CustomColor.violet20,
                  height: 32,
                  text: "See All",
                  color: CustomColor.violet20,
                  fontsize: 14,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            // for(int i=0;i<5;i++)
            TransactionTile(category: CategoryType.shopping,name: "Shopping",),
            TransactionTile(category: CategoryType.bill,name: "Bill",),
            TransactionTile(category: CategoryType.food,name: "Restaurant",),
            TransactionTile(category: CategoryType.travel,name: "Travelling",),
            TransactionTile(category: CategoryType.shopping,name: "Shopping",),
            TransactionTile(category: CategoryType.bill,name: "Bill",),
            TransactionTile(category: CategoryType.food,name: "Restaurant",),
          ],
        ),
      ),
    );
  }
}

