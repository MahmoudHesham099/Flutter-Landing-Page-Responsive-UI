import 'package:flutter/material.dart';
import 'package:landingpage/Modules/Data.dart';
import 'package:landingpage/Modules/Event.dart';
import 'package:landingpage/Screens/ResponsiveUI.dart';

import 'EventContainer.dart';

class TopEvents extends StatelessWidget {
  List<Widget> eventsWidgets() {
    List<Widget> events = [];
    for (Event event in topEvents) {
      events.add(
        EventContainer(
          event: event,
        ),
      );
    }
    return events;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: ResponsiveUI.isLessThan1250(context) ? 40 : 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Text(
            'TopEvents',
            style: TextStyle(
              fontSize: 35,
            ),
          ),
          SizedBox(height: 40),
          Wrap(
            runSpacing: 50,
            spacing: MediaQuery.of(context).size.width * 0.1,
            children: eventsWidgets(),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
