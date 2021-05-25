import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/wallet/reports/report_data.dart';
import 'package:ourglass/ui/pages/wallet/reports/report_view.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class ReportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light, title: Text('Reports'), elevation: 0),
      body: SafeArea(
        top: true,
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CustomText(
                          text: "Consumption",
                          fontSize: 18,
                        ),
                        Row(children: <Widget>[
                          TextButton(
                              onPressed: () =>
                                  _settingModalBottomSheet(context),
                              child: CustomText(
                                text: "Sort by",
                                fontSize: 15,
                              )),
                          Icon(Icons.expand_more)
                        ])
                      ])),
              Expanded(
                child: Container(
                  child: ReportList(kReports),
                ),
              )
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
                    title: CustomText(text: "Date (oldest)"),
                  ),
                  Divider(),
                  new ListTile(
                    title: CustomText(text: "Date (newest)"),
                  ),
                  Divider(),
                  new ListTile(
                    title: CustomText(text: "Most popular"),
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
