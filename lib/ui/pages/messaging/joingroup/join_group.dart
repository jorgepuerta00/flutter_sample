import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_data.dart';
import 'package:ourglass/ui/pages/friends/widgets/contact_view.dart';
import 'package:ourglass/ui/pages/messaging/joingroup/nearby_group.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class JoinGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: Text('Join Group'),
        elevation: 0,
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
                  title: Text('Find nearby'),
                  leading: Icon(Icons.location_on_outlined),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => NearbyGroupsPage()))),
            )),
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
