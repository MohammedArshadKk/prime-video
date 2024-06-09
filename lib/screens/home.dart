import 'package:flutter/material.dart';
import 'package:prime/screens/all_content.dart';
import 'package:prime/screens/movies.dart';
import 'package:prime/screens/tv_shows.dart';
import 'package:prime/widgets/appbar_icon.dart';
import 'package:prime/widgets/custom_tab_bar.dart.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';
  categoryselected(category) {
    setState(() {
      selectedCategory = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.all(13.0),
          child: AppbarIcon(),
        ),
      ),
      body: Column(
        children: [
          CustomTabBar(
            onCategorySelected: categoryselected,
          ),
          Expanded(child: showSelectedScreen(selectedCategory)),
        ],
      ),
    );
  }
}

showSelectedScreen(String category) {
  switch (category) {
    case 'Movies':
      return const MoviesScreen();
    case 'Tv shows':
      return const TvShowsScreen();
    default:
      return const AllContent();
  }
}
