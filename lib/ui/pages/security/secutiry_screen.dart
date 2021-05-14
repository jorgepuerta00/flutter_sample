import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/security/change_email.dart';
import 'package:ourglass/ui/pages/security/change_password.dart';
import 'package:ourglass/ui/pages/security/privacy_mode.dart';

class SecurityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Security'),
          elevation: 0),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
            child: Column(
              children: <Widget>[
                Divider(),
                ListTile(
                  title: Text('Privacy Mode'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => EditPrivacyModePage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Change Password'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => EditPasswordPage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Change email'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => EditEmailPage())),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
