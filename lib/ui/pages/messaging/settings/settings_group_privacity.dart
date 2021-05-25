import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_switch.dart';

class SetPrivacyGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light, title: Text('Privacy'), elevation: 0),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              CustomDivider(color: Colors.grey),
              CustomSwitch(
                  title: 'Private circle',
                  subtitle: 'Private circle description',
                  isSwitched: true,
                  onPressed: () => {}),
              CustomDivider(color: Colors.grey),
              CustomSwitch(
                  title: 'Public hall',
                  subtitle: 'Private circle description',
                  isSwitched: false,
                  onPressed: () => {}),
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
    );
  }
}
