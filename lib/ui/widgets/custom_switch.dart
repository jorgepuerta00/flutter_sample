import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  final String title;
  final String subtitle;
  final Function onPressed;
  const CustomSwitch({this.title, this.subtitle, this.onPressed});
  @override
  _CustomSwitch createState() => new _CustomSwitch(title, subtitle, onPressed);
}

class _CustomSwitch extends State<CustomSwitch> {
  bool isSwitched = false;
  _CustomSwitch(String title, String subtitle, Function onPressed);

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: ListTile(
        title: Text(widget.title),
        subtitle: Text(widget.subtitle),
        trailing: CupertinoSwitch(
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
