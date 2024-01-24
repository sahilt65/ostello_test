import 'package:flutter/material.dart';
import 'package:ostello_test/models/amenities_model.dart';

class AmenitiesProvider extends ChangeNotifier {
  List<Amenities> list = [
    Amenities(title: 'Ostello Counselling', imagePath: "assets/images/couselling.png", isChecked: false),
    Amenities(title: 'Library', imagePath: "assets/images/library.png", isChecked: false),
    Amenities(title: 'Cafeteria', imagePath: "assets/images/cafeteria.png", isChecked: false),
    Amenities(title: 'Study Material', imagePath: "assets/images/study-material.png", isChecked: false),
    Amenities(title: 'Air Conditioning', imagePath: "assets/images/air-conditioning.png", isChecked: false),
    Amenities(title: 'WIFI', imagePath: "assets/images/wifi.png", isChecked: false),
    Amenities(title: 'Courses', imagePath: "assets/images/courses.png", isChecked: false),
    Amenities(title: 'Hostel Facility', imagePath: "assets/images/hostel-facility.png", isChecked: false),
    Amenities(title: 'Test Series', imagePath: "assets/images/test-series.png", isChecked: false),
    Amenities(title: 'Mock Tests', imagePath: "assets/images/mock-tests.png", isChecked: false),
    Amenities(title: 'Assesment', imagePath: "assets/images/assesment.png", isChecked: false),
    Amenities(title: 'AI-Powered Learning', imagePath: "assets/images/ai-powered-learning.png", isChecked: false),
  ];

  void checkAmenities(int index) {
    list[index].isChecked = !list[index].isChecked;
    notifyListeners();
  }
}
