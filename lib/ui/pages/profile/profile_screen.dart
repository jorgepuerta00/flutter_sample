import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/downloads/downloads_screen.dart';
import 'package:ourglass/ui/pages/friends/friend_screen.dart';
import 'package:ourglass/ui/pages/profile/edit_profile.dart';
import 'package:ourglass/ui/pages/security/secutiry_screen.dart';
import 'package:ourglass/ui/pages/settings/settings_screen.dart';
import 'package:ourglass/ui/pages/user/login_screen.dart';
import 'package:ourglass/ui/pages/wallet/wallet_screen.dart';
import 'package:ourglass/ui/widgets/custom_button.dart';
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
              icon: Icon(Icons.more_horiz_outlined, size: 30),
              onPressed: () => {},
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
                ButtonShape(ButtonType.textButton).build(
                    context: context,
                    button: new Button(
                        "Edit profile",
                        TextAlign.center,
                        15,
                        70,
                        FontWeight.bold,
                        Colors.blueAccent,
                        Colors.white,
                        Colors.blueAccent,
                        const EdgeInsets.only(left: 140, right: 140, top: 20.0),
                        null,
                        () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => EditProfilePage())))),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 12),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: Colors.transparent),
                  height: 120,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.people_alt_outlined, size: 35),
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => FriendPage())),
                            ),
                            Text(
                              'Friends',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.rss_feed_outlined, size: 35),
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => FriendPage())),
                            ),
                            Text(
                              'Channels',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.wallet_membership_outlined,
                                  size: 35),
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (_) => WalletPage())),
                            ),
                            Text(
                              'Wallet',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
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
                  title: Text('Help & Support'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => DownloadsPage())),
                ),
                Divider(),
                ListTile(
                  title: Text('FAQ'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () => Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SecurityPage())),
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
