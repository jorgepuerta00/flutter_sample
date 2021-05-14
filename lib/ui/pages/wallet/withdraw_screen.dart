import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/wallet/widgets/balance_widget.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class WithdrawPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light, title: Text('Top Up'), elevation: 0),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                BalanceWidget(balance: '10.000.00'),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(children: <Widget>[
                      IconButton(
                        icon: Image.asset('assets/images/no-image.png'),
                        iconSize: 150,
                        onPressed: () {},
                      ),
                      CustomText(text: 'Link a Bank')
                    ]),
                    Column(children: <Widget>[
                      IconButton(
                        icon: Image.asset('assets/images/no-image.png'),
                        iconSize: 150,
                        onPressed: () {},
                      ),
                      CustomText(text: 'Link a Card')
                    ])
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
