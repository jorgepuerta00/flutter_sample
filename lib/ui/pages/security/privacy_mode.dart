import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
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
                CustomDivider(color: Colors.grey),
                CustomSwitch(
                    title: 'Private Mode',
                    subtitle: 'Mode short description',
                    isSwitched: false,
                    onPressed: () => print("CustomSwitch")),
                CustomDivider(color: Colors.grey),
                CustomSwitch(
                    title: 'Family & Friends Mode',
                    subtitle: 'Mode short description',
                    isSwitched: true,
                    onPressed: () => print("CustomSwitch")),
                CustomDivider(color: Colors.grey),
                CustomSwitch(
                    title: 'Customized Group Mode',
                    subtitle: 'Mode short description',
                    isSwitched: false,
                    onPressed: () => print("CustomSwitch")),
                CustomDivider(color: Colors.grey),
                CustomSwitch(
                    title: 'Professional Mode',
                    subtitle: 'Mode short description',
                    isSwitched: true,
                    onPressed: () => print("CustomSwitch")),
                CustomDivider(color: Colors.grey),
                CustomSwitch(
                    title: 'Public Mode',
                    subtitle: 'Mode short description',
                    isSwitched: false,
                    onPressed: () => print("CustomSwitch")),
                CustomDivider(color: Colors.grey),
                ButtonShape(ButtonType.textButton).build(
                    context: context,
                    button: new Button(
                        text: "Save",
                        textAlign: TextAlign.center,
                        fontWeight: FontWeight.bold,
                        textColor: Colors.blue,
                        backgroundColor: Colors.white,
                        borderColor: Colors.blue,
                        onPressed: () => {}))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
