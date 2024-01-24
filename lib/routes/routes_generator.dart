import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostello_test/routes/routes.dart';
import 'package:ostello_test/screens/instiute_topper_screen.dart';
import 'package:ostello_test/screens/instructor_details_screen.dart';
import 'package:ostello_test/screens/sub_categories_screen.dart';

class RouteGenerator{
  static Route<dynamic> onGeneratedRoutes(RouteSettings settings){
    Map<String, dynamic> args = {};
    switch (settings.name) {
      case Routes.subCategoryScreen:
        return _getPageRoute(const SubCategoriesScreen());
      case Routes.instructorDetailsScreen:
        return _getPageRoute(const InstructorDetailsScreen());
      case Routes.instituteTopperScreen:
        return _getPageRoute( InstituteTopperScreen());
      

      default:
        return _errorRoute();
    }
  }
  static PageRoute _getPageRoute(Widget child) {
    return MaterialPageRoute(builder: (ctx) => child);
  }

  // 404 PAGE
  static PageRoute _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('404'),
        ),
        body: const Center(
          child: Text('ERROR 404: Not Found'),
        ),
      );
    });
  }
}

