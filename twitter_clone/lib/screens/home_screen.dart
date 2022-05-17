import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:twitter_clone/data/data.dart';
import 'package:twitter_clone/screens/tweet_detail_screen.dart';
import 'package:twitter_clone/widgets/nav_bar.dart';
import '../widgets/custom_scaffold.dart';
import '../widgets/tweet_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      navBar: NavBar(
        leading: Text(
          'Home',
          style: Theme.of(context).textTheme.headline1,
        ),
        trailing: IconButton(
            onPressed: () {}, icon: const Icon(EvaIcons.paperPlaneOutline)),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 50.0, bottom: 34.0),
        itemCount: tweets.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: TweetItem(tweet: tweets[index]),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => TweetDetailScreen(tweet: tweets[index]),
              ));
            },
          );
        },
      ),
    );
  }
}
