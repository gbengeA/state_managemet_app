import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:state_managemet_app/widgets/movies/fovorite.dart';

import '../constants/my_app_icons.dart';
import '../models/Movie.dart';
import '../widgets/movies/genres_list_widget.dart';
import '../widgets/movies/rating_widget.dart';

class MovieDetails extends StatefulWidget {
  const MovieDetails({super.key, required this.movie});

  final Movie movie;

  @override
  State<MovieDetails> createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  late Movie movie;

  @override
  void initState() {
    movie = widget.movie;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          CachedNetworkImage(
            errorWidget: (context, url, error) => const Icon(MyAppIcons.error),
            imageUrl: movie.image,
          ),
          Positioned(
              top: 8,
              left: 8,
              child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    size: 30,
                    MyAppIcons.arrowBack,
                    color: Colors.black,
                  ),
                ),
              )),
          SingleChildScrollView(
              child: Column(
            children: [
              SizedBox(
                height: size.height * 0.4,
              ),
              Material(
                elevation: 5,
                color: Colors.transparent,
                child:
                Stack(
                  children: [
                   Positioned(
                     child:  Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.only(left: 16, right: 16),
                     height: 1000,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(30),
                     ),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                            const SizedBox(height: 20),
                            Text(movie.title,
                                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                            const SizedBox(height: 10),
                           Row(
                             mainAxisSize: MainAxisSize.max,
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               RatingWidget(rating: movie.rating),
                               Text(movie.year.toString(), style: Theme.of(context).textTheme.bodyLarge),

                             ],
                           ),

                            const SizedBox(height: 10),
                           GenresListWidget(genres:movie.genres,)
                           ,const SizedBox(height: 10),
                         ],
                       ),
                   ),),
                    Positioned(
                        left: 20,
                        right: 20,
                        child: CircleAvatar(backgroundColor: Colors.white,child: Favourite(),)
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    ));
  }
}
