import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/profile/editprofile/add_workplace.dart';
import 'package:ourglass/ui/pages/profile/editprofile/edit_location.dart';
import 'package:ourglass/ui/pages/security/secutiry_screen.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light, title: Text('About'), elevation: 0),
      body: Container(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LabelWidget(
                    text: "Customize Your Profile",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    textAlign: TextAlign.left,
                    padding: const EdgeInsets.only(top: 10)),
                LabelWidget(
                    text: "Details you select will show in your profile.",
                    textAlign: TextAlign.left,
                    padding: const EdgeInsets.only(top: 10, bottom: 20)),
                CustomDivider(color: Colors.grey),
                LabelWidget(
                    text: "Work",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    padding: const EdgeInsets.only(top: 20)),
                ButtonShape(ButtonType.textButton).build(
                    context: context,
                    button: new Button(
                        text: "Add Work",
                        textAlign: TextAlign.center,
                        textColor: Colors.black,
                        backgroundColor: Colors.grey[200],
                        borderColor: Colors.black,
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => WorkplacePage())))),
                CustomDivider(color: Colors.grey),
                LabelWidget(
                    text: "Education",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    padding: const EdgeInsets.only(top: 20)),
                ListTile(
                  title: Text('Education info here'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SecurityPage())),
                ),
                CustomDivider(color: Colors.grey),
                ButtonShape(ButtonType.textButton).build(
                    context: context,
                    button: new Button(
                        text: "Add High School",
                        textAlign: TextAlign.center,
                        textColor: Colors.black,
                        backgroundColor: Colors.grey[200],
                        borderColor: Colors.black,
                        margin: const EdgeInsets.only(top: 10),
                        onPressed: () => {})),
                ButtonShape(ButtonType.textButton).build(
                    context: context,
                    button: new Button(
                        text: "Add College",
                        textAlign: TextAlign.center,
                        textColor: Colors.black,
                        backgroundColor: Colors.grey[200],
                        borderColor: Colors.black,
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        onPressed: () => {})),
                CustomDivider(color: Colors.grey),
                LabelWidget(
                    text: "Location",
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    padding: const EdgeInsets.only(top: 20)),
                ListTile(
                  title: Text('Current location here'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => EditLocationPage())),
                ),
              ])),
    );
  }
}
