import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MonthDropDown extends StatefulWidget {
  const MonthDropDown({super.key});

  @override
  MonthDropDownState createState() => MonthDropDownState();
}

class MonthDropDownState extends State<MonthDropDown> {
  String selectedMonth = "October"; // Default month
  final List<String> months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12,
      ),
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(color: CustomColor.border),
        color: Colors.transparent, 
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedMonth,
          icon: Icon(Icons.expand_more,
              color: CustomColor.dark), 
          onChanged: (String? newValue) {
            setState(() {
              selectedMonth = newValue!;
            });
          },
          items: months.map<DropdownMenuItem<String>>((String month) {
            return DropdownMenuItem<String>(
              value: month,
              child: Text(
                month,
                style: TextStyle(
                    fontFamily: GoogleFonts.inter().fontFamily,
                    color: CustomColor.dark,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
