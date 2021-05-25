import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/channels/channel_screen.dart';
import 'package:ourglass/ui/pages/media/audio_widget.dart';
import 'package:ourglass/ui/pages/media/video_widget.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class ShortcutsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => VideoPage())),
                  child: Card(
                      child: Container(
                          alignment: Alignment.center,
                          height: 120,
                          width: 175,
                          color: Colors.black12,
                          child: CustomText(
                              text: 'Videos',
                              fontWeight: FontWeight.bold,
                              fontSize: 18)))),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => AudioPage())),
                  child: Card(
                      child: Container(
                          alignment: Alignment.center,
                          height: 120,
                          width: 175,
                          color: Colors.black12,
                          child: CustomText(
                              text: 'Audios',
                              fontWeight: FontWeight.bold,
                              fontSize: 18)))),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              GestureDetector(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ChannelPage())),
                  child: Card(
                      child: Container(
                          alignment: Alignment.center,
                          height: 120,
                          width: 175,
                          color: Colors.black12,
                          child: CustomText(
                              text: 'Channels',
                              fontWeight: FontWeight.bold,
                              fontSize: 18)))),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => AudioPage())),
                  child: Card(
                      child: Container(
                          alignment: Alignment.center,
                          height: 120,
                          width: 175,
                          color: Colors.black12,
                          child: CustomText(
                              text: 'Live',
                              fontWeight: FontWeight.bold,
                              fontSize: 18)))),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
