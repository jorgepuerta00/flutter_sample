import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/security/secutiry_screen.dart';
import 'package:ourglass/ui/pages/settings/theme_screen.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';

class SettingsPage extends StatelessWidget {
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
                  title: Text('Security'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SecurityPage())),
                ),
                CustomDivider(color: Colors.grey),
                ListTile(
                  title: Text('Theme'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => ThemePage())),
                ),
                CustomDivider(color: Colors.grey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
