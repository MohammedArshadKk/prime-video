class TvShows {
  final String title;
  final String overview;
  final String posterPath;

  TvShows(
      {required this.title, required this.overview, required this.posterPath});
  factory TvShows.formMap(Map<String, dynamic> map) {
    return TvShows(
        title: map['original_name'],
        overview: map['overview'],
        posterPath: map['poster_path']);
  }
  // Map<String, dynamic> toMap() {
  //   return {'title': title, 'overview': overview, 'posterPath': posterPath};
  // }
}
