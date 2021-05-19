import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/profile/edit_fullname.dart';
import 'package:ourglass/ui/pages/profile/edit_location.dart';
import 'package:ourglass/ui/pages/profile/edit_username.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          brightness: Brightness.light,
          title: Text('Edit profile'),
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
                    radius: 48.0,
                    backgroundImage: AssetImage('assets/images/reza.png'),
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
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8, right: 8, top: 16, bottom: 1),
                  child: Text(
                    'Reza Dari',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Text('@rezadari'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text('United States, California'),
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
