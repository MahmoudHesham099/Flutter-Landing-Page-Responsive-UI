import 'package:flutter/material.dart';
import 'package:landingpage/Screens/LandingPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Netverbatim'),
      home: LandingPage(),
    );
  }
}
