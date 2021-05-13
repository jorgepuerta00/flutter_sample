import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/wallet/widgets/payment_data.dart';
import 'package:ourglass/ui/pages/wallet/widgets/payment_view.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class PaymentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height,
      child: new Column(
        children: <Widget>[
          Container(
              padding: const EdgeInsets.all(25),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomText(text: 'Balance', fontSize: 20),
                    Divider(
                      color: white,
                      height: 15,
                    ),
                    CustomText(
                        fontSize: 18,
                        text: new String.fromCharCodes(
                            new Runes('\u0024 1.000.00'))),
                    Divider(
                      color: white,
                      height: 15,
                    ),
                    Divider(),
                  ])),
          Expanded(
              child: Container(
            child: PaymentList(kpayments),
          ))
        ],
      ),
    );
  }
}
