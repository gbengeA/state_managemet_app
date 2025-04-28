import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      icon: const Icon(
        CupertinoIcons.heart_fill,
        color: Colors.red,
        size: 20,
      ),
    );
  }
}
