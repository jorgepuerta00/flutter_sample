import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/media/widgets/audio_widget.dart';
import 'package:ourglass/ui/pages/media/widgets/video_widget.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class DownloadsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              brightness: Brightness.light,
              title: Text('My Downloads'),
              elevation: 0,
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(kToolbarHeight),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicatorColor: Colors.transparent,
                        tabs: [
                          Tab(child: CustomText(text: 'Audio', fontSize: 24)),
                          Tab(child: CustomText(text: 'Video', fontSize: 24))
                        ],
                      )))),
          body: SafeArea(
            top: true,
            child: TabBarView(
              children: [AudioWidget(), VideoWidget()],
            ),
          ),
        ));
  }
}
