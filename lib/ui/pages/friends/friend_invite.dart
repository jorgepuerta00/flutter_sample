import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class InviteFriendPage extends StatefulWidget {
  @override
  _InviteFriendPage createState() => new _InviteFriendPage();
}

class _InviteFriendPage extends State<InviteFriendPage> {
  bool pressed = false;

  _changePressed() {
    setState(() {
      pressed = !pressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text('Invite friends'),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.close,
              size: 30,
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
              flex: 1,
              child: ContactList(kContacts, true, false, _changePressed),
            )
          ],
        ),
      )),
    );
  }
}
