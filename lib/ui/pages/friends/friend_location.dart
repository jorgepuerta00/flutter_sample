import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:latlong/latlong.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPage createState() => new _LocationPage();
}

class _LocationPage extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          title: Text(
            'Location',
            style: TextStyle(color: darkGrey),
          ),
          elevation: 0,
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Icon(
                Icons.close,
                size: 30,
              ),
            ),
          ],
        ),
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(51.5, -0.09),
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate:
                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']),
            MarkerLayerOptions(
              markers: [
                new Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(51.5, -0.09),
                  builder: (ctx) => Container(
                    child: FlutterLogo(),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
