import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_tab_item.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({@required this.currentTab, @required this.onSelectTab});
  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 13,
      unselectedFontSize: 13,
      items: [
        _buildItem(TabItem.feed),
        _buildItem(TabItem.browse),
        _buildItem(TabItem.newm),
        _buildItem(TabItem.subscriptions),
        _buildItem(TabItem.library),
      ],
      onTap: (index) => onSelectTab(
        TabItem.values[index],
      ),
      currentIndex: currentTab.index,
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    return BottomNavigationBarItem(
      icon: Icon(
        tabIcon[tabItem],
        color: _colorTabMatching(tabItem),
      ),
      label: tabName[tabItem],
    );
  }

  Color _colorTabMatching(TabItem item) {
    return currentTab == item ? activeTabColor[item] : Colors.grey;
  }
}
