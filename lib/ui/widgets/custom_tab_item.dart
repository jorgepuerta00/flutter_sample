import 'package:flutter/material.dart';

enum TabItem { feed, audiovisual, newm, channels, profile }

const Map<TabItem, String> tabName = {
  TabItem.feed: 'Feed',
  TabItem.audiovisual: 'Media',
  TabItem.newm: 'New',
  TabItem.channels: 'Channels',
  TabItem.profile: 'Profile',
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.feed: Colors.blue,
  TabItem.audiovisual: Colors.blue,
  TabItem.newm: Colors.blue,
  TabItem.channels: Colors.blue,
  TabItem.profile: Colors.blue
};

const Map<TabItem, IconData> tabIcon = {
  TabItem.feed: Icons.home_outlined,
  TabItem.audiovisual: Icons.play_arrow_outlined,
  TabItem.newm: Icons.add,
  TabItem.channels: Icons.rss_feed_outlined,
  TabItem.profile: Icons.person_outline
};
