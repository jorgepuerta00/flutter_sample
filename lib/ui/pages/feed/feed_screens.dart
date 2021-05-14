import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/feed/widgets/feed_data.dart';
import 'package:ourglass/ui/pages/feed/widgets/feed_view.dart';
import 'package:ourglass/ui/pages/messaging/messaging_screen.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text('Feed'),
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: Icon(
            Icons.notifications_none_outlined,
            size: 30,
          ),
        ),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 24),
            child: IconButton(
              icon: Icon(Icons.chat_bubble_outline, size: 30),
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MessagingPage())),
            ),
          ),
        ],
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: <Widget>[
            SearchTextField(),
            Expanded(
              child: Container(
                child: FeedList(kFeedsbyCategory),
              ),
            )
          ],
        ),
      )),
    );
  }
}
