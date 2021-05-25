import 'package:flutter/material.dart';

class DownloadsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Help & Support'),
          elevation: 0),
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[]),
      ),
    );
  }
}
