import 'package:flutter/material.dart';

enum TabItem { feed, browse, newm, subscriptions, library }

const Map<TabItem, String> tabName = {
  TabItem.feed: 'Feed',
  TabItem.browse: 'Browse',
  TabItem.newm: 'New',
  TabItem.subscriptions: 'Subscriptions',
  TabItem.library: 'Library',
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.feed: Colors.blue,
  TabItem.browse: Colors.blue,
  TabItem.newm: Colors.blue,
  TabItem.subscriptions: Colors.blue,
  TabItem.library: Colors.blue
};

const Map<TabItem, IconData> tabIcon = {
  TabItem.feed: Icons.home_outlined,
  TabItem.browse: Icons.language_rounded,
  TabItem.newm: Icons.add,
  TabItem.subscriptions: Icons.ondemand_video,
  TabItem.library: Icons.video_collection_outlined
};
