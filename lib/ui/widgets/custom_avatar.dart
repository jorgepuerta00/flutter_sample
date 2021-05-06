import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class CustomAvatar extends StatelessWidget {
  final String avatar;
  final String text;
  const CustomAvatar({this.avatar, this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CircleAvatar(
              child: Text(avatar),
              radius: 30,
            ),
            CustomText(text: text.split(' ')[0])
          ],
        ));
  }
}
