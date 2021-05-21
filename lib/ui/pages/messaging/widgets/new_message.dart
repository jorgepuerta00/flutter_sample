import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/pages/messaging/widgets/chat.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class NewMessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    gotoNewChat(Contact contact) {
      Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => ChatScreen(contact: contact)));
    }

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        title: CustomText(text: 'New message'),
        elevation: 0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 30),
            child: IconButton(
                icon: Icon(Icons.close, size: 30),
                onPressed: () => Navigator.pop(context)),
          ),
        ],
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: <Widget>[
            SearchTextField(),
            Expanded(
                child: Container(
                    child: ContactList(kContacts, false, true,
                        (contact) => gotoNewChat(contact))))
          ],
        ),
      )),
    );
  }
}
