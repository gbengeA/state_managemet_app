import 'package:flutter/material.dart';
import '../constants/my_app_icons.dart';
class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, required this.errorMessage, required this.retryFunction,});
  final String errorMessage;
  final Function retryFunction;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            MyAppIcons.error,
            size: 50,
            color: Colors.red,
          ),
          SizedBox(height: 20),
          Text(
            "Error",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Something went wrong. Please try again.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
