import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/wallet/widgets/overview_widget.dart';
import 'package:ourglass/ui/pages/wallet/widgets/payment.dart';
import 'package:ourglass/ui/pages/wallet/widgets/qr_widget.dart';
import 'package:ourglass/ui/pages/wallet/widgets/report_widget.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: white,
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            brightness: Brightness.light,
            backgroundColor: Colors.transparent,
            title: Text(
              'My Digital Wallet',
              style: TextStyle(color: darkGrey),
            ),
            bottom: TabBar(
              tabs: [
                Tab(child: CustomText(text: 'Overview', color: darkGrey)),
                Tab(child: CustomText(text: 'Reports', color: darkGrey)),
                Tab(child: CustomText(text: 'Payments', color: darkGrey)),
                Tab(child: CustomText(text: 'My QR', color: darkGrey))
              ],
            ),
            elevation: 0),
        body: SafeArea(
          top: true,
          child: TabBarView(
            children: [
              OverviewWidget(),
              ReportWidget(),
              PaymentWidget(),
              QRWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
