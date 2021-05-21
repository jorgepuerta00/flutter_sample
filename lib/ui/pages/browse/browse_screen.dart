import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/channels/channel_screen.dart';
import 'package:ourglass/ui/pages/feed/widgets/feed_data.dart';
import 'package:ourglass/ui/pages/feed/widgets/feed_view.dart';
import 'package:ourglass/ui/pages/media/audio_widget.dart';
import 'package:ourglass/ui/pages/media/video_widget.dart';
import 'package:ourglass/ui/widgets/custom_gesture_detector.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class BrowsePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomGestureDetector(
        child: Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: false,
        leadingWidth: 0.0,
        title: Container(
            padding: EdgeInsets.only(left: 10), child: Text('Search')),
        elevation: 0,
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: <Widget>[
            SearchTextField(),
            Container(
              height: 50.0,
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Padding(padding: const EdgeInsets.only(right: 24.0)),
                  new CustomText(
                      text: "Browse all",
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold)
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => VideoPage())),
                          child: Card(
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 120,
                                  width: 170,
                                  color: Colors.black12,
                                  child: CustomText(
                                      text: 'Videos',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)))),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => AudioPage())),
                          child: Card(
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 120,
                                  width: 170,
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
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => ChannelPage())),
                          child: Card(
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 120,
                                  width: 170,
                                  color: Colors.black12,
                                  child: CustomText(
                                      text: 'Channels',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)))),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                          onTap: () => Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => AudioPage())),
                          child: Card(
                              child: Container(
                                  alignment: Alignment.center,
                                  height: 120,
                                  width: 170,
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
            ),
            Expanded(
              child: Container(
                child: FeedList(kFeedsbyCategory),
              ),
            )
          ],
        ),
      )),
    ));
  }
}
