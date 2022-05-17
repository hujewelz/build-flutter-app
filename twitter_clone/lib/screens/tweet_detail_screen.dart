import 'package:flutter/material.dart';
import 'package:twitter_clone/config/palette.dart';
import 'package:twitter_clone/data/data.dart';
import 'package:twitter_clone/models/tweet.dart';
import 'package:twitter_clone/widgets/tweet_account_widget.dart';
import 'package:twitter_clone/widgets/tweet_item.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/nav_bar.dart';
import '../widgets/tweet_toolbar.dart';

class TweetDetailScreen extends StatelessWidget {
  const TweetDetailScreen({super.key, required this.tweet});

  final Tweet tweet;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      navBar: NavBar(
        leading: Text(
          'Tweet',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.only(
          top: 58.0,
          bottom: 34.0,
          left: 16.0,
          right: 16.0,
        ),
        children: [
          _buildTweetContent(),
        ],
      ),
    );
  }

  Widget _buildTweetContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TwitterAccountWidget(user: tweet.user),
        const SizedBox(height: 8.0),
        Text(
          tweet.content,
          style: const TextStyle(fontSize: 17.0),
        ),
        const SizedBox(height: 16.0),
        tweet.post != null
            ? LinkCard(post: tweet.post!)
            : const SizedBox.shrink(),
        const SizedBox(height: 16.0),
        Text(
          '${tweet.timeAgo} • Twitterrific for iOS',
          style: const TextStyle(
            color: Palette.secondaryText,
            fontSize: 15.0,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 16.0),
          decoration: const BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                width: 1,
                color: Palette.separator,
              ),
            ),
          ),
          child: TweetToolbar(
            replay: tweet.replays,
            retweet: tweet.retweets,
            likes: tweet.likes,
          ),
        ),
        _buildReply(),
      ],
    );
  }

  Widget _buildReply() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Replys:',
          style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
        ),
        ...replays.map((e) => TweetItem(tweet: e)).toList()
      ],
    );
  }
}
