import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/config/palette.dart';
import 'package:twitter_clone/data/data.dart';
import 'package:twitter_clone/models/tweet.dart';
import 'package:twitter_clone/widgets/tweet_account_widget.dart';
import 'package:twitter_clone/widgets/tweet_item.dart';
import '../config/style.dart';
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
          _buildContent(),
          _buildReply(),
        ],
      ),
    );
  }

  List<Widget> _buildTweetContents() {
    List<Widget> widgets = [
      const SizedBox(height: 8.0),
      Text(
        tweet.content,
        style: Style.bodyText,
      ),
    ];
    if (tweet.post != null) {
      widgets
          .addAll([const SizedBox(height: 12.0), LinkCard(post: tweet.post!)]);
    }
    if (tweet.imageContent != null) {
      widgets.addAll([
        const SizedBox(height: 12.0),
        AspectRatio(
          aspectRatio: 16.0 / 9.0,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(16.0)),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: tweet.imageContent!,
              height: 300.0,
            ),
          ),
        ),
      ]);
    }
    widgets.add(const SizedBox(height: 12.0));
    widgets.add(Text(
      '${tweet.timeAgo} • Twitterrific for iOS',
      style: const TextStyle(
        color: Palette.secondaryText,
        fontSize: 15.0,
      ),
    ));
    return widgets;
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TwitterAccountWidget(user: tweet.user),
          ..._buildTweetContents(),
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
        ],
      ),
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
