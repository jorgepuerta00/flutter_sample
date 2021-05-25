import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/messaging/creategroup/privacy_group.dart';
import 'package:ourglass/ui/pages/user/widgets/interest_view.dart';
import 'package:ourglass/ui/pages/user/widgets/interests_data.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class SetGroupTagsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    nextPage() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => PrivacyGroupPage()));
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
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[
          SearchTextField(hintText: 'Search'),
          LabelWidget(
              text: "Provide optional group tags.",
              textAlign: TextAlign.center,
              fontSize: 15.0,
              padding: const EdgeInsets.only(bottom: 10)),
          InterestList(kInterests),
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
