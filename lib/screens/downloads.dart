import 'package:flutter/material.dart';

class Downloads extends StatelessWidget {
  const Downloads({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.black,
      body:Center(
        child:  Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.download_for_offline_rounded,
              color: Colors.white,
              size: 50,
            ),
            Text(
                    'Downloads',
                    style:  TextStyle(
                        color: Colors.white,
                        fontFamily: 'AmazonEmber',
                        fontSize: 25),
                  ),
          ],
        ),
      ),
    );
  }
}