import 'package:flutter/material.dart';
import 'package:landingpage/Screens/ResponsiveUI.dart';
import 'package:landingpage/Widgets/AppScreensList.dart';
import 'package:landingpage/Widgets/FeedScreen.dart';
import 'package:landingpage/Widgets/NavBar.dart';
import 'package:landingpage/Widgets/TopEvents.dart';

class MobileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NavBar(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          padding: EdgeInsets.all(
            ResponsiveUI.isLessThan480(context) ? 25 : 40,
          ),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Column(
            children: [
              FeedScreen(),
              SizedBox(height: 30),
              Container(
                width: 500,
                child: AppScreensList(),
              ),
            ],
          ),
        ),
        SizedBox(height: 10),
        TopEvents(),
      ],
    );
  }
}
