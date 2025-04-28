import 'package:flutter/material.dart';
import 'package:state_managemet_app/screens/movie_details.dart';
import 'package:state_managemet_app/screens/splash_screen.dart';
import 'package:state_managemet_app/service/init_getit.dart';
import 'package:state_managemet_app/service/nevaigation_service.dart';

import 'constants/my_app_constants.dart';
import 'constants/my_theme_data.dart';
import 'models/Movie.dart';
import 'screens/movies_screen.dart';

void main() {
  setupLocator();
  runApp( MyApp());
}
// key="""
// eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZTFlOTIyZTEzZGJhYzFiNDk4YTgxZWVlN2E1NjVlYyIsIm5iZiI6MTc0NTUwNjg2Ny43MjEsInN1YiI6IjY4MGE1MjMzZjNjZjZkNjZkNzlkMTQzNCIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.eyfjaeVuolkx4HLxySU7tEt5WkJ7Hnc-Ev8cVeNWRUA
// """
class MyApp extends StatelessWidget {
   MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<NavigationService>().navigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Movies App',
      theme: MyThemeData.lightTheme,
      home:MoviesScreen()
    );
  }
}
