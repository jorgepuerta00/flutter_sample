import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class EditFullNamePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light, title: Text('Full Name'), elevation: 0),
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[
          LabelWidget(
              text: "Current",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0, top: 40)),
          CustomTextField(hintText: 'Current Full Name here'),
          LabelWidget(
              text: "New",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0, top: 40)),
          CustomTextField(hintText: 'New Full Name here'),
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
