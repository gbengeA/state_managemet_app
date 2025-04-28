import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:state_managemet_app/constants/my_app_icons.dart';

class RatingWidget extends StatelessWidget {
  final int rating;

  const RatingWidget({super.key,
    this.rating = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(MyAppIcons.star, color: Colors.amber, size: 20),
        Text("$rating/10", style:  Theme.of(context).textTheme.bodyLarge),
      ]
    );
  }
}