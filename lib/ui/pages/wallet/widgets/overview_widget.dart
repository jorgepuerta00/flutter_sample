import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/wallet/deposit.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class OverviewWidget extends StatelessWidget {
  final Function onPressed;
  const OverviewWidget({this.onPressed});
  @override
  Widget build(BuildContext context) {
    gotoDepositPage() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => DepositPage()));
    }

    return new Container(
      height: MediaQuery.of(context).size.height,
      child: new Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 42),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8),
                    topRight: Radius.circular(8),
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: muted,
                      blurRadius: 4,
                      spreadRadius: 1,
                      offset: Offset(0, 1))
                ]),
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
                      CustomText(text: 'US 1.000.00', fontSize: 20)
                    ],
                  )
                ],
              ),
            ),
          ),
          Center(
              child: Row(
            children: <Widget>[
              ButtonShape(ButtonType.textButton).build(
                  context: null,
                  button: new Button(
                      "Withdraw",
                      TextAlign.center,
                      15,
                      150,
                      FontWeight.bold,
                      Colors.blueAccent,
                      Colors.white,
                      Colors.blueAccent,
                      const EdgeInsets.only(left: 42, right: 0, top: 10),
                      null,
                      () => {})),
              ButtonShape(ButtonType.textButton).build(
                  context: null,
                  button: new Button(
                      "Deposit",
                      TextAlign.center,
                      15,
                      150,
                      FontWeight.bold,
                      Colors.blueAccent,
                      Colors.white,
                      Colors.blueAccent,
                      const EdgeInsets.only(left: 42, right: 0, top: 10),
                      null,
                      () => gotoDepositPage()))
            ],
          ))
        ],
      ),
    );
  }
}
