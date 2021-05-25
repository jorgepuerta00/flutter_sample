import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/home/home_screen.dart';
import 'package:ourglass/ui/pages/user/widgets/interest_view.dart';
import 'package:ourglass/ui/pages/user/widgets/interests_data.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class InterestsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    nextPage() {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    }

    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Interests'),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 24),
              child: TextButton(
                child: Text('Skip'),
                onPressed: () => nextPage(),
              ),
            ),
          ],
          elevation: 0),
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[
          LabelWidget(
              text: "Choose the tags that match with your interests.",
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 40, bottom: 60)),
          InterestList(kInterests),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  text: "Finish",
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  textColor: Colors.blue,
                  backgroundColor: Colors.white,
                  borderColor: Colors.blue,
                  onPressed: () => nextPage()))
        ]),
      ),
    );
  }
}
