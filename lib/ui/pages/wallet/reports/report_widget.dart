import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/wallet/reports_screen.dart';

class ReportWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      child: new Column(
        children: <Widget>[
          Divider(),
          ListTile(
            title: Text('All content'),
            subtitle: Text('My uploaded content & consumption.'),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(),
          ListTile(
            title: Text('My content'),
            subtitle: Text('Personal content uploaded by me.'),
            trailing: Icon(Icons.chevron_right),
          ),
          Divider(),
          ListTile(
            title: Text('Consumption'),
            subtitle: Text('User content I have watched/listened to.'),
            trailing: Icon(Icons.chevron_right),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => ReportPage())),
          ),
          Divider(),
        ],
      ),
    );
  }
}
