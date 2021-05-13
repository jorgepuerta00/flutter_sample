import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class QRWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
              padding:
                  EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CustomText(
                        text: 'User Full Name', fontWeight: FontWeight.bold),
                    Image.asset(
                      'assets/images/qr-code.png',
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
