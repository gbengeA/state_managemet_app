import 'package:flutter/material.dart';
import 'package:state_managemet_app/screens/fovorites_movies.dart';
import 'package:state_managemet_app/service/init_getit.dart';
import 'package:state_managemet_app/widgets/movies/movie_widget.dart';
import '../constants/my_app_constants.dart';
import '../constants/my_app_icons.dart';
import '../models/Movie.dart';
import '../service/nevaigation_service.dart';

class MoviesScreen extends StatelessWidget {
  const MoviesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Popular Movies"),
        actions: [
          IconButton(
            onPressed: () {
              getIt<NavigationService>().navigateTo(FavouriteScreen());
            },
            icon: const Icon(
              MyAppIcons.favoriteRounded,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {
              // getIt<NavigationService>().showDialog(FavouriteScreen());
              getIt<NavigationService>().showSnackbar();
            },
            icon: const Icon(
              MyAppIcons.darkMode,
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return MovieWidget(movie: Movie(title: "Movie Title", year: 2021, rating: 5, id: 1,
                image: MyAppConstants.movieImage, genres: ["Big","Small","Action","Drama","Fiction"]),);


        },
      ),
    );
  }
}
