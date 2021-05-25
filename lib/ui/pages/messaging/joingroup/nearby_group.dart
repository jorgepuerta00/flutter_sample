import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class NearbyGroupsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text('Nearby Groups'),
        elevation: 0,
      ),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: <Widget>[
            SearchTextField(hintText: 'Search'),
            Expanded(
              flex: 1,
              child: ContactList(
                  contacts: kGroups,
                  showButton: true,
                  showLastMessage: true,
                  inactiveText: 'Join',
                  activeText: 'Joined',
                  onPressed: (contact) => {}),
            )
          ],
        ),
      )),
    );
  }
}
