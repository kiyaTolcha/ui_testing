import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottom extends StatelessWidget {
  static const double NavigationIconsSize = 20.0;
  static const double CreateButtonWidth = 38.0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.home, color: Colors.white, size: NavigationIconsSize),
        Icon(Icons.search, color: Colors.white, size: NavigationIconsSize),
        customCreateIcon,
        Icon(Icons.message, color: Colors.white, size: NavigationIconsSize),
        Icon(
          Icons.person,
          color: Colors.white,
          size: NavigationIconsSize,
        )
      ],
    );
  }

  Widget get customCreateIcon => Container(
        width: 45.0,
        height: 27.0,
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10.0),
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 250, 45, 108),
                  borderRadius: BorderRadius.circular(7.0)),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              width: CreateButtonWidth,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 32, 211, 234),
                borderRadius: BorderRadius.circular(7.0),
              ),
            ),
            Center(
              child: Container(
                height: double.infinity,
                width: CreateButtonWidth,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7.0)),
                child: Icon(
                  Icons.add,
                  size: 20.0,
                ),
              ),
            )
          ],
        ),
      );
}
