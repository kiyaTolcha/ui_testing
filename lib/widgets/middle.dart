import 'package:flutter/widgets.dart';
import 'package:ui_testing/widgets/actionBar.dart';
import 'package:ui_testing/widgets/videoDes.dart';

class Middle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [VideoDes(), ActionBar()],
      ),
    );
  }
}
