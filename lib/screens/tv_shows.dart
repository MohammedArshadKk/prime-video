import 'package:flutter/material.dart';
import 'package:prime/api/api.dart';
import 'package:prime/model/tvshow.dart';
import 'package:prime/widgets/carousel_slider.dart';
import 'package:prime/widgets/custom_horizontal_list.dart';
import 'package:prime/widgets/custom_text.dart';

class TvShowsScreen extends StatefulWidget {
  const TvShowsScreen({super.key});

  @override
  State<TvShowsScreen> createState() => _TvShowsScreenState();
}
late Future<List<TvShows>> popularTvshows;
late Future<List<TvShows>> trendingTvshows;
late Future<List<TvShows>> tvSeries;
class _TvShowsScreenState extends State<TvShowsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    popularTvshows=Api().getAllPopularTvshows();
    trendingTvshows=Api().getAllTrendingTvshows();
    tvSeries=Api().getAllTvseries();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder(future: popularTvshows, builder: (ctx ,snapshot){
              if (snapshot.hasError) {
                 return Text(snapshot.error.toString());  
              }else if(snapshot.hasData){
                return CarouselSliderWidget(snapshot: snapshot);
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            }),
           const SizedBox(height: 10,),
          const CustomText(text: "Prime - Tv shows we think you'll like"), 
           FutureBuilder(future: trendingTvshows, builder: (ctx ,snapshot){
              if (snapshot.hasError) {
                 return Text(snapshot.error.toString());
              }else if(snapshot.hasData){
                return CustomHorizontalList(height: 120, width: 200, borderRadius: 10, snapshot: snapshot);
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            }),
           const SizedBox(height: 10,),
          const CustomText(text: "Top 10 Tv shows"), 
           FutureBuilder(future: popularTvshows, builder: (ctx ,snapshot){
              if (snapshot.hasError) {
                 return Text(snapshot.error.toString());
              }else if(snapshot.hasData){
                return CustomHorizontalList(height: 120, width: 200, borderRadius: 10, snapshot: snapshot);
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            }),
           const SizedBox(height: 10,),
          const CustomText(text: "Prime - latest Tv >"), 
           FutureBuilder(future: trendingTvshows, builder: (ctx ,snapshot){
              if (snapshot.hasError) {
                 return Text(snapshot.error.toString());
              }else if(snapshot.hasData){
                return CustomHorizontalList(height: 120, width: 200, borderRadius: 10, snapshot: snapshot);
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            }),
           const SizedBox(height: 10,),
          const CustomText(text: "Prime - Amazone Original series>"), 
           FutureBuilder(future: tvSeries, builder: (ctx ,snapshot){
              if (snapshot.hasError) {
                 return Text(snapshot.error.toString());
              }else if(snapshot.hasData){
                return CustomHorizontalList(height: 200, width: 150, borderRadius: 10, snapshot: snapshot);
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            }),
           const SizedBox(height: 10,),
          const CustomText(text: "Prime - Kid and family TV>"), 
           FutureBuilder(future: tvSeries, builder: (ctx ,snapshot){
              if (snapshot.hasError) {
                 return Text(snapshot.error.toString());
              }else if(snapshot.hasData){
                return CustomHorizontalList(height: 120, width: 200, borderRadius: 10, snapshot: snapshot);
              }else{
                return const Center(child: CircularProgressIndicator(),);
              }
            }),
          ],
        ),
      ),
    );
  }
}