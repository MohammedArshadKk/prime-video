import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
 const  CustomText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.only(left: 25),      
          child: Row(
            children: [
              Text(text,style: const TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: 'AmazonEmber',
                fontWeight: FontWeight.bold
               ),),
            ],
          ),
        );
  }
}