import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/wallet/deposit_screen.dart';
import 'package:ourglass/ui/pages/wallet/widgets/balance_widget.dart';
import 'package:ourglass/ui/pages/wallet/reports/report_data.dart';
import 'package:ourglass/ui/pages/wallet/reports/report_view.dart';
import 'package:ourglass/ui/pages/wallet/withdraw_screen.dart';
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

    gotoWithdrawPage() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => WithdrawPage()));
    }

    return new Container(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: Column(
          children: <Widget>[
            BalanceWidget(balance: '10.000.00'),
            Container(
                child: Row(
              children: <Widget>[
                ButtonShape(ButtonType.textButton).build(
                    context: null,
                    button: new Button(
                        text: "Sign Up",
                        textAlign: TextAlign.center,
                        width: 150,
                        fontWeight: FontWeight.bold,
                        textColor: Colors.blue,
                        backgroundColor: Colors.white,
                        borderColor: Colors.blue,
                        margin:
                            const EdgeInsets.only(left: 42, right: 0, top: 10),
                        onPressed: () => gotoWithdrawPage())),
                ButtonShape(ButtonType.textButton).build(
                    context: null,
                    button: new Button(
                        text: "Transfer",
                        textAlign: TextAlign.center,
                        width: 150,
                        fontWeight: FontWeight.bold,
                        textColor: Colors.blue,
                        backgroundColor: Colors.white,
                        borderColor: Colors.blue,
                        margin:
                            const EdgeInsets.only(left: 42, right: 0, top: 10),
                        onPressed: () => gotoDepositPage())),
              ],
            )),
            Container(
                padding: EdgeInsets.only(top: 20),
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomText(
                        text: "Recent reports",
                        fontSize: 20,
                      ),
                      Row(children: <Widget>[
                        Text("Sort by"),
                        Icon(Icons.expand_more)
                      ])
                    ])),
            Expanded(
              child: Container(
                  padding: EdgeInsets.only(top: 20),
                  child: ReportList(kReports)),
            ),
          ],
        ),
      ),
    );
  }
}
