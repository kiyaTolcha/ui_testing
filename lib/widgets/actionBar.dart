import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionBar extends StatelessWidget {
  static const double ActionWidgetSize = 60.0;
  static const double ActionIconSize = 35.0;
  static const double ShareIconSize = 35.0;
  static const double ProfileImageSize = 50.0;
  static const double PlusIconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _getFollowAction(),
            _getSocialAction(title: '3.2m', icon: CupertinoIcons.heart),
            _getSocialAction(title: '14.9k', icon: CupertinoIcons.chat_bubble),
            _getSocialAction(
                title: 'Share', icon: CupertinoIcons.share, isShare: true),
            _getMusicPlayerAction()
          ],
        ));
  }

  Widget _getSocialAction({String title, IconData icon, bool isShare = false}) {
    return Container(
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: isShare ? ShareIconSize : ActionIconSize,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.only(top: isShare ? 5.0 : 2.0),
            child: Text(
              title,
              style: TextStyle(fontSize: isShare ? 10.0 : 12.0),
            ),
          )
        ],
      ),
    );
  }

  Widget _getFollowAction() {
    return Container(
      height: ActionWidgetSize,
      width: ActionWidgetSize,
      child: Stack(
        children: [_getProfilePicture(), _getPlusIcon()],
      ),
    );
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ((ActionWidgetSize / 2) - (PlusIconSize / 2)),
      child: Container(
        width: PlusIconSize,
        height: PlusIconSize,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 43, 84),
            borderRadius: BorderRadius.circular(15.0)),
        child: Icon(Icons.add, color: Colors.white, size: 20),
      ),
    );
  }

  Widget _getProfilePicture() {
    return Positioned(
      left: (ActionWidgetSize / 2 - (ProfileImageSize / 2)),
      child: Container(
        height: ProfileImageSize,
        width: ProfileImageSize,
        padding: EdgeInsets.all(1.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
        child: CachedNetworkImage(
          imageUrl: "https://robohash.org/999991",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }

  LinearGradient get musicGradient => LinearGradient(colors: [
        Colors.grey[800],
        Colors.grey[900],
        Colors.grey[900],
        Colors.grey[800],
      ]);

  Widget _getMusicPlayerAction() {
    return Container(
      height: ActionWidgetSize,
      width: ActionWidgetSize,
      margin: EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(11.0),
            height: ProfileImageSize,
            width: ProfileImageSize,
            decoration: BoxDecoration(
                gradient: musicGradient,
                borderRadius: BorderRadius.circular(ProfileImageSize / 2)),
            child: CachedNetworkImage(
              imageUrl: "https://robohash.org/999991",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => new Icon(Icons.error),
            ),
          )
        ],
      ),
    );
  }
}
