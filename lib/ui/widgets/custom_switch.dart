import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchScreen extends StatefulWidget {
  @override
  SwitchClass createState() => new SwitchClass();
}

class SwitchClass extends State {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: isSwitched,
      activeColor: Colors.blue,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
    );
  }
}
