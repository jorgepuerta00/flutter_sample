import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/friends/friend_add_screen.dart';
import 'package:ourglass/ui/pages/friends/friend_nearby_screen.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class MessagingPage extends StatelessWidget {
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
          'Messages',
          style: TextStyle(color: darkGrey),
        ),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: IconButton(
              icon: Icon(Icons.edit, size: 30),
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => AddFriendPage())),
            ),
          ),
        ],
      ),
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: ListView(
            children: <Widget>[
              SearchTextField(),
              ListTile(
                  title: Text('Join groups'),
                  leading: Icon(Icons.group_add),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NearbyFriendPage()))),
              Container(
                margin: EdgeInsets.all(5.0),
                height: MediaQuery.of(context).size.height * 0.7,
                width: MediaQuery.of(context).size.width,
                child: ContactList(kContacts, false, true, () => {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
