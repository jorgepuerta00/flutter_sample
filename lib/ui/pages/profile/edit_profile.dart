import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/profile/edit_fullname.dart';
import 'package:ourglass/ui/pages/profile/edit_location.dart';
import 'package:ourglass/ui/pages/profile/edit_username.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          brightness: Brightness.light,
          backgroundColor: Colors.transparent,
          title: Text(
            'Edit profile',
            style: TextStyle(color: darkGrey),
          ),
          elevation: 0),
      body: SafeArea(
        top: true,
        child: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.only(left: 16.0, right: 16.0, top: kToolbarHeight),
            child: Column(
              children: <Widget>[
                CircleAvatar(
                  maxRadius: 48,
                  backgroundImage:
                      AssetImage('assets/images/avatar-backgroud.png'),
                  child: Container(
                      child: MaterialButton(
                    onPressed: () {},
                    color: Colors.black.withOpacity(0.2),
                    textColor: Colors.white,
                    child: Container(
                        child: Icon(
                      Icons.camera_alt_outlined,
                      size: 24,
                      color: white,
                    )),
                    padding: EdgeInsets.all(35),
                    shape: CircleBorder(),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 16, bottom: 1),
                  child: Text(
                    'Bill Gates',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Text('@billgates'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text('Antioquia, Medellin'),
                ),
                Divider(),
                ListTile(
                  title: Text('Full Name'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => EditFullNamePage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Username'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => EditUsernamePage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Location'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => EditLocationPage())),
                ),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
