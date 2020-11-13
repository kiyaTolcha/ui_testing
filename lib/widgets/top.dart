import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('Following'),
          Container(
            width: 15.0,
          ),
          Text(
            'For you',
            style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
