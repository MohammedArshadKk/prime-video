import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:prime/api/api.dart';
import 'package:prime/model/movie_model.dart';
import 'package:prime/widgets/carousel_slider.dart';
import 'package:prime/widgets/custom_horizontal_list.dart';
import 'package:prime/widgets/custom_text.dart';

class AllContent extends StatefulWidget {
  const AllContent({Key? key});

  @override
  _AllContentState createState() => _AllContentState();
}

late Future<List<MovieModel>> trendingMovie;
late Future<List<MovieModel>> popularMovie;

class _AllContentState extends State<AllContent> {
  @override
  void initState() {
    super.initState();
    trendingMovie = Api().getAllTrendingMovie();
    popularMovie = Api().getAllPopularMovie();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            child: FutureBuilder(
              future: trendingMovie,
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
          const CustomText(text: 'Prime - All time favourites >'),
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
          const CustomText(text: 'Prime - Filmfare OTT Award Winners >'),
          FutureBuilder(
            future: trendingMovie,
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
          const CustomText(text: 'Prime - Amazon Original series >'),
          FutureBuilder(
            future: popularMovie,
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
            future: trendingMovie,
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
