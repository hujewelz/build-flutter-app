import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/config/palette.dart';
import 'package:twitter_clone/config/style.dart';
import 'package:twitter_clone/models/tweet.dart';
import 'package:twitter_clone/widgets/tweet_toolbar.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TweetItem extends StatelessWidget {
  TweetItem({required this.tweet}) : super(key: ObjectKey(tweet));

  final Tweet tweet;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Palette.separator),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(24.0)),
                    border: Border.all(color: Palette.separator),
                  ),
                  child: CircleAvatar(
                    radius: 24.0,
                    backgroundColor: Colors.white,
                    backgroundImage:
                        CachedNetworkImageProvider(tweet.user.imageUrl),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _buildRight(),
                ),
              ],
            ),
          ),
          TweetToolbar(
            replay: tweet.replays,
            retweet: tweet.retweets,
            likes: tweet.likes,
          ),
        ],
      ),
    );
  }

  Widget _buildTitle() {
    return Row(
      children: [
        Text(
          tweet.user.name,
          style: const TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          '${tweet.user.account} • ${tweet.timeAgo}',
          style: const TextStyle(
            fontSize: 14.0,
            color: Palette.secondaryText,
          ),
        ),
        const Expanded(child: SizedBox.shrink()),
        GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.more_horiz_outlined,
            size: 20.0,
            color: Palette.secondaryText,
          ),
        ),
      ],
    );
  }

  List<Widget> _buildTweetContents() {
    List<Widget> widgets = [
      const SizedBox(height: 4.0),
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
    return widgets;
  }

  Widget _buildRight() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTitle(),
        ..._buildTweetContents(),
      ],
    );
  }
}

class LinkCard extends StatelessWidget {
  const LinkCard({super.key, required this.post});

  final LinkedPost post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchUrlString(post.link);
      },
      child: Container(
        height: 110.0,
        decoration: BoxDecoration(
          border: Border.all(color: Palette.separator),
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CachedNetworkImage(
                imageUrl: post.logo,
                width: 108,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 110.0,
                child: VerticalDivider(
                  width: 1.0,
                  color: Palette.separator,
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.from,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Palette.secondaryText,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      post.title,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Palette.primaryText,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      post.content,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14.0,
                        color: Palette.secondaryText,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
