import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/profile/widgets/location_data.dart';
import 'package:ourglass/ui/pages/profile/widgets/location_view.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class EditLocationPage extends StatelessWidget {
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
            'Location',
            style: TextStyle(color: darkGrey),
          ),
          elevation: 0),
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[
          LabelWidget(
              text: "Current",
              fontWeight: FontWeight.bold,
              color: black,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0, top: 40)),
          LabelWidget(
              text: "Location here",
              fontWeight: FontWeight.bold,
              color: blue,
              fontSize: 15.0,
              padding: const EdgeInsets.only(left: 40.0, top: 10, bottom: 10)),
          Divider(),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: LocationList(kLocations),
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
                  const EdgeInsets.only(left: 140, right: 140),
                  null,
                  () => {})),
        ]),
      ),
    );
  }
}
