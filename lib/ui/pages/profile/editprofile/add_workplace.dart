import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/profile/editprofile/new_workplaces.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class WorkplacePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Add Workplace'),
          elevation: 0),
      body: Container(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
        child: Column(children: <Widget>[
          ListTile(
            title:
                CustomText(text: 'Workplace Name', fontWeight: FontWeight.bold),
            subtitle: Text('Workplace name here'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => NewWorkplacePage())),
          ),
          CustomDivider(color: Colors.grey),
        ]),
      ),
    );
  }
}
