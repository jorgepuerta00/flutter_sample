import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/pages/messaging/chat/chat.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class InviteUsersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    gotoNewChat() {
      Contact contact = Contact(name: 'Group Subject');
      Navigator.of(context).push(MaterialPageRoute(
          builder: (_) => ChatScreen(contact: contact, isGroup: true)));
    }

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text('Create Group'),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.close,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: <Widget>[
            SearchTextField(hintText: 'Search'),
            Center(
                child: ElevatedButton.icon(
              icon: Icon(
                Icons.insert_link,
                color: Colors.grey,
                size: 24.0,
              ),
              label: CustomText(text: 'Share link url', color: Colors.black),
              onPressed: () {
                print('Pressed');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.grey[200],
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10.0),
                ),
              ),
            )),
            Expanded(
              child: ContactList(
                  contacts: kContacts,
                  showButton: true,
                  showLastMessage: false,
                  inactiveText: 'Invite',
                  activeText: 'Invited',
                  onPressed: (contact) => {}),
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
                    onPressed: () => gotoNewChat()))
          ],
        ),
      )),
    );
  }
}
