import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class ReportList extends StatelessWidget {
  final List<Report> _reports;
  ReportList(this._reports);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _reports.length,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Column(
          children: <Widget>[
            ListTile(
              title: CustomText(
                text: _reports[index].title,
                fontWeight: FontWeight.bold,
              ),
              leading: Image.asset(
                'assets/images/video-player.png',
                fit: BoxFit.cover,
                color: Colors.blueAccent,
              ),
              subtitle: Container(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(_reports[index].views),
                        Text(_reports[index].subscribers)
                      ])),
              trailing: Text(new String.fromCharCodes(
                  new Runes('\u0024 ${_reports[index].revenue}'))),
            ),
            Divider()
          ],
        );
      },
    );
  }
}

class Report {
  final String title;
  final String views;
  final String subscribers;
  final String revenue;
  const Report({this.title, this.views, this.subscribers, this.revenue});
}
