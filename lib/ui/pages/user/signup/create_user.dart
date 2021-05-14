import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/user/signup/add_photo.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class CreateUserPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    gotoProfilePhotoPage() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => ProfilePhotoPage()));
    }

    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Create user'),
          elevation: 0),
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[
          LabelWidget(
              text:
                  "Please pick a username for your account. You can edit it later.",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 40, bottom: 60)),
          CustomTextField(hintText: 'Username here'),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  "Next",
                  TextAlign.center,
                  15,
                  70,
                  FontWeight.bold,
                  Colors.blueAccent,
                  Colors.white,
                  Colors.blueAccent,
                  const EdgeInsets.only(left: 40, right: 40, top: 100.0),
                  null,
                  () => gotoProfilePhotoPage()))
        ]),
      ),
    );
  }
}
