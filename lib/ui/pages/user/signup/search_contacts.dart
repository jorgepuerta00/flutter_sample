import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/pages/user/signup/interests.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class SearchMyContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    nextPage() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => InterestsPage()));
    }

    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Suggestions'),
          elevation: 0,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextButton(
                child: Text('Skip'),
                onPressed: () => nextPage(),
              ),
            ),
          ]),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: <Widget>[
            Container(
              child: LabelWidget(
                  text: "People you may know.",
                  textAlign: TextAlign.justify,
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  padding:
                      const EdgeInsets.only(left: 40.0, top: 10, bottom: 10)),
            ),
            Expanded(
              flex: 7,
              child: Container(
                child: ContactList(
                    contacts: kContacts,
                    showButton: true,
                    showLastMessage: false,
                    inactiveText: 'Add friend',
                    activeText: 'Requested',
                    onPressed: (contact) => {}),
              ),
            ),
            Expanded(
                flex: 1,
                child: ButtonShape(ButtonType.textButton).build(
                    context: context,
                    button: Button(
                        text: "Next",
                        textAlign: TextAlign.center,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        textColor: Colors.blue,
                        backgroundColor: Colors.white,
                        borderColor: Colors.blue,
                        onPressed: () => nextPage())))
          ],
        ),
      )),
    );
  }
}
