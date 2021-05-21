import 'package:flutter/material.dart';
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
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text('Friends'),
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
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: <Widget>[
            SearchTextField(),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ListTile(
                  title: Text('Find friends nearby'),
                  leading: Icon(Icons.location_on_outlined),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => LocationPage()))),
            )),
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ListTile(
                  title: Text('Invite friend'),
                  leading: Icon(Icons.person_add_alt_1_outlined),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => InviteFriendPage()))),
            )),
            Expanded(
                child: Container(
              child: ContactList(kContacts, false, false, (contact) => {}),
            ))
          ],
        ),
      )),
    );
  }
}
