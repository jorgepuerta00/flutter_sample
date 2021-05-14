import 'package:flutter/material.dart';

class CreateChannelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Create channel'),
          elevation: 0),
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[]),
      ),
    );
  }
}
