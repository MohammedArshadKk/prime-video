import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart'as http;
import 'package:prime/api/constants.dart';
import 'package:prime/model/movie_model.dart';

class Api {
  final trendingUrl='https://api.themoviedb.org/3/trending/movie/day?api_key=$apiKey';
  final popularUrl='https://api.themoviedb.org/3/movie/popular?api_key=$apiKey';
  final tvPopularUrl='https://api.themoviedb.org/3/tv/popular?api_key=$apiKey';

  Future<List<MovieModel>>getAllTrendingMovie()async{
    final response=await http.get(Uri.parse(trendingUrl));
    if (response.statusCode==200) {
      final decodedData= jsonDecode(response.body)['results']as List;
      log('$decodedData');
      return decodedData.map((e)=>MovieModel.formMap(e)).toList();
    }else{
      throw Exception('error');
    }
  }
  Future<List<MovieModel>>getAllPopularMovie()async{
     final res=await http.get(Uri.parse(popularUrl));
     if (res.statusCode==200) {
       final decodedData=jsonDecode(res.body)['results']as List;
       return decodedData.map((e)=>MovieModel.formMap(e)).toList();
     }
    throw Exception('error');
  }
  Future<List<MovieModel>>getAllPopularTvshows()async{
    final res=await http.get(Uri.parse(tvPopularUrl));
    if (res.statusCode==200) {
      final decodedData=jsonDecode(res.body)['results']as List;
      return decodedData.map((e)=>MovieModel.formMap(e)).toList();
    }
    throw Exception('error');
  }
} 