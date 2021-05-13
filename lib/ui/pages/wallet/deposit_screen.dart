import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/wallet/widgets/balance_widget.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class DepositPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          title: Text(
            'Transfer',
            style: TextStyle(color: darkGrey),
          ),
          elevation: 0),
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
                      CustomText(text: 'Bank Account transfer')
                    ]),
                    Column(children: <Widget>[
                      IconButton(
                        icon: Image.asset('assets/images/no-image.png'),
                        iconSize: 150,
                        onPressed: () {},
                      ),
                      CustomText(text: 'QR Code transfer')
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
