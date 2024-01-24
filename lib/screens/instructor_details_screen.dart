import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_test/constants/colors.dart';
import 'package:ostello_test/widgets/custom_button.dart';
import 'package:ostello_test/widgets/custom_drop_down.dart';
import 'package:ostello_test/widgets/custom_text_field.dart';
import 'package:ostello_test/widgets/upload_image_container.dart';

class InstructorDetailsScreen extends StatelessWidget {
  InstructorDetailsScreen({super.key});
  final TextEditingController _nameController = TextEditingController();

  bool isF = false;
  List<DropdownMenuEntry> courses = const [
    DropdownMenuEntry(value: 1, label: "Class 8th Physics"),
    DropdownMenuEntry(value: 2, label: "Class 9th Physics"),
    DropdownMenuEntry(value: 3, label: "Class 10th Physics"),
    DropdownMenuEntry(value: 4, label: "IIT-JEE (Class 11th)"),
    DropdownMenuEntry(value: 5, label: "IIT-JEE (Class 12th)"),
    DropdownMenuEntry(value: 6, label: "IIT-JEE MAINS"),
  ];
  List<DropdownMenuEntry> subjects = const [
    DropdownMenuEntry(value: 1, label: "Mathematics"),
    DropdownMenuEntry(value: 2, label: "Physics"),
    DropdownMenuEntry(value: 3, label: "Chemistry"),
    DropdownMenuEntry(value: 4, label: "Biology"),
    DropdownMenuEntry(value: 5, label: "IIT-JEE"),
    DropdownMenuEntry(value: 5, label: "Medicle"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: CustomColors.greyColor,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Add Instructor Details',
                style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xff212121), fontSize: 24, fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 15),
              Text(
                'Add list of toppers from your coaching centre, if any. This adds huge credibility for your institute.',
                style: GoogleFonts.plusJakartaSans(
                  color: const Color(0xff909090),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),
              Text(
                'Name of the Instructor*',
                style: GoogleFonts.plusJakartaSans(color: const Color(0xff909090)),
              ),
              const SizedBox(height: 10),
              CustomTextField(
                controller: _nameController,
                text: "Name",
              ),
              const SizedBox(height: 20),
              Text(
                'Select the course*',
                style: GoogleFonts.plusJakartaSans(color: const Color(0xff909090)),
              ),
              const SizedBox(height: 10),
              CustomDropDown(list: courses, title: 'Course Name'),
              const SizedBox(height: 20),
              Text(
                "Select the subject taught by them*",
                style: GoogleFonts.plusJakartaSans(color: const Color(0xff909090)),
              ),
              const SizedBox(height: 10),
              CustomDropDown(list: subjects, title: 'Name of the subject'),
              const SizedBox(height: 20),
              UploadImage(),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 47,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(6)),
                  border: Border.all(
                    color: const Color(0xff7D23E0),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.add,
                      color: Color(0xff7D23E0),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Add Another Instructor',
                      style: GoogleFonts.plusJakartaSans(
                          color: const Color(0xff7D23E0), fontSize: 12, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Done",
                onTap: () {},
                color: const Color(0xff7D23E0),
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 4,
              ),
              CustomButton(
                text: "Skip for later",
                onTap: () {},
                color: const Color(0xffF6EFFE),
                textColor: const Color(0xff7D23E0),
              )
            ],
          ),
        ),
      )),
    );
  }
}
