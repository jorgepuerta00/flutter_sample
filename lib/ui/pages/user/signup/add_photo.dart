import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/user/signup/find_friends.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
import 'package:ourglass/ui/widgets/custom_label_widget.dart';

class ProfilePhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    gotoFindFriendsPage() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (_) => FindFriendsPage()));
    }

    return Scaffold(
      appBar: AppBar(title: Text('Add Profile Photo'), elevation: 0),
      body: SafeArea(
        top: true,
        child: Column(children: <Widget>[
          LabelWidget(
              text: "Add a profile photo so your friends know it’s you.",
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
              padding: const EdgeInsets.only(
                  left: 40.0, right: 40.0, top: 40, bottom: 60)),
          CircleAvatar(
            maxRadius: 48,
            backgroundImage: AssetImage('assets/images/avatar-empty.jpeg'),
            child: Container(
                child: MaterialButton(
              onPressed: () {},
              color: Colors.black.withOpacity(0.2),
              textColor: Colors.white,
              child: Container(
                  child: Icon(
                Icons.camera_alt_outlined,
                size: 24,
              )),
              padding: EdgeInsets.all(35),
              shape: CircleBorder(),
            )),
          ),
          ButtonShape(ButtonType.textButton).build(
              context: context,
              button: new Button(
                  "Next",
                  TextAlign.center,
                  15,
                  70,
                  FontWeight.bold,
                  Colors.blueAccent,
                  Colors.white,
                  Colors.blueAccent,
                  const EdgeInsets.only(left: 40, right: 40, top: 100.0),
                  null,
                  () => gotoFindFriendsPage()))
        ]),
      ),
    );
  }
}
