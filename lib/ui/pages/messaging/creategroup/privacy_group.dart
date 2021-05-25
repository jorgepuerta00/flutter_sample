import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/messaging/creategroup/add_users.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class PrivacyGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    nextPage() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => InviteUsersPage()));
    }

    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Create Group'),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextButton(
                child: Text('Skip'),
                onPressed: () => nextPage(),
              ),
            ),
          ],
          elevation: 0),
      body: Container(
        padding: const EdgeInsets.only(top: 60),
        child: Column(children: <Widget>[
          LabelWidget(
              text: "Tell us more about your group.",
              textAlign: TextAlign.center,
              fontSize: 15.0,
              padding: const EdgeInsets.only(bottom: 10)),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  text: "It’s a private circle",
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.black,
                  backgroundColor: Colors.grey[200],
                  borderColor: Colors.grey[200],
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, top: 30, bottom: 20),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  onPressed: () => {})),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  text: "It’s a public hall",
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                  backgroundColor: Colors.blue[600],
                  borderColor: Colors.blue[600],
                  margin:
                      const EdgeInsets.only(left: 30, right: 30, bottom: 40),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  onPressed: () => {})),
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
