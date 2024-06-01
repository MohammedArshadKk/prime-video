import 'package:flutter/material.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  String selectedCategory = 'All';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,  
      width: double.infinity,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Row(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  selectedCategory = 'All';
                });
              },
              child: Container(
                height: 40,
                width: 60,
                decoration: BoxDecoration(
                    color:
                        selectedCategory == 'All' ? Colors.white : Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    'All',
                    style: TextStyle(
                      color: selectedCategory == 'All'
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,  
                      fontFamily: 'AmazonEmber',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedCategory = 'Movies';
                });
              },
              child: Container(
                height: 40,
                width: 70,
                decoration: BoxDecoration(
                    color: selectedCategory == 'Movies'
                        ? Colors.white
                        : Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    'Movies',
                    style: TextStyle(
                      color: selectedCategory == 'Movies'
                          ? Colors.black
                          : Colors.white, 
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      fontFamily: 'AmazonEmber',
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedCategory = 'Tv shows';
                });
              },
              child: Container(
                height: 40,
                width: 90,
                decoration: BoxDecoration(
                    color: selectedCategory == 'Tv shows'
                        ? Colors.white
                        : Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    'Tv shows',
                    style: TextStyle(
                      color: selectedCategory == 'Tv shows'
                          ? Colors.black
                          : Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      fontFamily: 'AmazonEmber',
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
