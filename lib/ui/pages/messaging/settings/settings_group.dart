import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/messaging/settings/settings_group_invite.dart';
import 'package:ourglass/ui/pages/messaging/settings/settings_group_members.dart';
import 'package:ourglass/ui/pages/messaging/settings/settings_group_privacity.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class SettingsGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light, title: Text('Settings'), elevation: 0),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              children: <Widget>[
                CustomDivider(color: Colors.grey),
                ListTile(
                  title: Text('Privacy'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SetPrivacyGroupPage())),
                ),
                CustomDivider(color: Colors.grey),
                ListTile(
                  title: Text('Members'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => SetMembersGroupPage())),
                ),
                CustomDivider(color: Colors.grey),
                ListTile(
                  title: Text('Invite to group'),
                  leading: Icon(Icons.add, size: 18),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (_) => InviteMembersGroupPage())),
                ),
                CustomDivider(color: Colors.grey),
                ListTile(
                  title: Text('Delete group'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => _settingModalBottomSheet(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        useRootNavigator: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return new Container(
            color: Colors.transparent,
            child: new Container(
              decoration: new BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Theme.of(context).primaryColor,
                  borderRadius: new BorderRadius.only(
                      bottomRight: const Radius.circular(60.0),
                      bottomLeft: const Radius.circular(60.0),
                      topLeft: const Radius.circular(50.0),
                      topRight: const Radius.circular(50.0))),
              child: new Wrap(
                children: <Widget>[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                            width: double.infinity,
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(right: 30, top: 10),
                              child: TextButton(
                                  onPressed: () =>
                                      Navigator.of(context, rootNavigator: true)
                                          .pop(),
                                  child: Icon(
                                    Icons.close,
                                    size: 30,
                                  )),
                            ))
                      ]),
                  new ListTile(
                    title: CustomText(text: "Share"),
                  ),
                  Divider(),
                  new ListTile(
                    title: CustomText(text: "Download QR"),
                  ),
                  Container(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
