
import 'package:flutter/material.dart';
import 'package:state_managemet_app/widgets/movies/fovorite.dart';
import 'package:state_managemet_app/widgets/movies/genres_list_widget.dart';
import 'package:state_managemet_app/widgets/movies/rating_widget.dart';

import '../../models/Movie.dart';
import '../cached_image.dart';

class MovieWidget extends StatelessWidget {
  const MovieWidget({super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color:Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12.0),
        child: InkWell(
          onTap: (){}
          ,child: Padding(padding:EdgeInsets.all(8),
        child:
       IntrinsicWidth(
         child:  Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,

           children: [
             ClipRRect(borderRadius: BorderRadius.circular(12.0),
               child:  CachedImageWidget(imgUrl: movie.image,  ),)   ,
             const SizedBox(width: 10),
            Expanded(child:
             Column(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisSize: MainAxisSize.max,
             children: [
               Text(movie.title, style: Theme.of(context).textTheme.titleLarge),
               RatingWidget(rating: movie.rating),
               GenresListWidget(genres:movie.genres) ,
               Row(
                 mainAxisSize: MainAxisSize.max,
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(movie.year.toString(), style: Theme.of(context).textTheme.bodyLarge),
                   Favourite()
                 ],
               ),

             ],
           ),
          )


           ],
         )),
       )

      )
    ));
  }
}