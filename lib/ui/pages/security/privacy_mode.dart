import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_switch.dart';

class EditPrivacyModePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Privacy Mode'),
          elevation: 0),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
            child: Column(
              children: <Widget>[
                Divider(),
                CustomSwitch(
                    title: 'Private Mode',
                    subtitle: 'Mode short description',
                    isSwitched: false,
                    onPressed: () => print("CustomSwitch")),
                Divider(),
                CustomSwitch(
                    title: 'Family & Friends Mode',
                    subtitle: 'Mode short description',
                    isSwitched: true,
                    onPressed: () => print("CustomSwitch")),
                Divider(),
                CustomSwitch(
                    title: 'Customized Group Mode',
                    subtitle: 'Mode short description',
                    isSwitched: false,
                    onPressed: () => print("CustomSwitch")),
                Divider(),
                CustomSwitch(
                    title: 'Professional Mode',
                    subtitle: 'Mode short description',
                    isSwitched: true,
                    onPressed: () => print("CustomSwitch")),
                Divider(),
                CustomSwitch(
                    title: 'Public Mode',
                    subtitle: 'Mode short description',
                    isSwitched: false,
                    onPressed: () => print("CustomSwitch")),
                ButtonShape(ButtonType.textButton).build(
                    context: context,
                    button: new Button(
                        "Save",
                        TextAlign.center,
                        15,
                        70,
                        FontWeight.bold,
                        Colors.blueAccent,
                        Colors.white,
                        Colors.blueAccent,
                        const EdgeInsets.only(left: 140, right: 140, top: 20.0),
                        null,
                        () => {}))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
