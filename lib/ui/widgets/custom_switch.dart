import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final String title;
  final String subtitle;
  final isSwitched;
  final Function onPressed;
  const CustomSwitch(
      {this.title, this.subtitle, this.isSwitched, this.onPressed});
  @override
  _CustomSwitch createState() =>
      new _CustomSwitch(title, subtitle, isSwitched, onPressed);
}

class _CustomSwitch extends State<CustomSwitch> {
  bool isSwitched = false;
  _CustomSwitch(
      String title, String subtitle, bool isSwitched, Function onPressed);

  @override
  Widget build(BuildContext context) {
    isSwitched = widget.isSwitched;
    return MergeSemantics(
      child: ListTile(
        title: Text(widget.title),
        subtitle: Text(widget.subtitle),
        trailing: CupertinoSwitch(
          activeColor: Colors.blueAccent,
          value: isSwitched,
          onChanged: (bool value) {
            setState(() {
              isSwitched = value;
            });
            callback();
          },
        ),
        onTap: () {
          setState(() {
            isSwitched = !isSwitched;
          });
          callback();
        },
      ),
    );
  }

  void callback() {
    widget.onPressed();
  }
}
