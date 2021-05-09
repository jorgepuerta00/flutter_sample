import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';
import 'package:ourglass/ui/pages/friends/friend_screen.dart';
import 'package:ourglass/ui/pages/profile/edit_profile.dart';
import 'package:ourglass/ui/pages/security/secutiry_screen.dart';
import 'package:ourglass/ui/pages/user/login_screen.dart';
import 'package:ourglass/ui/pages/wallet/wallet_screen.dart';

class ProfilePage extends StatelessWidget {
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
          'Profile',
          style: TextStyle(color: darkGrey),
        ),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: IconButton(
              icon: Icon(Icons.edit_outlined, size: 30),
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => EditProfilePage())),
            ),
          ),
        ],
      ),
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
                Padding(
                  padding: const EdgeInsets.all(20),
                ),
                Divider(),
                ListTile(
                  title: Text('Friends'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => FriendPage())),
                ),
                Divider(),
                ListTile(
                  title: Text('My Digital Wallet'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => WalletPage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Security'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SecurityPage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Log out'),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => LoginScreen())),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
