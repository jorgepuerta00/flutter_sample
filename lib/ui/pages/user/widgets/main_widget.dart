import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_icon.dart';
import 'package:ourglass/ui/widgets/custom_title_widget.dart';
import 'box_decoration_widget.dart';

class MainWidget extends StatelessWidget {
  final Function onLoginPressed;
  final Function onSignupPressed;
  const MainWidget({this.onLoginPressed, this.onSignupPressed});
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      decoration:
          backgroundImage(Colors.blue, 'assets/images/full-bloom.png', 0.1),
      child: new Column(
        children: <Widget>[
          CustomIcon(
              iconData: Icons.play_circle_fill,
              color: Colors.white,
              size: 40.0,
              padding: EdgeInsets.only(top: 250.0)),
          TitleWidget(),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  text: "Sign Up",
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                  backgroundColor: Colors.blue[600],
                  borderColor: Colors.blue[600],
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 150),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  onPressed: onSignupPressed)),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  text: "Log In",
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.blue,
                  backgroundColor: Colors.white,
                  borderColor: Colors.white,
                  margin: const EdgeInsets.only(left: 30, right: 30, top: 30),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  onPressed: onLoginPressed)),
        ],
      ),
    );
  }
}
