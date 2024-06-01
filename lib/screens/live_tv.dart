import 'package:flutter/material.dart';

class LiveTv extends StatelessWidget {
  const LiveTv({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.live_tv,
              color: Colors.white,
              size: 50,
            ),
            Text(
              'Live Tv',
              style: TextStyle(
                  color: Colors.white, fontFamily: 'AmazonEmber', fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
