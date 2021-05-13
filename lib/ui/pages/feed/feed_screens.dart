import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/feed/widgets/feed_data.dart';
import 'package:ourglass/ui/pages/feed/widgets/feed_view.dart';
import 'package:ourglass/ui/pages/messaging/messaging_screen.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        title: Text(
          'Feed',
          style: TextStyle(color: darkGrey),
        ),
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
      ),
    );
  }
}
