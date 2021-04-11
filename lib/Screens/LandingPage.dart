import 'package:flutter/material.dart';
import 'package:landingpage/Screens/MobileScreen.dart';
import 'package:landingpage/Screens/ResponsiveUI.dart';
import 'package:landingpage/Screens/WebScreen.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ResponsiveUI(
        mobile: MobileScreen(),
        web: WebScreen(),
      ),
    );
  }
}
