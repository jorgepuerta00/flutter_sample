import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  final Function changeIndex;
  final int selectedTabIndex;
  const BottomNavBarWidget({this.changeIndex, this.selectedTabIndex});
  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
      currentIndex: selectedTabIndex,
      onTap: changeIndex,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue,
      iconSize: 30,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Feed"),
        BottomNavigationBarItem(
            icon: Icon(Icons.play_arrow_outlined), label: "Audiovisual"),
        BottomNavigationBarItem(icon: Icon(Icons.add), label: "New"),
        BottomNavigationBarItem(
            icon: Icon(Icons.rss_feed_outlined), label: "Channels"),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: "Profile"),
      ],
    );
  }
}
