import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/channels/create_channel.dart';
import 'package:ourglass/ui/pages/channels/widgets/channel_data.dart';
import 'package:ourglass/ui/pages/channels/widgets/channel_view.dart';
import 'package:ourglass/ui/pages/friends/friend_location.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class ChannelPage extends StatelessWidget {
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
          'Channels',
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
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.person,
                    size: 30,
                  ),
                  CustomText(
                    text: 'My Channel',
                    color: grey,
                  )
                ],
              )),
        ],
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView(
            children: <Widget>[
              SearchTextField(),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                    title: Text('Find nearby'),
                    leading: Icon(Icons.location_on_outlined),
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => LocationPage()))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                    title: Text('Create channel'),
                    leading: Icon(Icons.rss_feed),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (_) => CreateChannelPage()))),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ChannelList(kChannels),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
