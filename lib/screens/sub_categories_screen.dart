import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ostello_test/constants/colors.dart';
import 'package:ostello_test/provider/amenities_provider.dart';
import 'package:ostello_test/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class SubCategoriesScreen extends StatefulWidget {
  const SubCategoriesScreen({super.key});

  @override
  State<SubCategoriesScreen> createState() => _SubCategoriesScreenState();
}

class _SubCategoriesScreenState extends State<SubCategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AmenitiesProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 23, right: 23, top: 20),
          child: SingleChildScrollView(
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
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Choose Amenities',
                  style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff212121), fontSize: 24, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'What amenities will students have access to in your institute?',
                  style: GoogleFonts.plusJakartaSans(
                    color: const Color(0xff909090),
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(0);
                      },
                      child: CustomContainer(
                          content: provider.list[0].title,
                          imagePath: provider.list[0].imagePath,
                          isCheccked: provider.list[0].isChecked),
                    ),
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(1);
                      },
                      child: CustomContainer(
                          content: provider.list[1].title,
                          imagePath: provider.list[1].imagePath,
                          isCheccked: provider.list[1].isChecked),
                    ),
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(2);
                      },
                      child: CustomContainer(
                          content: provider.list[2].title,
                          imagePath: provider.list[2].imagePath,
                          isCheccked: provider.list[2].isChecked),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(3);
                      },
                      child: CustomContainer(
                          content: provider.list[3].title,
                          imagePath: provider.list[3].imagePath,
                          isCheccked: provider.list[3].isChecked),
                    ),
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(4);
                      },
                      child: CustomContainer(
                          content: provider.list[4].title,
                          imagePath: provider.list[4].imagePath,
                          isCheccked: provider.list[4].isChecked),
                    ),
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(5);
                      },
                      child: CustomContainer(
                          content: provider.list[5].title,
                          imagePath: provider.list[5].imagePath,
                          isCheccked: provider.list[5].isChecked),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(6);
                      },
                      child: CustomContainer(
                          content: provider.list[6].title,
                          imagePath: provider.list[6].imagePath,
                          isCheccked: provider.list[6].isChecked),
                    ),
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(7);
                      },
                      child: CustomContainer(
                          content: provider.list[7].title,
                          imagePath: provider.list[7].imagePath,
                          isCheccked: provider.list[7].isChecked),
                    ),
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(8);
                      },
                      child: CustomContainer(
                          content: provider.list[8].title,
                          imagePath: provider.list[8].imagePath,
                          isCheccked: provider.list[8].isChecked),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(9);
                      },
                      child: CustomContainer(
                          content: provider.list[9].title,
                          imagePath: provider.list[9].imagePath,
                          isCheccked: provider.list[9].isChecked),
                    ),
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(10);
                      },
                      child: CustomContainer(
                          content: provider.list[10].title,
                          imagePath: provider.list[10].imagePath,
                          isCheccked: provider.list[10].isChecked),
                    ),
                    GestureDetector(
                      onTap: () {
                        provider.checkAmenities(11);
                      },
                      child: CustomContainer(
                        content: provider.list[11].title,
                        imagePath: provider.list[11].imagePath,
                        isCheccked: provider.list[11].isChecked,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(
                  text: "Done",
                  onTap: () {},
                  color: const Color(0xff7D23E0),
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget CustomContainer({required String content, required String imagePath, required bool isCheccked}) {
    return Container(
      width: 115,
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: 93,
            child: Stack(
              children: [
                Container(
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(12),
                      ),
                      border: Border.all(color: Color(0xffDCE2EF), width: 1.5),
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Center(
                          child: Image.asset(
                        imagePath,
                        // fit: BoxFit.contain,
                      )),
                    )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                      color: isCheccked ? Colors.green : Colors.white,
                      borderRadius: BorderRadius.circular(11),
                      border: Border.all(color: isCheccked ? Colors.green : Color(0xffDCE2EF), width: 1.5),
                    ),
                    child: isCheccked
                        ? const ImageIcon(
                            AssetImage('assets/icons/checkmark.png'),
                            color: Colors.white,
                          )
                        : null,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            content,
            style: GoogleFonts.plusJakartaSans(color: Color(0xff626262), fontSize: 12, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
