import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        title: Text(
          'Invite friends',
          style: TextStyle(color: darkGrey),
        ),
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
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView(
            children: <Widget>[
              SearchTextField(),
              Container(
                height: MediaQuery.of(context).size.height * 0.8,
                child: ContactList(kContacts, true, false, _changePressed),
              )
            ],
          ),
        ),
      ),
    );
  }
}
