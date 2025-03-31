import 'package:cipherx_expense_app/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final Color? color;
  final double? height;
  final double? fontsize;
  final Color? bordercolor;
  final Color? textcolor;
  final String? icon;
  final double? iconsize;
  final bool isLoading;

  const TextButtonWidget({
    super.key,
    required this.text,
    this.color,
    this.height,
    this.fontsize,
    this.textcolor,
    this.bordercolor,
    this.icon,
    this.iconsize,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
          border: Border.all(color: bordercolor!),
          borderRadius: BorderRadius.circular(16),
          color: color),
      child: isLoading
          ? Center(
              child: CupertinoActivityIndicator(
                radius: 15.0,
                color: CustomColor.white,
              ),
            )
          : Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  (icon!= null)?
                  SvgPicture.asset(icon!,height: 32,): SizedBox(),
                  if(icon!=null)
                  SizedBox(width: 4,),
                  Text(
                    textAlign: TextAlign.center,
                    text,
                    style: TextStyle(
                      color: textcolor,
                      fontFamily: GoogleFonts.inter().fontFamily,
                      fontSize: fontsize,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
