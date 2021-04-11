import 'package:flutter/material.dart';
import 'package:landingpage/Screens/ResponsiveUI.dart';
import 'package:landingpage/Widgets/AppScreensList.dart';
import 'package:landingpage/Widgets/FeedScreen.dart';
import 'package:landingpage/Widgets/NavBar.dart';
import 'package:landingpage/Widgets/TopEvents.dart';

class WebScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NavBar(),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 100,
          margin: EdgeInsets.symmetric(
            horizontal: ResponsiveUI.isLessThan1250(context) ? 20 : 100,
          ),
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FeedScreen(),
              Container(
                width: ResponsiveUI.isLessThan1250(context) ? 350 : 400,
                height: ResponsiveUI.isLessThan1250(context) ? 500 : 550,
                child: AppScreensList(),
              ),
            ],
          ),
        ),
        TopEvents(),
      ],
    );
  }
}
