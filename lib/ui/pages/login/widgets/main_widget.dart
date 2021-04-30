import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_icon.dart';
import 'package:ourglass/ui/widgets/title_widget.dart';
import 'box_decoration_widget.dart';

class MainWidget extends StatelessWidget {
  final Function onLoginPressed;
  final Function onSignupPressed;
  const MainWidget({this.onLoginPressed, this.onSignupPressed});
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      decoration: backgroundImage(primary, 'assets/images/full-bloom.png', 0.1),
      child: new Column(
        children: <Widget>[
          CustomIcon(
              iconData: Icons.play_circle_fill,
              color: white,
              size: 40.0,
              padding: EdgeInsets.only(top: 250.0)),
          TitleWidget(),
          ButtonShape(ButtonType.outlinedButton).build(
              context: context,
              button: new Button(
                  "SIGN UP",
                  TextAlign.center,
                  15,
                  FontWeight.bold,
                  white,
                  primary,
                  const EdgeInsets.only(left: 30.0, right: 30.0, top: 150.0),
                  onSignupPressed)),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  "LOGIN",
                  TextAlign.center,
                  15,
                  FontWeight.bold,
                  primary,
                  white,
                  const EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
                  onLoginPressed))
        ],
      ),
    );
  }
}
