import 'package:twitter_clone/models/user.dart';

class Tweet {
  final User user;
  final String timeAgo;
  final String content;
  int replays;
  int retweets;
  int likes;
  LinkedPost? post;

  Tweet({
    required this.user,
    required this.timeAgo,
    required this.content,
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
