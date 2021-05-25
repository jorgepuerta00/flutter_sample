import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/user/password/reset_password.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_icon.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class LoginWidget extends StatelessWidget {
  final Function onPressed;
  final Function onSignUp;
  const LoginWidget({this.onPressed, this.onSignUp});
  @override
  Widget build(BuildContext context) {
    gotoResetPassword() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => ResetPasswordPage()));
    }

    return new Container(
      height: MediaQuery.of(context).size.height,
      child: new Column(
        children: <Widget>[
          CustomIcon(
              color: Colors.blue,
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
          Column(
            children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                    padding: const EdgeInsets.only(right: 35.0),
                    child: InkWell(
                        child: CustomText(
                            text: 'Forgot Password?',
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                        onTap: () => gotoResetPassword())),
              ),
            ],
          ),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  text: "Log in",
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                  backgroundColor: Colors.blue,
                  borderColor: Colors.blue,
                  margin: const EdgeInsets.only(
                      left: 30.0, right: 30.0, top: 20.0, bottom: 50),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  onPressed: onPressed)),
          CustomText(
              text: 'Dont have an account?', fontWeight: FontWeight.bold),
          InkWell(
              child: CustomText(
                  text: 'Register Now',
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              onTap: onSignUp),
        ],
      ),
    );
  }
}
