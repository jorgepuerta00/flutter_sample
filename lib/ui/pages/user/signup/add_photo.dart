import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/user/signup/find_friends.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class ProfilePhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    nextPage() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => FindFriendsPage()));
    }

    return Scaffold(
      appBar: AppBar(
          title: Text('Add Profile Photo'),
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
              text: "Add a profile photo so your friends know it’s you.",
              textAlign: TextAlign.center,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 40, bottom: 60)),
          CircleAvatar(
              radius: 48.0,
              backgroundImage: AssetImage('assets/images/avatar-empty.jpeg'),
              child: Container(
                  child: Container(
                decoration: new BoxDecoration(
                    borderRadius:
                        const BorderRadius.all(const Radius.circular(48)),
                    color: new Color.fromRGBO(1, 0, 0, 0.3)),
                child: CircleAvatar(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 12.0,
                        child: Icon(
                          Icons.camera_alt,
                          size: 15.0,
                          color: Color(0xFF404040),
                        ),
                      ),
                    ),
                    radius: 48.0,
                    backgroundColor: Colors.transparent),
              ))),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  text: "Next",
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
