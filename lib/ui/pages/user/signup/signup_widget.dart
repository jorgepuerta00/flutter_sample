import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_icon.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class SignUpWidget extends StatelessWidget {
  final Function onPressed;
  const SignUpWidget({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      child: new Column(
        children: <Widget>[
          CustomIcon(
              iconData: Icons.play_circle_fill,
              color: Colors.blueAccent,
              size: 50.0,
              padding: EdgeInsets.all(100.0)),
          LabelWidget(
              text: "Email",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0)),
          CustomTextField(hintText: 'ourglass@oiga.com'),
          CustomDivider(),
          LabelWidget(
              text: "Password",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0)),
          CustomPasswordField(),
          CustomDivider(),
          LabelWidget(
              text: "Confirm Password",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0)),
          CustomPasswordField(),
          CustomDivider(),
          LabelWidget(
              text: "Already have an account?",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(right: 30.0),
              textAlign: TextAlign.end,
              onPressed: () => {}),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  "Next",
                  TextAlign.center,
                  15,
                  70,
                  FontWeight.bold,
                  Colors.white,
                  Colors.blueAccent,
                  Colors.blueAccent,
                  const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  onPressed)),
        ],
      ),
    );
  }
}
