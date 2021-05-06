import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/friends/friend_add_screen.dart';
import 'package:ourglass/ui/pages/friends/friend_invite.dart';
import 'package:ourglass/ui/pages/friends/friend_location.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class FriendPage extends StatelessWidget {
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
          'Friends',
          style: TextStyle(color: darkGrey),
        ),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: IconButton(
              icon: Icon(Icons.add, size: 30),
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
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                    title: Text('Find friends nearby'),
                    leading: Icon(Icons.location_on_outlined),
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => LocationPage()))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: ListTile(
                    title: Text('Invite friend'),
                    leading: Icon(Icons.person_add_alt_1_outlined),
                    onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => InviteFriendPage()))),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.7,
                child: ContactList(kContacts, false, false, () => {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
