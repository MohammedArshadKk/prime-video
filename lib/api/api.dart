import 'package:prime/api/constants.dart';
import 'package:prime/api/get.dart';
import 'package:prime/model/movie_model.dart';
import 'package:prime/model/tvshow.dart';

class Api {
  final trendingUrl = 'https://api.themoviedb.org/3/trending/movie/day?api_key=$apiKey';
  final popularUrl = 'https://api.themoviedb.org/3/movie/popular?api_key=$apiKey';
  final tvPopularUrl = 'https://api.themoviedb.org/3/tv/popular?api_key=$apiKey';
  final tvTrendingUrl = 'https://api.themoviedb.org/3/trending/tv/day?api_key=$apiKey';
  final tvSeriesUrl = 'https://api.themoviedb.org/3/tv/top_rated?api_key=$apiKey';
  final topRatedUrl = 'https://api.themoviedb.org/3/movie/top_rated?api_key=$apiKey';
  final upcomingUrl = 'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey';

  Future<List<MovieModel>> getAllTrendingMovie() async {
    final decodedData = await get(trendingUrl);
    return decodedData.map((e) => MovieModel.formMap(e)).toList();
  }

  Future<List<MovieModel>> getAllPopularMovie() async {
    final decodedData = await get(popularUrl);
    return decodedData.map((e) => MovieModel.formMap(e)).toList();
  }

  Future<List<TvShows>> getAllPopularTvshows() async {
    final decodedData = await get(tvPopularUrl);
    return decodedData.map((e) => TvShows.formMap(e)).toList();
  }

  Future<List<TvShows>> getAllTrendingTvshows() async {
    final decodedData = await get(tvTrendingUrl);
    return decodedData.map((e) => TvShows.formMap(e)).toList();
  }

  Future<List<TvShows>> getAllTvseries() async {
    final decodedData = await get(tvSeriesUrl);
    return decodedData.map((e) => TvShows.formMap(e)).toList();
  }

  Future<List<MovieModel>> getAllRatedMovies() async {
    final decodedData = await get(topRatedUrl);
    return decodedData.map((e) => MovieModel.formMap(e)).toList();
  }

  Future<List<MovieModel>> getAllUpcomingMovies() async {
    final decodedData = await get(upcomingUrl);
    return decodedData.map((e) => MovieModel.formMap(e)).toList();
  }
}
