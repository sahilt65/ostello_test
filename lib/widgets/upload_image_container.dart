import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UploadImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 146,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(14),
          ),
          border: Border.all(color: Color(0xffDCE2EF))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 68,
              width: 68,
              decoration: const BoxDecoration(
                color: Color(0xffF6EFFE),
                borderRadius: BorderRadius.all(
                  Radius.circular(34),
                ),
              ),
              child: const Center(
                child: Icon(
                  Icons.image,
                  color: Color(0xff7D23E0),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Upload Image*",
              style: GoogleFonts.plusJakartaSans(color: Colors.black, fontWeight: FontWeight.w700, fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Format: MB abc supported",
              style: GoogleFonts.plusJakartaSans(color: Color(0xff909090), fontWeight: FontWeight.w400, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
