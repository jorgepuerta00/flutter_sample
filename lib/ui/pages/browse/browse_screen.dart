import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/browse/widgets/shortcuts_widget.dart';
import 'package:ourglass/ui/pages/feed/widgets/feed_data.dart';
import 'package:ourglass/ui/pages/feed/widgets/feed_view.dart';
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
      body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SearchTextField(hintText: 'Artists, videos or music'),
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
                ShortcutsWidget(),
                Container(
                  child: FeedList(categories: kFeedsbyCategory, primary: false),
                ),
              ],
            ),
          )),
    ));
  }
}
