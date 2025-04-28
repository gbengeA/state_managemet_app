import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:state_managemet_app/screens/movie_details.dart';
import 'package:state_managemet_app/screens/splash_screen.dart';
import 'package:state_managemet_app/service/init_getit.dart';
import 'package:state_managemet_app/service/nevaigation_service.dart';

import 'constants/my_app_constants.dart';
import 'constants/my_theme_data.dart';
import 'models/Movie.dart';
import 'screens/movies_screen.dart';

void main()  {
  setupLocator();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
   // DeviceOrientation.portraitDown,
  ]).then((v) async {

    await dotenv.load(fileName: MyAppConstants.envFile);

    runApp( MyApp());
  });

}

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
