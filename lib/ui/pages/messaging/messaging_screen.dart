import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/pages/messaging/creategroup/add_photo_group.dart';
import 'package:ourglass/ui/pages/messaging/joingroup/tags_group.dart';
import 'package:ourglass/ui/pages/messaging/new_message_screen.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class MessagingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        centerTitle: true,
        title: CustomText(text: 'Messages'),
        elevation: 0,
        actions: <Widget>[
          Container(
            child: IconButton(
              icon: Icon(Icons.group_work_outlined, size: 30),
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => PhotoGroupPage())),
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 30),
            child: IconButton(
              icon: Icon(Icons.edit_outlined, size: 30),
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => NewMessagePage())),
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
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ListTile(
                  title: Text('Join groups'),
                  leading: Icon(Icons.group_add),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => TagsGroupPage()))),
            )),
            Expanded(
                child: Container(
              child: ContactList(
                  contacts: kContacts,
                  showButton: false,
                  showLastMessage: true,
                  onPressed: (contact) => {}),
            ))
          ],
        ),
      )),
    );
  }
}
