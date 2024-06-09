import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:prime/api/api.dart';
import 'package:prime/model/movie_model.dart';
import 'package:prime/widgets/carousel_slider.dart';
import 'package:prime/widgets/custom_horizontal_list.dart';
import 'package:prime/widgets/custom_text.dart';

class MoviesScreen extends StatefulWidget {
  const MoviesScreen({super.key});

  @override
  _MoviesScreenState createState() => _MoviesScreenState();
}

late Future<List<MovieModel>> trendingMovie;
late Future<List<MovieModel>> popularMovie;
late Future<List<MovieModel>> topRatedMovie;
late Future<List<MovieModel>> upcomingMovie;

class _MoviesScreenState extends State<MoviesScreen> {
  @override
  void initState() {
    super.initState();
    trendingMovie = Api().getAllTrendingMovie();
    popularMovie = Api().getAllPopularMovie();
    topRatedMovie=Api().getAllRatedMovies();
    upcomingMovie=Api().getAllUpcomingMovies();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: FutureBuilder(
              future: topRatedMovie,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString());
                } else if (snapshot.hasData) {
                  return CarouselSliderWidget(snapshot: snapshot);
                } else {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          ),
          const CustomText(text: 'Top 10 movies '),
          FutureBuilder(
            future: popularMovie,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else if (snapshot.hasData) {
                return CustomHorizontalList(
                  height: 120,
                  width: 200,
                  borderRadius: 10,
                  snapshot: snapshot,
                );
              } else {
                return const SpinKitThreeInOut(
                  color: Colors.white,
                  size: 50.0,
                );
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(text: 'Prime - Upcoming movies >'),
          FutureBuilder(
            future: upcomingMovie,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else if (snapshot.hasData) {
                return CustomHorizontalList(
                  height: 120,
                  width: 200,
                  borderRadius: 10,
                  snapshot: snapshot,
                );
              } else {
                return const SpinKitThreeInOut(
                  color: Colors.white,
                  size: 50.0,
                );
              }
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(text: 'Prime - Amazon Original movies >'),
          FutureBuilder(
            future: trendingMovie,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else if (snapshot.hasData) {
                return CustomHorizontalList(
                  height: 200,
                  width: 150,
                  borderRadius: 10,
                  snapshot: snapshot,
                );
              } else {
                return const SpinKitThreeInOut(
                  color: Colors.white,
                  size: 50.0,
                );
              }
            },
          ),
          const CustomText(text: "Prime - Recommended movies "),
          FutureBuilder(
            future: upcomingMovie,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text(snapshot.error.toString());
              } else if (snapshot.hasData) {
                return CustomHorizontalList(
                  height: 120,
                  width: 200,
                  borderRadius: 10,
                  snapshot: snapshot,
                );
              } else {
                return const SpinKitThreeInOut(
                  color: Colors.white,
                  size: 50.0,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
