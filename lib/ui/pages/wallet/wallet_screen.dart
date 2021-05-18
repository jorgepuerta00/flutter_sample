import 'package:flutter/material.dart';
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
        appBar: AppBar(
            brightness: Brightness.light,
            title: Text('My Digital Wallet'),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 30),
                child: IconButton(
                  icon: Icon(Icons.more_vert_sharp, size: 30),
                  onPressed: () => _settingModalBottomSheet(context),
                ),
              ),
            ],
            bottom: TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(child: CustomText(text: 'Overview')),
                Tab(child: CustomText(text: 'Reports')),
                Tab(child: CustomText(text: 'Payments')),
                Tab(child: CustomText(text: 'My QR'))
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

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        useRootNavigator: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return new Container(
            color: Colors.transparent,
            child: new Container(
              decoration: new BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Theme.of(context).primaryColor,
                  borderRadius: new BorderRadius.only(
                      bottomRight: const Radius.circular(60.0),
                      bottomLeft: const Radius.circular(60.0),
                      topLeft: const Radius.circular(50.0),
                      topRight: const Radius.circular(50.0))),
              child: new Wrap(
                children: <Widget>[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                            width: double.infinity,
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(right: 30, top: 10),
                              child: TextButton(
                                  onPressed: () =>
                                      Navigator.of(context, rootNavigator: true)
                                          .pop(),
                                  child: Icon(
                                    Icons.close,
                                    size: 30,
                                  )),
                            ))
                      ]),
                  new ListTile(
                    title: CustomText(text: "Share"),
                  ),
                  Divider(),
                  new ListTile(
                    title: CustomText(text: "Download QR"),
                  ),
                  Container(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
