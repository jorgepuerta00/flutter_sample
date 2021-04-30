import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final double size;
  final EdgeInsets padding;
  const CustomIcon(
      {@required this.iconData, this.color, this.size, this.padding});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Center(
        child: Icon(
          iconData,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
