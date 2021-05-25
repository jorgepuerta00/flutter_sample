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
            if (avatar != null)
              CircleAvatar(
                child: Text(avatar),
                radius: 30,
              ),
            if (avatar == null)
              CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Colors.blueGrey,
                  child: CircleAvatar(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            decoration: new BoxDecoration(
                                border: new Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: const BorderRadius.all(
                                    const Radius.circular(30))),
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 12.0,
                              child: Icon(
                                Icons.add,
                                size: 15.0,
                                color: Color(0xFF404040),
                              ),
                            )),
                      ),
                      radius: 30.0,
                      backgroundColor: Colors.transparent)),
            CustomText(text: text)
          ],
        ));
  }
}

class CustomCircleAvatar extends StatelessWidget {
  final String imgUrl;
  final String label;
  const CustomCircleAvatar({Key key, @required this.imgUrl, this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: (() {
          if (imgUrl != null && imgUrl.isNotEmpty) {
            return CircleAvatar(
              backgroundImage: NetworkImage("$imgUrl"),
            );
          } else {
            return CircleAvatar(
              child: Text(label),
            );
          }
        }()));
  }
}
