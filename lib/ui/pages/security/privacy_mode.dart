import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_switch.dart';

class EditPrivacyModePage extends StatelessWidget {
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
            'Privacy Mode',
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
                  subtitle: Text('Mode short description'),
                  trailing: SwitchScreen(),
                ),
                Divider(),
                ListTile(
                  title: Text('Family & Friends Mode'),
                  subtitle: Text('Mode short description'),
                  trailing: SwitchScreen(),
                ),
                Divider(),
                ListTile(
                  title: Text('Customized Group Mode'),
                  subtitle: Text('Mode short description'),
                  trailing: SwitchScreen(),
                ),
                Divider(),
                ListTile(
                  title: Text('Professional Mode'),
                  subtitle: Text('Mode short description'),
                  trailing: SwitchScreen(),
                ),
                Divider(),
                ListTile(
                  title: Text('Public Mode'),
                  subtitle: Text('Mode short description'),
                  trailing: SwitchScreen(),
                ),
                ButtonShape(ButtonType.textButton).build(
                    context: context,
                    button: new Button(
                        "Save",
                        TextAlign.center,
                        15,
                        70,
                        FontWeight.bold,
                        Colors.blueAccent,
                        Colors.white,
                        Colors.blueAccent,
                        const EdgeInsets.only(
                            left: 140, right: 140, top: 100.0),
                        null,
                        () => {}))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
