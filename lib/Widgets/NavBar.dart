import 'package:flutter/material.dart';
import 'package:landingpage/Screens/ResponsiveUI.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 80,
      padding: EdgeInsets.symmetric(
          horizontal: ResponsiveUI.isLessThan900(context) ? 70 : 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.event,
            size: 50,
            color: Colors.red,
          ),
          ResponsiveUI.isLessThan900(context)
              ? PopupMenuButton(
                  child: Icon(
                    Icons.menu,
                    color: Colors.black,
                    size: 35,
                  ),
                  itemBuilder: (_) {
                    return <PopupMenuItem>[
                      PopupMenuItem(
                        child: Text('Home'),
                        value: 'home',
                      ),
                      PopupMenuItem(
                        child: Text('About'),
                        value: 'about',
                      ),
                      PopupMenuItem(
                        child: Text('Features'),
                        value: 'Features',
                      ),
                      PopupMenuItem(
                        child: Text('Download'),
                        value: 'Download',
                      ),
                    ];
                  },
                  onSelected: (value) {},
                )
              : Row(
                  children: [
                    Text('Home'),
                    SizedBox(width: 30),
                    Text('About'),
                    SizedBox(width: 30),
                    Text('Features'),
                    SizedBox(width: 30),
                    Text('Download'),
                  ],
                )
        ],
      ),
    );
  }
}
