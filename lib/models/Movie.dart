class Movie{
  String title;
  int year;
  int rating ;
  int id;
  String image  ;
  List<String> genres;

  Movie({required this.title, required   this.year, required
  this.id, required this.rating, required this.image, required this.genres});

  factory Movie.fromJson(Map<String, dynamic> json){
    return  Movie(
      title: json['title'],
      year: json['year'],
      id: json['id'],
      rating: json['rating'],
      image: json['image'],
      genres: List<String>.from(json['genres'])
    );
  }
}


class MovieModel {
  MovieModel({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  final bool? adult;
  final String? backdropPath;
  final List<int> genreIds;
  final int? id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final DateTime? releaseDate;
  final String title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  factory MovieModel.fromJson(Map<String, dynamic> json){
    return MovieModel(
      adult: json["adult"],
      backdropPath: json["backdrop_path"],
      genreIds: json["genre_ids"] == null ? [] : List<int>.from(json["genre_ids"]!.map((x) => x)),
      id: json["id"],
      originalLanguage: json["original_language"],
      originalTitle: json["original_title"],
      overview: json["overview"],
      popularity: json["popularity"],
      posterPath: json["poster_path"],
      releaseDate: DateTime.tryParse(json["release_date"] ?? ""),
      title: json["title"],
      video: json["video"],
      voteAverage: json["vote_average"],
      voteCount: json["vote_count"],
    );
  }

  Map<String, dynamic> toJson() => {
    "adult": adult,
    "backdrop_path": backdropPath,
    "genre_ids": genreIds.map((x) => x).toList(),
    "id": id,
    "original_language": originalLanguage,
    "original_title": originalTitle,
    "overview": overview,
    "popularity": popularity,
    "poster_path": posterPath,
    "release_date": "${releaseDate?.year.toString().padLeft(4,'0')}-${releaseDate?.month.toString().padLeft(2,'0')}-${releaseDate?.day.toString().padLeft(2,'0')}",
    "title": title,
    "video": video,
    "vote_average": voteAverage,
    "vote_count": voteCount,
  };

  @override
  String toString(){
    return "$adult, $backdropPath, $genreIds, $id, $originalLanguage, $originalTitle, $overview, $popularity, $posterPath, $releaseDate, $title, $video, $voteAverage, $voteCount, ";
  }
}



class MoviesResult {
  MoviesResult({
    required this.page,
    required this.movie,
    required this.totalPages,
    required this.totalResults,
  });

  final int? page;
  final List<MovieModel> movie;
  final int? totalPages;
  final int? totalResults;

  factory MoviesResult.fromJson(Map<String, dynamic> json){
    return MoviesResult(
      page: json["page"],
      movie: json["movie"] == null ? [] : List<MovieModel>.from(json["movie"]!.map((x) => MovieModel.fromJson(x))),
      totalPages: json["total_pages"],
      totalResults: json["total_results"],
    );
  }

  Map<String, dynamic> toJson() => {
    "page": page,
    "movie": movie.map((x) => x?.toJson()).toList(),
    "total_pages": totalPages,
    "total_results": totalResults,
  };

  @override
  String toString(){
    return "$page, $movie, $totalPages, $totalResults, ";
  }
}
