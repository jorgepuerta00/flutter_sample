import 'package:flutter/material.dart';

class CustomGestureDetector extends StatelessWidget {
  final Widget child;
  const CustomGestureDetector({this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);

          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        child: child);
  }
}
