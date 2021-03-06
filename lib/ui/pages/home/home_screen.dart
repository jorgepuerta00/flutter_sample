import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_bottom_navigator.dart';
import 'package:ourglass/ui/widgets/custom_tab_item.dart';
import 'package:ourglass/ui/widgets/custom_tab_navigator.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  var _currentTab = TabItem.feed;
  final _navigatorKeys = {
    TabItem.feed: GlobalKey<NavigatorState>(),
    TabItem.browse: GlobalKey<NavigatorState>(),
    TabItem.newm: GlobalKey<NavigatorState>(),
    TabItem.subscriptions: GlobalKey<NavigatorState>(),
    TabItem.library: GlobalKey<NavigatorState>(),
  };

  void _selectTab(TabItem tabItem) {
    if (tabItem == _currentTab) {
      // pop to first route
      _navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentTab = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_currentTab].currentState.maybePop();
        if (isFirstRouteInCurrentTab) {
          // if not on the 'main' tab
          if (_currentTab != TabItem.feed) {
            // select 'main' tab
            _selectTab(TabItem.feed);
            // back button handled by app
            return false;
          }
        }
        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Stack(children: <Widget>[
          _buildOffstageNavigator(TabItem.feed),
          _buildOffstageNavigator(TabItem.browse),
          _buildOffstageNavigator(TabItem.newm),
          _buildOffstageNavigator(TabItem.subscriptions),
          _buildOffstageNavigator(TabItem.library),
        ]),
        bottomNavigationBar: BottomNavigation(
          currentTab: _currentTab,
          onSelectTab: _selectTab,
        ),
      ),
    );
  }

  Widget _buildOffstageNavigator(TabItem tabItem) {
    return Offstage(
      offstage: _currentTab != tabItem,
      child: TabNavigator(
        navigatorKey: _navigatorKeys[tabItem],
        tabItem: tabItem,
      ),
    );
  }
}
