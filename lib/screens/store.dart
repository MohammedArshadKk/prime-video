import 'package:flutter/material.dart';

class Store extends StatelessWidget {
  const Store({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 50,
            ),
            Text(
              'Store',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'AmazonEmber', fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
