import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prime/api/constants.dart';
import 'package:prime/screens/content.dart';

class CarouselSliderWidget extends StatefulWidget {
  const CarouselSliderWidget({super.key, required this.snapshot});
  final AsyncSnapshot snapshot;
  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          options: CarouselOptions(
            height: 230,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            scrollDirection: Axis.horizontal,
            viewportFraction: 1.0,
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          itemCount: widget.snapshot.data.length,
          itemBuilder: (context, index, realIndex) {
            return InkWell(
                 onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (ctx) => Moviecontent(
                          movie: widget.snapshot.data[index], 
                          
                        )));
          },
              child: SizedBox(
                width: double.infinity,
                child: Image.network(
                  '$imagePath${widget.snapshot.data[index].posterPath}',
                  fit: BoxFit.fill,
                  filterQuality: FilterQuality.medium,
                ),
              ),
            );
          },
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.snapshot.data.length, (index) {
            return Container(
              width: 8.0,
              height: 8.0,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? Colors.white : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}
