// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String text;
  final Function(String)? onTap;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: TextField(
        onSubmitted: onTap,
        controller: controller,
        decoration: InputDecoration(
          isDense: true, // Added this
          // contentPadding: EdgeInsets.all(14),
          hintText: text,
          hintStyle: GoogleFonts.plusJakartaSans(color: Color(0xffc4c4c4), fontSize: 16),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(19)),
            borderSide: BorderSide(
              color: Colors.purple,
              width: 2,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff7D23E0),
              width: 2,
            ),
            borderRadius: BorderRadius.all(Radius.circular(19)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffDCE2EF),
            ),
            borderRadius: BorderRadius.all(Radius.circular(19)),
          ),
        ),
      ),
    );
  }
}
