import 'package:flutter/material.dart';
import 'package:ourglass/ui/pages/media/widgets/media_data.dart';
import 'package:ourglass/ui/pages/media/widgets/media_view.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';
import 'package:ourglass/ui/widgets/custom_textfield.dart';

class AudioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
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
                          Tab(child: CustomText(text: 'My audio')),
                          Tab(child: CustomText(text: 'User Generated')),
                          Tab(child: CustomText(text: 'Professional'))
                        ],
                      )))),
          body: SafeArea(
            top: true,
            child: TabBarView(
              children: [
                Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: new EdgeInsets.only(top: 20),
                        ),
                        SearchTextField(),
                        Expanded(
                          child: Container(
                            child: AudioList(
                                audios: kAudios,
                                onPress: () =>
                                    _settingModalBottomSheet(context)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: new EdgeInsets.only(top: 20),
                        ),
                        SearchTextField(),
                        Expanded(
                          child: Container(
                            child: AudioList(
                                audios: kAudios,
                                onPress: () =>
                                    _settingModalBottomSheet(context)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: new EdgeInsets.only(top: 20),
                        ),
                        SearchTextField(),
                        Expanded(
                          child: Container(
                            child: AudioList(
                                audios: kAudios,
                                onPress: () =>
                                    _settingModalBottomSheet(context)),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        useRootNavigator: true,
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return new Container(
            color: Colors.transparent,
            child: new Container(
              decoration: new BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Theme.of(context).primaryColor,
                  borderRadius: new BorderRadius.only(
                      bottomRight: const Radius.circular(60.0),
                      bottomLeft: const Radius.circular(60.0),
                      topLeft: const Radius.circular(50.0),
                      topRight: const Radius.circular(50.0))),
              child: new Wrap(
                children: <Widget>[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                            width: double.infinity,
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Container(
                              padding: EdgeInsets.only(right: 30, top: 10),
                              child: TextButton(
                                  onPressed: () =>
                                      Navigator.of(context, rootNavigator: true)
                                          .pop(),
                                  child: Icon(
                                    Icons.close,
                                    size: 30,
                                  )),
                            ))
                      ]),
                  new ListTile(
                      title: CustomText(text: "Share"),
                      leading: Icon(Icons.share_outlined)),
                  Divider(),
                  new ListTile(
                      title: CustomText(text: "View User Profile"),
                      leading: Icon(Icons.person_outline)),
                  Container(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
