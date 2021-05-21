import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/browse/browse_screen.dart';
import 'package:ourglass/ui/pages/channels/channel_screen.dart';
import 'package:ourglass/ui/pages/feed/feed_screens.dart';
import 'package:ourglass/ui/pages/profile/profile_screen.dart';
import 'package:ourglass/ui/widgets/custom_tab_item.dart';

class TabNavigatorRoutes {
  static const String root = '/';
  static const String detail = '/detail';
}

class TabNavigator extends StatelessWidget {
  TabNavigator({this.navigatorKey, this.tabItem});
  final GlobalKey<NavigatorState> navigatorKey;
  final TabItem tabItem;

  void _push(BuildContext context, {int materialIndex: 500}) {
    var routeBuilders = _routeBuilders(context, materialIndex: materialIndex);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => routeBuilders[TabNavigatorRoutes.detail](context),
      ),
    );
  }

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context,
      {int materialIndex: 500}) {
    return {
      TabNavigatorRoutes.root: (context) => BuildPage(
            tabItem: tabItem,
            title: tabName[tabItem],
            onPush: (materialIndex) =>
                _push(context, materialIndex: materialIndex),
          ),
    };
  }

  @override
  Widget build(BuildContext context) {
    final routeBuilders = _routeBuilders(context);
    return Navigator(
      key: navigatorKey,
      initialRoute: TabNavigatorRoutes.root,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => routeBuilders[routeSettings.name](context),
        );
      },
    );
  }
}

class BuildPage extends StatelessWidget {
  BuildPage({this.tabItem, this.color, this.title, this.onPush});
  final MaterialColor color;
  final String title;
  final TabItem tabItem;
  final ValueChanged<int> onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.transparent,
      child: children[tabItem],
    ));
  }

  final Map<TabItem, Widget> children = {
    TabItem.feed: FeedPage(),
    TabItem.browse: BrowsePage(),
    TabItem.newm: Container(color: Colors.transparent),
    TabItem.subscriptions: ChannelPage(),
    TabItem.library: ProfilePage()
  };
}
