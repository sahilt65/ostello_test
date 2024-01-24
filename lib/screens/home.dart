import 'package:flutter/material.dart';
import 'package:ostello_test/routes/routes.dart';
import 'package:ostello_test/widgets/custom_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              CustomButton(
                text: 'First Screen',
                onTap: () {
                  Navigator.pushNamed(context, Routes.subCategoryScreen);
                },
                color: const Color(0xff7D23E0),
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: 'Second Screen',
                onTap: () {
                  Navigator.pushNamed(context, Routes.instituteTopperScreen);
                },
                color: const Color(0xff7D23E0),
                textColor: Colors.white,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: 'Third Screen',
                onTap: () {
                  Navigator.pushNamed(context, Routes.instructorDetailsScreen);
                },
                color: Color(0xff7D23E0),
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
