class MovieModel {
  final String title;
  final String backDropPath;
  final String overview;
  final String posterPath;

  MovieModel(
      {required this.title,
      required this.backDropPath,
      required this.overview,
      required this.posterPath});

  factory MovieModel.formMap(Map<String, dynamic> map) {
    return MovieModel(
      title: map['title'],
      backDropPath: map['backdrop_path'],
      overview: map['overview'],
      posterPath: map['poster_path'],
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'backDropPath': backDropPath,
      'overview': overview,
      'posterPath': posterPath,
    };
  }
}
