import 'package:flutter/material.dart';
import 'package:ourglass/ui/widgets/custom_text.dart';

class FeedList extends StatelessWidget {
  final List<Category> categories;
  final bool primary;
  FeedList({this.categories, this.primary});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      child: new ListView.builder(
        primary: primary,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return new Column(
            children: <Widget>[
              new Container(
                height: 50.0,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Padding(padding: const EdgeInsets.only(right: 5.0)),
                    new CustomText(
                        text: categories[index].title,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)
                  ],
                ),
              ),
              new Container(
                height: 180.0,
                child: new ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(width: 15),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories[index].feeds.length,
                  itemBuilder: (context, jindex) {
                    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          new Card(
                              child: Container(
                                  height: 120,
                                  width: 170,
                                  color: Colors.black12,
                                  child: Image.asset(
                                    'assets/images/video-player.png',
                                    fit: BoxFit.contain,
                                  ))),
                          Container(
                            padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                            child: Column(children: <Widget>[
                              CustomText(
                                  text: categories[index].feeds[jindex].title,
                                  fontWeight: FontWeight.bold),
                              CustomText(
                                  text:
                                      categories[index].feeds[jindex].subtitle)
                            ]),
                          ),
                        ]);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class Feed {
  final String title;
  final String subtitle;
  final String url;
  const Feed({this.title, this.subtitle, this.url});
}

class Category {
  final String title;
  final List<Feed> feeds;
  const Category({this.title, this.feeds});
}
