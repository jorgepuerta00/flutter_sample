import 'package:flutter/material.dart';

BoxDecoration backgroundImage(Color color, String image, double opacity) {
  return BoxDecoration(
    color: color,
    image: DecorationImage(
      colorFilter: new ColorFilter.mode(
          Colors.black.withOpacity(opacity), BlendMode.dstATop),
      image: AssetImage(image),
      fit: BoxFit.cover,
    ),
  );
}
