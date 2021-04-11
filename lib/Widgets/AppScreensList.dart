import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AppScreensList extends StatefulWidget {
  @override
  _AppScreensListState createState() => _AppScreensListState();
}

class _AppScreensListState extends State<AppScreensList> {
  List<String> _screens = [
    'assets/screen1.png',
    'assets/screen2.png',
    'assets/screen3.png'
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(autoPlay: true, aspectRatio: 1),
      items: _screens.map((e) => Image.asset(e)).toList(),
    );
  }
}
