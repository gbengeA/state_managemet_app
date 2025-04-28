import 'package:flutter/cupertino.dart';
import 'package:state_managemet_app/widgets/error_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AppErrorWidget(errorMessage: "errorMessage", retryFunction: (){});
  }
}
