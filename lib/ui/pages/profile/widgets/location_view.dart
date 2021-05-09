import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class LocationList extends StatelessWidget {
  final List<Location> _locations;
  LocationList(this._locations);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _locations.length,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            ListTile(
              title: CustomText(text: _locations[index].name, color: grey),
            ),
            Divider(), //                           <-- Divider
          ],
        );
      },
    );
  }
}

class Location {
  final String name;
  final String location;
  const Location({this.name, this.location});
}
