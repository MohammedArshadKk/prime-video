import 'package:flutter/material.dart';
import 'package:prime/api/constants.dart';
import 'package:prime/screens/content.dart';

class CustomHorizontalList extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  final AsyncSnapshot snapshot;

  const CustomHorizontalList(
      {super.key,
      required this.height,
      required this.width,
      required this.borderRadius,
      required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: snapshot.data.length,
          itemBuilder: (ctx, index) {
            return InkWell(
                 onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => Moviecontent(
                          movie: snapshot.data[index],
                          
                        )));
          },
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 19),
                  child: Container(
                    width: width,
                    height: height,
                    decoration: BoxDecoration(
                        color: Colors.black54,
                        borderRadius: BorderRadius.circular(borderRadius)),
                     child:Image.network('$imagePath${snapshot.data[index].posterPath}',fit: BoxFit.fill,) ,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
