import 'package:flutter/material.dart';

class GenresListWidget extends StatelessWidget {
  const GenresListWidget({super.key, required this.genres});

  final List<String> genres;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(genres.length, (index) {
        return
          Opacity(opacity: 0.7,child: Container(
            margin: const EdgeInsets.only(right: 5, bottom: 5),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              genres[index],
              style: const TextStyle(color: Colors.white),
            ),
          ),);
      }),
    );
  }
}
