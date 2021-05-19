import 'package:flutter/material.dart';

enum TabItem { feed, audiovisual, newm, channels, library }

const Map<TabItem, String> tabName = {
  TabItem.feed: 'Feed',
  TabItem.audiovisual: 'Media',
  TabItem.newm: 'New',
  TabItem.channels: 'Channels',
  TabItem.library: 'Library',
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.feed: Colors.blue,
  TabItem.audiovisual: Colors.blue,
  TabItem.newm: Colors.blue,
  TabItem.channels: Colors.blue,
  TabItem.library: Colors.blue
};

const Map<TabItem, IconData> tabIcon = {
  TabItem.feed: Icons.home_outlined,
  TabItem.audiovisual: Icons.play_arrow_outlined,
  TabItem.newm: Icons.add,
  TabItem.channels: Icons.rss_feed_outlined,
  TabItem.library: Icons.video_collection_outlined
};
