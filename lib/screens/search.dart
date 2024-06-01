import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              color: Colors.white,
              size: 50,
            ),
            Text(
              'Search',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'AmazonEmber', fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
