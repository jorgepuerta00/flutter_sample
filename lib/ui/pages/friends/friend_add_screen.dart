import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/widgets/custom_avatar.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class AddFriendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        brightness: Brightness.light,
        backgroundColor: Colors.transparent,
        title: Text(
          'Add friends',
          style: TextStyle(color: darkGrey),
        ),
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
      body: SafeArea(
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: ListView(
            children: <Widget>[
              SearchTextField(),
              Container(
                  padding:
                      const EdgeInsets.only(left: 16.0, right: 24.0, top: 16.0),
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: kContacts.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => Container(
                        child: CustomAvatar(
                            avatar: kContacts[index].name[0],
                            text: kContacts[index].name),
                        margin: const EdgeInsets.only(top: 2),
                      ),
                    ),
                  )),
              LabelWidget(
                padding: const EdgeInsets.only(top: 20.0),
                textAlign: TextAlign.center,
                text: "Suggestions",
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: ContactList(kContacts, false, false, () => {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
