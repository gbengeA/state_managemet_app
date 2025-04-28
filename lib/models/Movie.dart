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