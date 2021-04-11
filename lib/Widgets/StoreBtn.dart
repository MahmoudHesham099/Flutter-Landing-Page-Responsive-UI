import 'package:flutter/material.dart';
import 'package:landingpage/Screens/ResponsiveUI.dart';

class StoreBtn extends StatelessWidget {
  final String image;
  final String text;

  const StoreBtn({Key key, this.image, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: ResponsiveUI.isLessThan480(context) ? 160 : 180,
        height: 40,
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              image,
              width: ResponsiveUI.isLessThan480(context) ? 25 : 30,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: ResponsiveUI.isLessThan480(context) ? 13 : 15,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
