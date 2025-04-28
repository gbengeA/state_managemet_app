import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReleaseDate extends StatelessWidget {
  const ReleaseDate({super.key, required this.releaseDate,  });
  final DateTime releaseDate ;

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],),
      child:
      Text(
        "${releaseDate.day}/${releaseDate.month}/${releaseDate.year}",
      ),
    );
  }
}
