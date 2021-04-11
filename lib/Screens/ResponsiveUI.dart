import 'package:flutter/material.dart';

class ResponsiveUI extends StatelessWidget {
  final Widget mobile;
  final Widget web;

  const ResponsiveUI({Key key, this.mobile, this.web}) : super(key: key);

  static bool isLessThan1250(BuildContext context) {
    return MediaQuery.of(context).size.width < 1250;
  }

  static bool isLessThan900(BuildContext context) {
    return MediaQuery.of(context).size.width < 900;
  }

  static bool isLessThan480(BuildContext context) {
    return MediaQuery.of(context).size.width < 480;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, cons) {
      if (cons.maxWidth >= 900) {
        return web;
      } else {
        return mobile;
      }
    });
  }
}
