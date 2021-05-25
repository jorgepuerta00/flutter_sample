import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/feed/widgets/feed_data.dart';
import 'package:ourglass/ui/pages/feed/widgets/feed_view.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/messaging/messaging_screen.dart';
import 'package:ourglass/ui/pages/profile/profile_screen.dart';
import 'package:ourglass/ui/widgets/custom_avatar.dart';
import 'package:ourglass/ui/widgets/custom_gesture_detector.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class FeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomGestureDetector(
        child: Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Container(
            padding: EdgeInsets.only(left: 10), child: Text('[LOGO]')),
        elevation: 0,
        actions: <Widget>[
          Container(
            child: Icon(
              Icons.notifications_none_outlined,
              size: 30,
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: IconButton(
              icon: Icon(Icons.chat_bubble_outline, size: 30),
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MessagingPage())),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 24),
            child: IconButton(
              icon: Icon(
                Icons.person_outline_outlined,
                size: 30,
              ),
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => ProfilePage())),
            ),
          ),
        ],
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: <Widget>[
            SearchTextField(hintText: 'Search'),
            Container(
                padding: const EdgeInsets.only(left: 16, right: 24),
                child: SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: kContacts.length + 1,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      if (index == 0)
                        return CustomAvatar(text: "My Story");
                      else
                        return Container(
                          child: CustomAvatar(
                              avatar: kContacts[index - 1].name[0],
                              text: kContacts[index - 1].name.split(' ')[0]),
                          margin: const EdgeInsets.only(top: 2),
                        );
                    },
                  ),
                )),
            Expanded(
              child: Container(
                child: FeedList(categories: kFeedsbyCategory, primary: true),
              ),
            )
          ],
        ),
      )),
    ));
  }
}
