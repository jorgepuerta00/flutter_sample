import 'package:flutter/material.dart';

import 'custom_text.dart';

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CustomText(
            text: "OurGlass",
            color: Colors.white,
            fontSize: 20.0,
          ),
          CustomText(
              text: "App",
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold)
        ],
      ),
    );
  }
}
