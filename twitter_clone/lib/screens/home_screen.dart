import 'package:flutter/material.dart';
import 'package:twitter_clone/data/data.dart';

import '../widgets/tweet_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        padding: const EdgeInsets.only(bottom: 34.0),
        itemCount: tweets.length,
        itemBuilder: (BuildContext context, int index) {
          return TweetItem(tweet: tweets[index]);
        },
      ),
    );
  }
}
