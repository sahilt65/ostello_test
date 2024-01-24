// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDown extends StatelessWidget {
  final List<DropdownMenuEntry> list;
  final String title;
  const CustomDropDown({
    Key? key,
    required this.list,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DropdownMenu(
      menuStyle:
          MenuStyle(shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)))),
      width: 345,
      menuHeight: 300,
      enableSearch: false,
      hintText:title,
      inputDecorationTheme: InputDecorationTheme(
        isDense: true,
        hintStyle: GoogleFonts.plusJakartaSans(color: Color(0xffC4C4C4)),
        labelStyle: const TextStyle(fontFamily: 'Avenir', fontWeight: FontWeight.w300),
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
      dropdownMenuEntries: list,
    );
  }
}
