import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_test/constants/colors.dart';
import 'package:ostello_test/widgets/custom_text_field.dart';

class InstituteTopperScreen extends StatelessWidget {
  InstituteTopperScreen({super.key});
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: CustomColors.greyColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Add Institute Toppers',
              style: GoogleFonts.plusJakartaSans(color: Color(0xff212121), fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Add list of toppers from your coaching centre, if any. This adds huge credibility for your institute.',
              style: GoogleFonts.plusJakartaSans(
                color: const Color(0xff909090),
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Name of the Student*',
              style: GoogleFonts.plusJakartaSans(color: Color(0xff909090)),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomTextField(
              controller: _controller,
              text: "Name",
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Select the course*',
              style: GoogleFonts.plusJakartaSans(color: Color(0xff909090)),
            ),
            const DropdownMenu(
              // menuStyle: MenuStyle(shape: MaterialStatePropertyAll(OutlinedBorder(side: ))),
              width: 300,
              enableSearch: false,
              inputDecorationTheme: InputDecorationTheme(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(19)),
                  borderSide: BorderSide(
                    color: Colors.purple,
                    width: 2,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xff7D23E0),
                    width: 2,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(19)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xffDCE2EF),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(19)),
                ),
              ),
              dropdownMenuEntries: [
                DropdownMenuEntry(value: 1, label: "Sahil"),
                DropdownMenuEntry(value: 1, label: "Sahil")
              ],
            ),
            CustomDropdownMenu()
          ],
        ),
      )),
    );
  }
}

class CustomDropdownMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem<int>(
          value: 1,
          child: Text('Sahil'),
        ),
        PopupMenuItem<int>(
          value: 2,
          child: Text('Another Item'),
        ),
      ],
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          children: [
            Text('Select an item'),
            Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
      onSelected: (value) {
        // Handle item selection
      },
    );
  }
}
