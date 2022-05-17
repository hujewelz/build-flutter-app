import 'package:twitter_clone/models/user.dart';

class Tweet {
  final User user;
  final String timeAgo;
  final String content;
  final String? imageContent;
  final int replays;
  final int retweets;
  final int likes;
  final LinkedPost? post;

  Tweet({
    required this.user,
    required this.timeAgo,
    required this.content,
    this.imageContent,
    this.replays = 0,
    this.retweets = 0,
    this.likes = 0,
    this.post,
  });
}

class LinkedPost {
  final String logo;
  final String title;
  final String from;
  final String content;
  final String link;

  LinkedPost({
    required this.logo,
    required this.title,
    required this.from,
    required this.content,
    required this.link,
  });
}

class TweetDetail extends Tweet {
  final List<Tweet> replayList;

  TweetDetail({
    required super.user,
    required super.timeAgo,
    required super.content,
    this.replayList = const <Tweet>[],
  });
}
