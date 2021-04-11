import 'package:flutter/material.dart';
import 'package:landingpage/Screens/ResponsiveUI.dart';
import 'package:landingpage/Widgets/DataContainer.dart';
import 'package:landingpage/Widgets/StoreBtn.dart';

class FeedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Powerfull Events\nExplorer Feed',
                style: TextStyle(
                  fontSize: ResponsiveUI.isLessThan1250(context) ? 50 : 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40),
              Container(
                width: ResponsiveUI.isLessThan900(context)
                    ? double.infinity
                    : ResponsiveUI.isLessThan1250(context)
                        ? 500
                        : 600,
                child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                  style: TextStyle(
                    fontSize: ResponsiveUI.isLessThan1250(context) ? 15 : 17,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  StoreBtn(
                    image: 'assets/appStore.png',
                    text: 'Download on the\nApp Store',
                  ),
                  SizedBox(width: 20),
                  StoreBtn(
                    image: 'assets/playStore.png',
                    text: 'Get it on\nGoogle Play',
                  ),
                ],
              ),
              SizedBox(height: 40),
            ],
          ),
          Row(
            mainAxisAlignment: ResponsiveUI.isLessThan900(context)
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.spaceBetween,
            children: [
              DataContainer(
                number: '10,000',
                type: "Users",
              ),
              ResponsiveUI.isLessThan900(context)
                  ? SizedBox.shrink()
                  : SizedBox(width: 30),
              DataContainer(
                number: '8,705',
                type: "Downloads",
              ),
              ResponsiveUI.isLessThan900(context)
                  ? SizedBox.shrink()
                  : SizedBox(width: 30),
              DataContainer(
                number: '25,367',
                type: "Events",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
