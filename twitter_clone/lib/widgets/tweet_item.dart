import 'package:flutter/material.dart';
import 'package:twitter_clone/config/palette.dart';
import 'package:twitter_clone/config/style.dart';
import 'package:twitter_clone/models/tweet.dart';
import 'package:twitter_clone/widgets/tweet_toolbar.dart';

LinkedPost post = LinkedPost(
    'assets/me.jpeg',
    'Swift to participate in GSoC 2022!',
    'formus.swift.org',
    "Hi everyone, we're now accepting proposals through the summer of code website! Please don't be shy");

class TweetItem extends StatelessWidget {
  const TweetItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16.0, left: 20.0, right: 20.0),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Palette.separator),
        ),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CircleAvatar(
                radius: 24.0,
                backgroundImage: AssetImage('assets/me.jpeg'),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Swift Language',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Text(
                          '@SwiftLang • May 11',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Palette.secondaryText,
                          ),
                        ),
                        const Expanded(child: SizedBox.shrink()),
                        IconButton(
                            onPressed: () {},
                            iconSize: 20.0,
                            color: Palette.secondaryText,
                            icon: const Icon(Icons.more_horiz_outlined))
                      ],
                    ),
                    const SizedBox(height: 4.0),
                    const Text(
                      'The Swift Server Working Group has published their annual update, recapping the progress of the Swift on Server ecosystem in 2021 and looking forward to 2022',
                      style: Style.bodyText,
                    ),
                    const SizedBox(height: 12.0),
                    LinkCard(link: post),
                  ],
                ),
              ),
            ],
          ),
          const TweetToolbar(replay: 23, retweet: 30, likes: 165),
        ],
      ),
    );
  }
}

class LinkCard extends StatelessWidget {
  const LinkCard({super.key, required this.link});

  final LinkedPost link;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            Image.asset(
              'assets/me.jpeg',
              fit: BoxFit.cover,
            ),
            const VerticalDivider(
              width: 1.0,
              color: Palette.separator,
            ),
            const SizedBox(width: 8.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    link.from,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Palette.secondaryText,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    link.title,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Palette.primaryText,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    link.content,
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
    );
  }
}
