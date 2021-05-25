import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/profile/editprofile/new_location.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class EditLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light, title: Text('Location'), elevation: 0),
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
        child: Column(children: <Widget>[
          ListTile(
            title: CustomText(
                text: 'Current location', fontWeight: FontWeight.bold),
            subtitle: Text('Current location here'),
          ),
          CustomDivider(color: Colors.grey),
          ListTile(
            title:
                CustomText(text: 'New location', fontWeight: FontWeight.bold),
            subtitle: Text('New location here'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => NewLocationPage())),
          ),
          CustomDivider(color: Colors.grey)
        ]),
      ),
    );
  }
}
