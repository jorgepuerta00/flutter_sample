import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class PaymentList extends StatelessWidget {
  final List<Payment> _payments;
  PaymentList(this._payments);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _payments.length,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            ListTile(
              title: CustomText(
                text: _payments[index].date,
                fontWeight: FontWeight.bold,
              ),
              subtitle: Text(_payments[index].methodTransfer),
              trailing: Container(
                  child: Column(children: <Widget>[
                Text(new String.fromCharCodes(
                    new Runes('\u0024 ${_payments[index].amount}'))),
                Text(_payments[index].operation)
              ])),
            ),
            Divider()
          ],
        );
      },
    );
  }
}

class Payment {
  final String date;
  final String methodTransfer;
  final String amount;
  final String operation;
  const Payment({this.date, this.methodTransfer, this.amount, this.operation});
}
