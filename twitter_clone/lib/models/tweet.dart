class Tweet {
  final String logo;
  final String title;
  final String date;
  final String text;
  int replay;
  int retweet;
  int likes;

  LinkedPost? link;

  Tweet({
    required this.logo,
    required this.title,
    required this.date,
    required this.text,
    this.replay = 0,
    this.retweet = 0,
    this.likes = 0,
    this.link,
  });
}

class LinkedPost {
  final String logo;
  final String title;
  final String from;
  final String content;

  LinkedPost(
    this.logo,
    this.title,
    this.from,
    this.content,
  );
}
