import 'package:flutter/material.dart';
import 'package:ourglass/constants/constants.dart';

enum TabItem { feed, audiovisual, newm, channels, profile }

const Map<TabItem, String> tabName = {
  TabItem.feed: 'Feed',
  TabItem.audiovisual: 'Media',
  TabItem.newm: 'New',
  TabItem.channels: 'Channels',
  TabItem.profile: 'Profile',
};

const Map<TabItem, MaterialColor> activeTabColor = {
  TabItem.feed: primary,
  TabItem.audiovisual: primary,
  TabItem.newm: primary,
  TabItem.channels: primary,
  TabItem.profile: primary
};

const Map<TabItem, IconData> tabIcon = {
  TabItem.feed: Icons.home_outlined,
  TabItem.audiovisual: Icons.play_arrow_outlined,
  TabItem.newm: Icons.add,
  TabItem.channels: Icons.rss_feed_outlined,
  TabItem.profile: Icons.person_outline
};
