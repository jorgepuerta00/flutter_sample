import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/account/profile_screen.dart';
import 'package:ourglass/ui/pages/home/widgets/bottom_bar_widget.dart';
import 'package:ourglass/ui/pages/messaging/messaging_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _selectedTabIndex = 0;

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  final List<Widget> _children = [
    Container(color: Colors.amber),
    Container(color: Colors.lightBlue),
    Container(color: Colors.red),
    Container(color: Colors.red),
    ProfilePage()
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('[LOGO]'),
        centerTitle: true,
        elevation: 20.0,
        backgroundColor: Colors.blue,
        shadowColor: Colors.grey,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: IconButton(
              icon: Icon(Icons.chat_bubble, size: 30),
              onPressed: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => MessagingPage())),
            ),
          ),
        ],
      ),
      body: _children[_selectedTabIndex],
      bottomNavigationBar: BottomNavBarWidget(
          selectedTabIndex: _selectedTabIndex, changeIndex: _changeIndex),
    );
  }
}
