import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_icon.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';
import 'package:ourglass/ui/widgets/label_widget.dart';
import 'box_decoration_widget.dart';

class SignUpWidget extends StatelessWidget {
  final Function onPressed;
  const SignUpWidget({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      decoration: backgroundImage(white, 'assets/images/full-bloom.png', 0.05),
      child: new Column(
        children: <Widget>[
          CustomIcon(
              iconData: Icons.play_circle_fill,
              color: primary,
              size: 50.0,
              padding: EdgeInsets.all(100.0)),
          LabelWidget(
              text: "EMAIL",
              fontWeight: FontWeight.bold,
              color: primary,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0)),
          CustomTextField(),
          CustomDivider(),
          LabelWidget(
              text: "PASSWORD",
              fontWeight: FontWeight.bold,
              color: primary,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0)),
          CustomPasswordField(),
          CustomDivider(),
          LabelWidget(
              text: "CONFIRM PASSWORD",
              fontWeight: FontWeight.bold,
              color: primary,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0)),
          CustomPasswordField(),
          CustomDivider(),
          LabelWidget(
              text: "Already have an account?",
              fontWeight: FontWeight.bold,
              color: primary,
              fontSize: 15.0,
              padding: const EdgeInsets.only(right: 30.0),
              textAlign: TextAlign.end,
              onPressed: () => {}),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  "SIGN UP",
                  TextAlign.center,
                  15,
                  FontWeight.bold,
                  white,
                  primary,
                  primary,
                  const EdgeInsets.only(left: 30.0, right: 30.0, top: 50.0),
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  onPressed)),
        ],
      ),
    );
  }
}
