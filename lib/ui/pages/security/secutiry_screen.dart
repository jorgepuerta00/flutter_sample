import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/security/change_email.dart';
import 'package:ourglass/ui/pages/security/change_password.dart';
import 'package:ourglass/ui/pages/security/privacy_mode.dart';

class SecurityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          title: Text(
            'Security',
            style: TextStyle(color: darkGrey),
          ),
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
