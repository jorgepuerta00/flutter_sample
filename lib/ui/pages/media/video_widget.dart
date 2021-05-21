import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class VideoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              brightness: Brightness.light, title: Text('Video'), elevation: 0),
          body: DefaultTabController(
              length: 4,
              child: Scaffold(
                appBar: AppBar(
                    brightness: Brightness.light,
                    elevation: 0,
                    bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(0),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: TabBar(
                              isScrollable: true,
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: [
                                Tab(child: CustomText(text: 'My videos')),
                                Tab(child: CustomText(text: 'Movies')),
                                Tab(child: CustomText(text: 'Professional')),
                                Tab(child: CustomText(text: 'Short Films'))
                              ],
                            )))),
                body: SafeArea(
                  top: true,
                  child: TabBarView(
                    children: [
                      Container(),
                      Container(),
                      Container(),
                      Container()
                    ],
                  ),
                ),
              )),
        ));
  }
}
