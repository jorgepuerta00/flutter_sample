import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/home/contact_data.dart';
import 'package:ourglass/ui/pages/home/contact_view.dart';
import 'package:ourglass/ui/pages/home/widgets/home_page_body.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedTabIndex = 0;

  _changeIndex(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Friends'),
        centerTitle: true,
        elevation: 20.0,
        backgroundColor: Colors.blue,
        shadowColor: Colors.grey,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ],
      ),
      body: HomePageBody(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTabIndex,
        onTap: _changeIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Feed"),
          BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow_outlined), label: "Video"),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note_outlined), label: "Music"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}
