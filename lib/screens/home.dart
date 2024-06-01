import 'package:flutter/material.dart';
import 'package:prime/screens/all_content.dart';
import 'package:prime/widgets/appbar_icon.dart';
import 'package:prime/widgets/custom_tab_bar.dart.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Padding(
          padding: EdgeInsets.all(13.0),
          child: AppbarIcon(),
        ),
      ),
      body: const Column(
        children: [
          CustomTabBar(),
          Expanded(child: AllContent()),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(items: [
        
      // ]),
    );
  }
}     