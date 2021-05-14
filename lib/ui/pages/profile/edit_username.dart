import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class EditUsernamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light, title: Text('Username'), elevation: 0),
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[
          LabelWidget(
              text: "Current Username",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0, top: 40)),
          CustomTextField(hintText: '@username'),
          LabelWidget(
              text: "New",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0, top: 40)),
          CustomTextField(hintText: 'New username here'),
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
                  const EdgeInsets.only(left: 140, right: 140, top: 100.0),
                  null,
                  () => {}))
        ]),
      ),
    );
  }
}
