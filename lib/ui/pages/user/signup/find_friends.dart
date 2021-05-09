import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/home/home_screen.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class FindFriendsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    gotoHome() {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => HomePage()));
    }

    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          title: Text(
            'Find your friends',
            style: TextStyle(color: darkGrey),
          ),
          elevation: 0),
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[
          LabelWidget(
              text:
                  "See which of your contacts are on “Name app” already and add them on your friends list.",
              fontWeight: FontWeight.bold,
              color: black,
              fontSize: 15.0,
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 40, bottom: 60)),
          Container(
            width: 400,
            height: 400,
            child: CustomPaint(
              painter: OpenPainter(),
            ),
          ),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  "Search my contacts",
                  TextAlign.center,
                  15,
                  70,
                  FontWeight.bold,
                  Colors.blueAccent,
                  Colors.white,
                  Colors.blueAccent,
                  const EdgeInsets.only(left: 40, right: 40),
                  null,
                  () => gotoHome()))
        ]),
      ),
    );
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.black26
      ..style = PaintingStyle.fill;
    //a rectangle
    canvas.drawRect(Offset(100, 100) & Size(200, 100), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
