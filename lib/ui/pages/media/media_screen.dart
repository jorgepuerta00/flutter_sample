import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class MediaPage extends StatelessWidget {
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
          'Audiovisual',
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
            child: Icon(
              Icons.chat_bubble_outline,
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
            ],
          ),
        ),
      ),
    );
  }
}
