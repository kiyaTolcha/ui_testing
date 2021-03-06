import 'package:flutter/material.dart';

class VideoDes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 70.0,
      padding: EdgeInsets.only(left: 20.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '@firstMe',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('Video title and some other stuff'),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                size: 15.0,
              ),
              Text(
                'Artist name - Album name - song',
                style: TextStyle(fontSize: 12.0),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
