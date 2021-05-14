import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class BalanceWidget extends StatelessWidget {
  final String balance;
  BalanceWidget({this.balance});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 42),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
              bottomLeft: Radius.circular(8),
              bottomRight: Radius.circular(8)),
          color: Colors.transparent),
      height: 120,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomText(text: 'Balance', fontSize: 20),
                Divider(),
                CustomText(
                    fontSize: 18,
                    text:
                        new String.fromCharCodes(new Runes('\u0024 $balance'))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
