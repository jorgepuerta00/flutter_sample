import 'package:ourglass/ui/pages/feed/widgets/feed_view.dart';

const kFeeds = <Feed>[
  Feed(
      title: "Title over here",
      subtitle: "User Full Name",
      url: "assets/images/no-image.png"),
  Feed(
      title: "Title over here",
      subtitle: "User Full Name",
      url: "assets/images/no-image.png"),
  Feed(
      title: "Title over here",
      subtitle: "User Full Name",
      url: "assets/images/no-image.png"),
  Feed(
      title: "Title over here",
      subtitle: "User Full Name",
      url: "assets/images/no-image.png"),
  Feed(
      title: "Title over here",
      subtitle: "User Full Name",
      url: "assets/images/no-image.png"),
  Feed(
      title: "Title over here",
      subtitle: "User Full Name",
      url: "assets/images/no-image.png"),
  Feed(
      title: "Title over here",
      subtitle: "User Full Name",
      url: "assets/images/no-image.png")
];

const kFeedsbyCategory = <Category>[
  Category(title: "Top picks for you to watch", feeds: kFeeds),
  Category(title: "Listen Now", feeds: kFeeds),
  Category(title: "More of xxx", feeds: kFeeds),
  Category(title: "Recently Played", feeds: kFeeds),
];
