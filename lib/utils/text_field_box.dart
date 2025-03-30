import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputFeildWidget extends StatefulWidget {
  final String? hinttext;
  // final String labelname;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final int? maxline;
  final int? maxlenght;
  final Color? fiillColor;
  final void Function(String)? onchanged;
  final String? Function(String?)? validator;
  final bool? obscureText;

  const InputFeildWidget(
      {super.key,
      required this.controller,
      this.hinttext,
      this.keyboardType,
      this.maxline = 1,
      this.fiillColor,
      // required this.labelname,
      this.maxlenght,
      this.onchanged,
      this.validator,
      this.obscureText = false});

  @override
  State<InputFeildWidget> createState() => _InputFeildWidgetState();
}

class _InputFeildWidgetState extends State<InputFeildWidget> {
  bool isobscure = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onchanged,
      keyboardType: widget.keyboardType,
      maxLines: widget.maxline ?? 1,
      maxLength: widget.maxlenght,
      validator: widget.validator,
      obscureText: (widget.obscureText== true) ? isobscure : false,
      minLines: 1,
      decoration: InputDecoration(
        suffixIcon: (widget.obscureText == true)
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isobscure = !isobscure;
                  });
                },
                icon: (isobscure == false)
                    ? Icon(Icons.visibility)
                    : Icon(Icons.visibility_off))
            : null,
        hintText: widget.hinttext,
        filled: (widget.fiillColor != null) ? true : false,
        fillColor: widget.fiillColor,
        hintStyle: TextStyle(
            fontFamily: GoogleFonts.inter().fontFamily,
            color: Color(0xff91919F),
            fontSize: 16),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1, color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(width: 1, color: Color(0xffF1F1FA)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            color: Color(0xff91919F),
            width: 1,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      ),
      style: TextStyle(
        color: Color.fromARGB(255, 102, 102, 107),
      ),
    );
  }
}
