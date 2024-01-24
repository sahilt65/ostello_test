import 'package:flutter/material.dart';
import 'package:ostello_test/provider/amenities_provider.dart';
import 'package:ostello_test/routes/routes_generator.dart';
import 'package:ostello_test/screens/instiute_topper_screen.dart';
import 'package:ostello_test/screens/sub_categories_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => AmenitiesProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: ((settings) => RouteGenerator.onGeneratedRoutes(settings)),
      home: SubCategoriesScreen(),
    );
  }
}
