import 'package:flutter/material.dart';
import 'package:prime/screens/downloads.dart';
import 'package:prime/screens/home.dart';
import 'package:prime/screens/live_tv.dart';
import 'package:prime/screens/search.dart';
import 'package:prime/screens/store.dart';

class BottomNavigation extends StatefulWidget {
   BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
   int _currentIndex=0;

   List<Widget>screens=[
   const HomeScreen(),
    const Store(),
    const LiveTv(),
    const Downloads(),
    const Search()

   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:screens[_currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
        backgroundColor:  Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: const Color.fromARGB(255, 179, 177, 177),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        unselectedLabelStyle:const TextStyle(fontFamily: 'AmazonEmber'),
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Store',    
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.live_tv),
              label: 'Live Tv', 
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.download_for_offline), 
              label: 'Downloads', 
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'search',
              )
      ]),
    );

  }
}