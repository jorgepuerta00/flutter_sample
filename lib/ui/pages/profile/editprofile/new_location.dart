import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/profile/widgets/location_data.dart';
import 'package:ourglass/ui/pages/profile/widgets/location_view.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class NewLocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light, title: Text('Location'), elevation: 0),
      body: Center(
          child: Container(
        padding: const EdgeInsets.only(top: 8.0),
        child: Column(
          children: <Widget>[
            Container(
                child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: ListTile(
                title: CustomText(
                    text: 'Current location', fontWeight: FontWeight.bold),
                subtitle: Text('Current location here'),
              ),
            )),
            CustomDivider(color: Colors.grey),
            Expanded(
                child: Container(
              child: LocationList(kLocations),
            ))
          ],
        ),
      )),
    );
  }
}
