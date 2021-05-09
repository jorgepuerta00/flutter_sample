import 'package:flutter/material.dart';

import 'custom_text.dart';

class LabelWidget extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final EdgeInsets padding;
  final Function onPressed;
  const LabelWidget(
      {@required this.text,
      this.textAlign,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.padding,
      this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        new Expanded(
          child: new Padding(
            padding: padding,
            child: new CustomText(
              text: text,
              textAlign: textAlign,
              fontWeight: fontWeight,
              color: color,
              fontSize: fontSize,
            ),
          ),
        ),
      ],
    );
  }
}
