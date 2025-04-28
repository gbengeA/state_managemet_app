import 'package:flutter/material.dart';
import 'package:state_managemet_app/widgets/movies/movie_widget.dart';
import '../constants/my_app_constants.dart';
import '../constants/my_app_icons.dart';
import '../models/Movie.dart';
class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              MyAppIcons.delete,
              color: Colors.red,
            ),
          ),

        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child:  MovieWidget(movie: Movie(title: "Movie Title", year: 2021, rating: 5, id: 1,
                image: MyAppConstants.movieImage, genres: ["Big","Small","Action","Drama","Fiction"]),),

          );
        },
      ),
    );
  }
}
