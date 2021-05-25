import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/user/password/new_password.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class AuthenticationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    nextPage() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => NewPasswordPage()));
    }

    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Authentication'),
          elevation: 0),
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[
          LabelWidget(
              text:
                  "We have sent a code to recover your password. Please enter the code below.",
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 40, bottom: 60)),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 20,
              direction: Axis.horizontal,
              runSpacing: 10,
              children: [
                _otpTextField(context, true),
                _otpTextField(context, false),
                _otpTextField(context, false),
                _otpTextField(context, false),
              ],
            ),
          ),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  text: "Next",
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.blue,
                  backgroundColor: Colors.white,
                  borderColor: Colors.blue,
                  onPressed: () => nextPage()))
        ]),
      ),
    );
  }
}

Widget _otpTextField(BuildContext context, bool autoFocus) {
  return Container(
    height: MediaQuery.of(context).size.shortestSide * 0.13,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[300]),
      borderRadius: BorderRadius.circular(10),
    ),
    child: AspectRatio(
      aspectRatio: 1,
      child: TextField(
        autofocus: autoFocus,
        decoration: InputDecoration(
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.grey[200],
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey[300]),
            )),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLines: 1,
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    ),
  );
}
