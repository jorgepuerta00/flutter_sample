import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_divider.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class LocationList extends StatelessWidget {
  final List<Location> _locations;
  LocationList(this._locations);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _locations.length,
      padding: EdgeInsets.only(left: 20, right: 20),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            ListTile(
              title: CustomText(text: _locations[index].name),
            ),
            CustomDivider(
                color: Colors.grey), //                           <-- Divider
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
