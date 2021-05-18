import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_icon.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class LoginWidget extends StatelessWidget {
  final Function onPressed;
  const LoginWidget({this.onPressed});
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      child: new Column(
        children: <Widget>[
          CustomIcon(
              color: Colors.blueAccent,
              iconData: Icons.play_circle_fill,
              size: 50.0,
              padding: EdgeInsets.all(120.0)),
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
              text: "Forgot Password?",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(right: 30.0),
              textAlign: TextAlign.end,
              onPressed: () => {}),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  "Log in",
                  TextAlign.center,
                  15,
                  70,
                  FontWeight.bold,
                  Colors.blueAccent,
                  Colors.white,
                  Colors.blueAccent,
                  const EdgeInsets.only(
                      left: 30.0, right: 30.0, top: 20.0, bottom: 20),
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  onPressed)),
        ],
      ),
    );
  }
}
