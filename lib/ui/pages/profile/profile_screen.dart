import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/downloads/downloads_screen.dart';
import 'package:ourglass/ui/pages/friends/friend_screen.dart';
import 'package:ourglass/ui/pages/profile/edit_profile.dart';
import 'package:ourglass/ui/pages/security/secutiry_screen.dart';
import 'package:ourglass/ui/pages/settings/settings_screen.dart';
import 'package:ourglass/ui/pages/user/login_screen.dart';
import 'package:ourglass/ui/pages/wallet/wallet_screen.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    gotoLoginPage() {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (c) => LoginScreen()), (r) => false);
    }

    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        title: CustomText(text: 'Profile'),
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
                  backgroundImage: AssetImage('assets/images/reza.png'),
                ),
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
                  title: Text('My Downloads'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => DownloadsPage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Settings'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SettingsPage())),
                ),
                Divider(),
                ListTile(
                  title: Text('Log out'),
                  onTap: () => gotoLoginPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
