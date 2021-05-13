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
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
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
                    title: Text("Share"),
                  ),
                  Divider(),
                  new ListTile(
                    title: Text("Download QR"),
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
