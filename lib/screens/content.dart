import 'package:flutter/material.dart';
import 'package:prime/api/constants.dart';

class Moviecontent extends StatelessWidget {
  final dynamic movie;
  const Moviecontent({
    super.key,
    required this.movie,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 350,
                width: double.infinity,
                child: Image.network(
                  '$imagePath${movie.posterPath}',
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                movie.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'AmazonEmber',
                    fontSize: 20),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                movie.overview,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'AmazonEmber',
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
