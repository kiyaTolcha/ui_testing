import 'package:flutter/material.dart';
import 'package:ui_testing/widgets/bottom.dart';
import 'package:ui_testing/widgets/middle.dart';
import 'package:ui_testing/widgets/top.dart';

/// Empty page widget fo developers that want to follow along with the tutorial
/// on breaking down and implementing the Tik Tok UI (BLOG_LINK)
class Home extends StatelessWidget {
  Widget get top => Top();
  Widget get middle => Middle();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            //top
            top,
            //middle
            middle,
            //bottom
            Bottom(),
          ],
        ));
  }
}
